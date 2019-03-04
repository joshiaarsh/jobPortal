using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Company_viewApplicant : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["company"] == null)
            {
                Response.Redirect("Company_userLogin.aspx");
            }
            else
            {
                lblId.Text=Server.UrlDecode(Request.QueryString["jsid"]);
                lblpost.Text=Server.UrlDecode(Request.QueryString["pid"]);
                if (!IsPostBack)
                {

                    string strQry = "select PostHead from JobPost where PostId=" + lblpost.Text;
                    SqlDataAdapter dapost = new SqlDataAdapter(strQry, con);
                    DataTable dtpost = new DataTable();
                    dapost.Fill(dtpost);
                    if (dtpost.Rows.Count > 0)
                    {
                        lblposthead.Text = dtpost.Rows[0]["PostHead"].ToString();
                    }


                    string str = "select * from Profile where JsId=" + lblId.Text;
                    SqlDataAdapter da = new SqlDataAdapter(str, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        lblCerti.Text = dt.Rows[0]["certification"].ToString();
                        lblEdu.Text = dt.Rows[0]["education"].ToString();
                        lblExp.Text = dt.Rows[0]["Years"].ToString();
                        lblReusme.Text = dt.Rows[0]["fileName"].ToString();
                    }
                    string s = "select * from jobSeeker where Id=" + lblId.Text;
                    SqlDataAdapter sda = new SqlDataAdapter(s, con);
                    DataTable dt1 = new DataTable();
                    sda.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        lblFname.Text = dt1.Rows[0]["FirstName"].ToString() + " " + dt1.Rows[0]["LastName"].ToString();
                    }
                }
            }
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "filename="+ lblReusme.Text);
            Response.TransmitFile(Server.MapPath("~/Data/")+ lblReusme.Text);
            Response.End();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Company_listApplicant.aspx");
        }
    }
}
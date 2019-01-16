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
    public partial class Js_ViewProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["JsUser"] == null)
            {
                Response.Redirect("Js_Login.aspx");
            }
            else
            {

                lblId.Text = Session["JsUser"].ToString();

                if (!IsPostBack)
                {
                    string str = "select * from Profile where JsId=" + lblId.Text;
                    SqlDataAdapter da = new SqlDataAdapter(str, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        lblCerti.Text = dt.Rows[0]["certification"].ToString();
                        lblEdu.Text = dt.Rows[0]["education"].ToString();
                        lblExp.Text = dt.Rows[0]["experince"].ToString();
                        lblYr.Text = dt.Rows[0]["Years"].ToString();
                    }
                    string s = "select * from jobSeeker where Id=" + lblId.Text;
                    SqlDataAdapter sda = new SqlDataAdapter(s, con);
                    DataTable dt1 = new DataTable();
                    sda.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        lblFname.Text = dt1.Rows[0]["FirstName"].ToString();
                        lblLname.Text = dt1.Rows[0]["LastName"].ToString();
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Js_Post.aspx");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Js_Profile.aspx");
        }
    }
}
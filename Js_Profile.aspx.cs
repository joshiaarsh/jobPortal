using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace jobPortal
{
    public partial class Js_Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ConnectionString);
        //SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["JsUser"] == null)
            {
                Response.Redirect("Js_Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    string str = "select * from Profile where JsId=" + Session["JsUser"].ToString();
                    SqlDataAdapter da = new SqlDataAdapter(str, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        txtCerti.Text = dt.Rows[0]["certification"].ToString();
                        txtEdu.Text = dt.Rows[0]["education"].ToString();
                        txtExp.Text = dt.Rows[0]["experince"].ToString();
                        txtYr.Text = dt.Rows[0]["Years"].ToString();
                    }

                    string s = "select * from jobSeeker where Id=" + Session["JsUser"].ToString();
                    SqlDataAdapter sda = new SqlDataAdapter(s, con);
                    DataTable dt1 = new DataTable();
                    sda.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        txtFname.Text = dt1.Rows[0]["FirstName"].ToString();
                        txtLname.Text = dt1.Rows[0]["LastName"].ToString();
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string s = null, fName = null, fileSize = null, fileType = null;

            string str = "select * from Profile where JsId=" + Session["JsUser"].ToString();
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);

                FileInfo oFileInfo = new FileInfo(fileName);

                fName = oFileInfo.Name;
                fileSize = null;//oFileInfo.Length.ToString();
                fileType = oFileInfo.Extension;
            }
            if (dt.Rows.Count < 0)
            {
                s = "insert into Profile(JsId,education,certification,experince,Years,fileName,fileSize,fileType) VALUES (" + Session["JsUser"] + ",'" + txtEdu.Text + "','" + txtCerti.Text + "','" + txtExp.Text + "','" + txtYr.Text + "','" + fName + "','" + fileSize + "','" + fileType + "')";
            }
            else
            {
                s = "Update Profile set education='" + txtEdu.Text + "',certification='" + txtCerti.Text + "',experince='" + txtExp.Text + "',Years='" + txtYr.Text + "',fileName='" + fName + "',fileSize='" + fileSize + "',fileType='" + fileType + "' where JsId= " + Session["JsUser"];
            }
            con.Open();
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Js_ViewProfile.aspx");

        }
    }
}
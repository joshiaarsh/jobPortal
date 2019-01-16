using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Js_Apply : System.Web.UI.Page
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
                String postId = Request.QueryString["id"];
                String jobSeekerId = Session["JsUser"].ToString();
                string s = "insert into Applicant (PostId,JsId) VALUES (" + postId + "," + jobSeekerId + ")";
                con.Open();
                SqlCommand cmd = new SqlCommand(s, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Js_Post.aspx");

            }

        }
    }
}
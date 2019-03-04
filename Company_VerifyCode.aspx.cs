using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Company_VerifyCode : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-LNMDAT9H\\SQLSERVER;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string queryCmd = Request.QueryString["cmd"];
            //for company password verification
            if (queryCmd == "comp_pwd_verify")
            {
                if (txtCode.Text == Session["num"].ToString())
                {
                    Response.Redirect("Company_ResetPassword.aspx?cmd=comp_reset");
                }
                else
                {
                    Response.Redirect("Company_VerifyCode.aspx?cmd=comp_pwd_verify");
                }
            }
            //for company's user verification
            else if (queryCmd == "compuser_pwd_verify")
            {
                if (txtCode.Text == Session["num"].ToString())
                {
                    Response.Redirect("Company_ResetPassword.aspx?cmd=comp_user_reset");
                }
                else
                {
                    Response.Redirect("Company_VerifyCode.aspx?cmd=compuser_pwd_verify");
                }
            }
            //else
            //{
            //    if (txtCode.Text == Session["num"].ToString())
            //    {
            //        string strEmail = Session["email"].ToString();
            //        string s = "Update jobSeeker set Verified=1 where EmailId='" + Session["email"].ToString() + "'";
            //        con.Open();
            //        SqlCommand cmd = new SqlCommand(s, con);
            //        cmd.ExecuteNonQuery();
            //        Response.Redirect("Js_login.aspx");
            //    }
            //    else
            //    {
            //        Response.Redirect("Js_VerifyCode.aspx");
            //    }
            //}
        }
    }
}
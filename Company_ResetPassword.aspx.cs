using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Company_ResetPassword : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-LNMDAT9H\\SQLSERVER;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            string queryCmd = Request.QueryString["cmd"];
            if (queryCmd == "comp_reset")
            {

                if (Session["Com_Email"] == null)
                {
                    Response.Redirect("Company_login.aspx");
                }
                else
                {

                    lbl_session.Text = Session["Com_Email"].ToString();
                }
            }
            else if(queryCmd == "comp_user_reset")
            {
                if (Session["Com_Email"] == null)
                {
                    Response.Redirect("Company_userLogin.aspx");
                }
                else
                {

                    lbl_session.Text = Session["Com_Email"].ToString();
                }

            }
        }

        protected void btnResetPwd_Click(object sender, EventArgs e)
        {
            string queryCmd = Request.QueryString["cmd"];
            if (queryCmd == "comp_reset")
            {
                con.Open();
                string s = "Update Company set Pwd=@newpwd where email='" + Session["Com_Email"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(s, con);
                cmd.Parameters.AddWithValue("@newpwd", txtNewPwd.Text);
                cmd.ExecuteNonQuery();
                lblmsg.Visible = true;
                lblmsg.Text = "Your password has been reset sucessfully";
            }
            else if (queryCmd == "comp_user_reset")
            {
                con.Open();
                string s = "Update [User] set Pwd=@newpwd where Email='" + Session["Com_Email"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(s, con);
                cmd.Parameters.AddWithValue("@newpwd", txtNewPwd.Text);
                cmd.ExecuteNonQuery();
                lblmsg.Visible = true;
                lblmsg.Text = "Your password has been reset sucessfully";
            }
        }
    }
}
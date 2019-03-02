using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Js_ResestPassword : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-LNMDAT9H\\SQLSERVER;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["JsEmail"] == null)
            {
                Response.Redirect("Js_Login.aspx");
            }
            else
            {
                
                lbl_session.Text = Session["JsEmail"].ToString();
            }
        }

        protected void btnResetPwd_Click(object sender, EventArgs e)
        {
            // if (txtCode.Text == Session["num"].ToString())
            // {

            con.Open();
                //string strEmail = Session["email"].ToString();
                string s = "Update jobSeeker set Pwd=@newpwd where EmailId='" + Session["JsEmail"].ToString() + "'"; 
                SqlCommand cmd = new SqlCommand(s, con);
                cmd.Parameters.AddWithValue("@newpwd", txtNewPwd.Text);
                cmd.ExecuteNonQuery();
                lblmsg.Visible = true;
                lblmsg.Text = "Your password has been reset sucessfully";
          
               // Response.Redirect("Js_login.aspx");
           
        }
    }
}
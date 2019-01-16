using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Js_VerifyCode : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string queryCmd= Request.QueryString["cmd"];
            if (queryCmd == "verify")
            {
                if (txtCode.Text == Session["num"].ToString())
                {
                    Response.Redirect("Js_Post.aspx");
                }
                else
                {
                    Response.Redirect("Js_VerifyCode.aspx");
                }
            }
            else
            {
                if (txtCode.Text == Session["num"].ToString())
                {
                    string strEmail = Session["email"].ToString();
                    string s = "Update jobSeeker set Verified=1 where EmailId='" + Session["email"].ToString() + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(s, con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Js_login.aspx");
                }
                else
                {
                    Response.Redirect("Js_VerifyCode.aspx");
                }
            }
        }

        protected void btnResend_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();
            Session["num"] = rnd.Next(1111, 9999);
            try
            {
                MailAddress mailfrom = new MailAddress("roshnibhalodia13@gmail.com", "Job Portal");
                MailAddress mailto = new MailAddress(Session["email"].ToString());
                MailMessage newmsg = new MailMessage(mailfrom, mailto);
                newmsg.IsBodyHtml = true;

                newmsg.Subject = "Job Portal account";
                newmsg.Body = "Hello Customer,<br /><br /> Please verify you account by entering <u>" + Session["num"] + "</u><br /><br />Thank you";

                SmtpClient smtps = new SmtpClient("smtp.gmail.com", 587);
                smtps.UseDefaultCredentials = false;
                smtps.Credentials = new NetworkCredential("roshnibhalodia13@gmail.com", "Roshni@1310");
                smtps.EnableSsl = true;
                smtps.Send(newmsg);
                Response.Redirect("Js_VerifyCode.aspx");
            }
            catch (Exception ex)
            { }
        }
    }
}
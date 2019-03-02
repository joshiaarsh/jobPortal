using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Js_ForgotPassword : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-LNMDAT9H\\SQLSERVER;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from jobSeeker where EmailId=@eid", con);
            cmd.Parameters.AddWithValue("@eid", txtEmail.Text);

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    Session["JsEmail"] = reader["EmailId"];
                    Random rnd = new Random();
                    Session["num"] = rnd.Next(1111, 9999);
                    try
                    {
                        MailAddress mailfrom = new MailAddress("roshnishah1310@gmail.com", "Job Portal");
                        MailAddress mailto = new MailAddress(reader["EmailId"].ToString());
                        MailMessage newmsg = new MailMessage(mailfrom, mailto);
                        newmsg.IsBodyHtml = true;

                        newmsg.Subject = "Job Portal account";
                        newmsg.Body = "Hello " + reader["FirstName"].ToString() + ",<br /><br /> Please reset your account password by entering <u>" + Session["num"] + "</u><br /><br />Thank you";

                        SmtpClient smtps = new SmtpClient("smtp.gmail.com", 587);
                        smtps.UseDefaultCredentials = false;
                        smtps.Credentials = new NetworkCredential("roshnibhalodia13@gmail.com", "Roshni@1310");
                        smtps.EnableSsl = true;
                        smtps.Send(newmsg);

                    }
                    catch (Exception ex)
                    {

                    }
                    Response.Redirect("Js_VerifyCode.aspx?cmd=pwdverify");
                }
                else
                {
                    Response.Redirect("Js_Login.aspx");
                }
            }

        }
    }
}
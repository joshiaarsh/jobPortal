using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Company_ForgotPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-LNMDAT9H\\SQLSERVER;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void sendemail()
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

            string queryCmd = Request.QueryString["cmd"];
            if (queryCmd == "company")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Company where email=@eid", con);
                cmd.Parameters.AddWithValue("@eid", txtEmail.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        Session["Com_Email"] = reader["email"];
                        Random rnd = new Random();
                        Session["num"] = rnd.Next(1111, 9999);
                        try
                        {
                            MailAddress mailfrom = new MailAddress("roshnishah1310@gmail.com", "Job Portal");
                            MailAddress mailto = new MailAddress(reader["email"].ToString());
                            MailMessage newmsg = new MailMessage(mailfrom, mailto);
                            newmsg.IsBodyHtml = true;

                            newmsg.Subject = "Job Portal account";
                            newmsg.Body = "Hello " + reader["Name"].ToString() + ",<br /><br /> Please reset your company account password by entering <u>" + Session["num"] + "</u><br /><br />Thank you";

                            SmtpClient smtps = new SmtpClient("smtp.gmail.com", 587);
                            smtps.UseDefaultCredentials = false;
                            smtps.Credentials = new NetworkCredential("roshnibhalodia13@gmail.com", "Roshni@1310");
                            smtps.EnableSsl = true;
                            smtps.Send(newmsg);

                        }
                        catch (Exception ex)
                        {

                        }
                        Response.Redirect("Company_VerifyCode.aspx?cmd=comp_pwd_verify");
                    }
                    else
                    {
                        Response.Redirect("Company_Login.aspx");
                    }
                }
            }

            else if (queryCmd == "comp_user")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from [User] where Email=@ueid", con);
                cmd.Parameters.AddWithValue("@ueid", txtEmail.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        Session["Com_Email"] = reader["Email"];
                        Random rnd = new Random();
                        Session["num"] = rnd.Next(1111, 9999);
                        try
                        {
                            MailAddress mailfrom = new MailAddress("roshnishah1310@gmail.com", "Job Portal");
                            MailAddress mailto = new MailAddress(reader["Email"].ToString());
                            MailMessage newmsg = new MailMessage(mailfrom, mailto);
                            newmsg.IsBodyHtml = true;

                            newmsg.Subject = "Job Portal account";
                            newmsg.Body = "Hello " + reader["UserId"].ToString() + ",<br /><br /> Please reset your company user account password by entering <u>" + Session["num"] + "</u><br /><br />Thank you";

                            SmtpClient smtps = new SmtpClient("smtp.gmail.com", 587);
                            smtps.UseDefaultCredentials = false;
                            smtps.Credentials = new NetworkCredential("roshnibhalodia13@gmail.com", "Roshni@1310");
                            smtps.EnableSsl = true;
                            smtps.Send(newmsg);

                        }
                        catch (Exception ex)
                        {

                        }
                        Response.Redirect("Company_VerifyCode.aspx?cmd=compuser_pwd_verify");
                    }
                    else
                    {
                        Response.Redirect("Company_userLogin.aspx");
                    }
                }
            }
        }
    }
}
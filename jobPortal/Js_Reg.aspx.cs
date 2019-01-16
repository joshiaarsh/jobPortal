using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Js_Reg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();
            Session["num"] = rnd.Next(1111, 9999);
            try
            {
                MailAddress mailfrom = new MailAddress("roshnishah1310@gmail.com", "Job Portal");
                MailAddress mailto = new MailAddress(txtEmail.Text);
                MailMessage newmsg = new MailMessage(mailfrom, mailto);
                newmsg.IsBodyHtml = true;

                newmsg.Subject = "Job Portal account";
                newmsg.Body = "Hello "+txtFname.Text+ ",<br /><br /> Please verify you account by entering <u>" + Session["num"]+ "</u><br /><br />Thank you";

                SmtpClient smtps = new SmtpClient("smtp.gmail.com", 587);
                smtps.UseDefaultCredentials = false;
                smtps.Credentials = new NetworkCredential("roshnibhalodia13@gmail.com", "Roshni@1310");
                smtps.EnableSsl = true;
                smtps.Send(newmsg);

            }
            catch (Exception ex)
            {

            }
            Session["email"] = txtEmail.Text;
            string s = "insert into jobSeeker" +
                "(FirstName,LastName,EmailId,UserId,Pwd)" +
            " VALUES ('" + txtFname.Text + "','" + txtLname.Text + "','" + txtEmail.Text + "','" + txtUserId.Text + "','" + txtPwd.Value + "')";
            con.Open();
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Js_VerifyCode.aspx");
        }
    }
}
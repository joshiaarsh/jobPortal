using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Company_userReg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        public bool insertDb(string s)
        {
            SqlCommand cmd = new SqlCommand(s, con);
            int success = cmd.ExecuteNonQuery();
            if (success == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["company"] == null)
            {
                Response.Redirect("Company_login.aspx");
            }
        }
        private bool UserExsit()
        {
            // string s= "select Id from User where UserId='" + txtUserId.Text+"'";
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Id from [User] where UserId=@zip", con);
            cmd.Parameters.AddWithValue("@zip", txtUserId.Text);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            //con.Close();

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            if (!UserExsit())
            {

                string s = "insert into [User](Cid,Email,UserId,Pwd,Role) VALUES (" + Session["Cid"] + ",'" + txtEmail.Text + "','" + txtUserId.Text + "','" + txtPwd.Value + "'," + userRole.SelectedIndex + ")";
                if (insertDb(s))
                {
                    Response.Redirect("Company_userLogin.aspx");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
            else
            {
                lblError.Text = "UserId already exists";
                Response.Redirect("Company_userReg.aspx");
            }

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Company_userLogin.aspx");
        }
    }
}
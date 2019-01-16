using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Company_userLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session["company"] = null;
                Session["user"] = null;
                Session["role"] = null;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from [User] where UserId=@id and Pwd=@pwd ", con);
            cmd.Parameters.AddWithValue("@id", txtId.Text);
            cmd.Parameters.AddWithValue("@pwd", txtpwd.Value);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    Session["company"] = reader["Cid"];
                    Session["user"] = txtId.Text;
                    Session["role"] = reader["Role"];
                    Response.Redirect("Company_addPost.aspx");
                }
                else
                {
                    Response.Redirect("Company_userLogin.aspx");
                }
            }
        }
    }
}
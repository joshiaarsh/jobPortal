using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Company_addPost : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["company"] == null)
            {
                Response.Redirect("Company_userLogin.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string s = "insert into JobPost(CId,PostHead,Descr,Loc,Salary,JobType,JobField) " +
                "VALUES ("+ Session["company"] + ",'" + txtHeader.Text + "','" + txtDesc.Value + "','" + txtLoc.Text + "','" + txtSal.Text + "','" + txtType.Text + "','"+txtField.Text+"')";
            con.Open();
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Company_listPost.aspx");
        }
    }
}
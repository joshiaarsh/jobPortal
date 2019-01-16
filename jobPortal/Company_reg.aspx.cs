using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Company_reg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        

        protected void companyReg_Click(object sender, EventArgs e)
        {
           // TextBox txtDesc = (TextBox)Page.FindControl("TxtcompanyDesc");
            string strFromTextArea = TxtcompanyDesc.Value;

            string s = "insert into Company(Name,descr,website,email,loc,contactNo,pwd)" +
            " VALUES ('" + TxtcompanyName.Text + "','" + strFromTextArea + "','" + TxtcompanySite.Text + "','" + TxtcompanyEmail.Text + "','" + TxtcompanyLoc.Text + "','" + TxtcompanyNo.Text + "','" + txtPwd.Value + "')";
            con.Open();
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();

            //fetch the cid if suucess
            SqlCommand cmd1 = new SqlCommand("Select CId from Company where email=@email", con);
            cmd1.Parameters.AddWithValue("@email", TxtcompanyEmail.Text);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    Session["cuser"] = reader["CID"];
                }
            }
            Response.Redirect("Company_userReg.aspx");
        }
    }
}
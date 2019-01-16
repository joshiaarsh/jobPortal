using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobPortal
{
    public partial class Company_EditPost : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["company"] == null)
            {
                Response.Redirect("Company_userLogin.aspx");
            }
            else
            {
                lblId.Text = Request.QueryString["id"];

                if (!IsPostBack)
                {
                    string str = "select * from JobPost where PostId=" + Convert.ToInt16(lblId.Text);
                    SqlDataAdapter da = new SqlDataAdapter(str, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        txtHeader.Text = dt.Rows[0]["PostHead"].ToString();
                        txtDesc.Value = dt.Rows[0]["Descr"].ToString();
                        txtLoc.Text = dt.Rows[0]["Loc"].ToString();
                        txtSal.Text = dt.Rows[0]["Salary"].ToString();
                        txtType.Text = dt.Rows[0]["JobType"].ToString();
                        txtField.Text = dt.Rows[0]["JobField"].ToString();
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string s = "Update JobPost set PostHead='" + txtHeader.Text + "',Descr='" + txtDesc.Value + "',Loc='" + txtLoc.Text + "',Salary='" + txtSal.Text + "',JobType='" + txtType.Text + "',JobField='" + txtField.Text + "' where PostId=" + Convert.ToInt16(lblId.Text);
            SqlConnection con1 = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(s, con1);
            cmd1.ExecuteNonQuery();
            Response.Redirect("Company_listPost.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Company_listPost.aspx");
        }
    }
}
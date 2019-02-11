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
    public partial class Js_MyJobs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-LNMDAT9H\\SQLSERVER;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

        private void BindGrid()
        {
            string samas2 = Session["JsUser"].ToString();
            con.Open();
            string sQuery = "SELECT PostHead,Descr,JobType FROM apj where id='"+samas2+"'";
            SqlCommand cmd = new SqlCommand(sQuery, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(sdr);
            GridView1.DataSource = dt;
            GridView1.DataKeyNames = new string[] { "PostHead" };
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["JsUser"] == null)
            {
                Response.Redirect("Js_Login.aspx");
            }
            else
            {
                BindGrid();
             //   Lab1.Text = Session["JsUser"].ToString();
            }

        }
    }
}
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
    public partial class Company_listApplicant : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ConnectionString);

        private void BindGrid()
        {
            con.Open();
          //Change the select query it must have postID, jsID, post heading, applicant name
           string sQuery = "select p.PostId, PostHead,Descr, a.JsId, js.FirstName+' '+js.LastName as JsName from JobPost p join Applicant a on a.PostId = p.PostId join jobSeeker js on js.Id = a.JsId where p.CId="+Session["company"];
            SqlCommand cmd = new SqlCommand(sQuery, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(sdr);
            gdPost.DataSource = dt;
            gdPost.DataKeyNames = new string[] { "PostId" };
            gdPost.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["company"] == null)
            {
                Response.Redirect("Company_userLogin.aspx");
            }
            else
            {
                BindGrid();
            }
        }
    }
}
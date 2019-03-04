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
            string sQuery = "select p.PostId, PostHead,Descr, a.JsId, js.FirstName+' '+js.LastName as JsName from JobPost p join Applicant a on a.PostId = p.PostId join jobSeeker js on js.Id = a.JsId where p.CId=" + Session["company"];
            SqlCommand cmd = new SqlCommand(sQuery, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(sdr);
            gdApplicant.DataSource = dt;
            gdApplicant.DataKeyNames = new string[] { "PostId" };
            gdApplicant.DataBind();
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

        protected void gdApplicant_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Approve")
            {
                GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);

                int id = gvr.RowIndex;
                string getpostid = gdApplicant.Rows[id].Cells[0].Text;
                string getjsid = gdApplicant.Rows[id].Cells[2].Text;
                string strQuery = "Update [Applicant] set [IsSelected]=1 where JsId= " +getjsid + "and [PostId]="+getpostid;
                con.Open();
                SqlCommand cmd = new SqlCommand(strQuery, con);
                cmd.ExecuteNonQuery();
                //send msg or email
            }
            else if (e.CommandName == "Reject")
            {
                GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);

                int id = gvr.RowIndex;
                string getpostid = gdApplicant.Rows[id].Cells[0].Text;
                string getjsid = gdApplicant.Rows[id].Cells[2].Text;
                string strQuery = "Update [Applicant] set [IsSelected]=0 where JsId= " + getjsid + "and [PostId]=" + getpostid;
                con.Open();
                SqlCommand cmd = new SqlCommand(strQuery, con);
                cmd.ExecuteNonQuery();
                //send msg or email

            }
        }

        protected void gdApplicant_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int id = e.NewSelectedIndex;
            string getpostid = gdApplicant.Rows[id].Cells[0].Text;
            string getjsid = gdApplicant.Rows[id].Cells[2].Text;
            Response.Redirect(String.Format("Company_viewApplicant.aspx?pid={0}&jsid={1}", Server.UrlEncode(getpostid), Server.UrlEncode(getjsid)));
        }
    }
}
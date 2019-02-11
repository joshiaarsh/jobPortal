using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
namespace jobPortal
{
    public partial class Js_Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=JobPortal;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["JsUser"] == null)
            {
                Response.Redirect("Js_Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    string str = "select * from Profile where JsId=" + Session["JsUser"].ToString();
                    SqlDataAdapter da = new SqlDataAdapter(str, con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        txtCerti.Text = dt.Rows[0]["certification"].ToString();
                        txtEdu.Text = dt.Rows[0]["education"].ToString();
                        txtExp.Text = dt.Rows[0]["experince"].ToString();
                        txtYr.Text = dt.Rows[0]["Years"].ToString();
                    }

                    string s = "select * from jobSeeker where Id=" + Session["JsUser"].ToString();
                    SqlDataAdapter sda = new SqlDataAdapter(s, con);
                    DataTable dt1 = new DataTable();
                    sda.Fill(dt1);
                    if (dt1.Rows.Count > 0)
                    {
                        txtFname.Text = dt1.Rows[0]["FirstName"].ToString();
                        txtLname.Text = dt1.Rows[0]["LastName"].ToString();
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string s = "";
            string str = "select * from Profile where JsId=" + Session["JsUser"].ToString();
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count < 0)
            {
                s = "insert into Profile(JsId,education,certification,experince,Years) VALUES (" + Session["JsUser"] + ",'" + txtEdu.Text + "','" + txtCerti.Text + "','" + txtExp.Text + "','" + txtYr.Text + "')";
            }
            else
            {
                s = "Update Profile set education='" + txtEdu.Text + "',certification='" + txtCerti.Text + "',experince='" + txtExp.Text + "',Years='" + txtYr.Text + "' where JsId= " + Session["JsUser"];
            }
            con.Open();
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Js_ViewProfile.aspx");
        }

		protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (FileUpload1.HasFile)
			{
				string fileName = FileUpload1.FileName;
				FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);
			}

			DataTable dt = new DataTable();
			dt.Columns.Add("File");
			dt.Columns.Add("Size");
			dt.Columns.Add("Type");

			foreach (string strfile in Directory.GetFiles(Server.MapPath("~/Data")))
			{
				FileInfo fi = new FileInfo(strfile);
		dt.Rows.Add(fi.Name, fi.Length.ToString(),fi.Extension);
			}

			GridView1.DataSource = dt;
			GridView1.DataBind();
		}
		protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
		{
			if(e.CommandName == "Download")
			{
				Response.Clear();
				Response.ContentType = "application/octet-stream";
				Response.AppendHeader("Content-Disposition", "filename="
					+ e.CommandArgument);
				Response.TransmitFile(Server.MapPath("~/Data/")
					+ e.CommandArgument);
				Response.End();
			}
		}
	}
}
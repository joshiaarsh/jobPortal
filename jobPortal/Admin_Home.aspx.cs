using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.Admin
{
    public partial class Home : System.Web.UI.Page
    {
       // DS_JSeeker.JobSheeker_Mst_selectDataTable JDT = new DS_JSeeker.JobSheeker_Mst_selectDataTable();
        //DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter JAdapter = new DS_JSeekerTableAdapters.JobSheeker_Mst_selectTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("Admin_Login.aspx");
            }
            /* if (Page.IsPostBack == false)
             {
                 JDT = JAdapter.SelectJSeeker();
                 DropDownList1.DataSource = JDT;
                 DropDownList1.DataTextField = "Email";
                 DropDownList1.DataValueField = "uID";
                 DropDownList1.DataBind();
                 MultiView1.ActiveViewIndex = -1;
             }*/
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
           /* MultiView1.ActiveViewIndex = 0;

            JDT = JAdapter.SelectBY_UID(Convert.ToInt32(DropDownList1.SelectedValue));
            Label1.Text = JDT.Rows[0]["Fname"].ToString();
            Label12.Text = JDT.Rows[0]["Lname"].ToString();

            Label3.Text = JDT.Rows[0]["Address"].ToString();
            Label4.Text = JDT.Rows[0]["city"].ToString();
            Label5.Text = JDT.Rows[0]["pincode"].ToString();
            Label6.Text = JDT.Rows[0]["mobileno"].ToString();
            Label7.Text = JDT.Rows[0]["degree"].ToString();
            Label8.Text = JDT.Rows[0]["skill"].ToString();
            Label9.Text = JDT.Rows[0]["Experience"].ToString();
            Label10.Text = JDT.Rows[0]["Paasyear"].ToString();
            Label11.Text = JDT.Rows[0]["email"].ToString();*/
        }

    }
}
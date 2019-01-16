using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.Admin
{
    public partial class Feedback : System.Web.UI.Page
    {
       // DS_FEED.FEEDBACK_SELECTDataTable FDT = new DS_FEED.FEEDBACK_SELECTDataTable();
       // DS_FEEDTableAdapters.FEEDBACK_SELECTTableAdapter FAdapter = new DS_FEEDTableAdapters.FEEDBACK_SELECTTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
              //  FDT = FAdapter.SELECT();
               // GridView1.DataSource = FDT;
              // GridView1.DataBind();

               // lbl.Text = "(" + GridView1.Rows.Count.ToString() + ")";


            }
            if(Session["uname"] != null)
            {
                GridView1.Visible = true;
            }
            else 
            {
                Response.Redirect("Admin_Login.aspx");
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            /*FAdapter.Delete(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));
            FDT = FAdapter.SELECT();
            GridView1.DataSource = FDT;
            GridView1.DataBind();
            lbl.Text = "(" + GridView1.Rows.Count.ToString() + ")";*/
        }
		
	}
    }
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.Admin
{
    public partial class Company : System.Web.UI.Page
    {
       // private object customerBindingSource;

        // DS_COMP.COMPANYMST_SELECTDataTable CoDT = new DS_COMP.COMPANYMST_SELECTDataTable();
        // DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter CoAdapter = new DS_COMPTableAdapters.COMPANYMST_SELECTTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
			GridView2.Visible = true;
			GridView3.Visible = false;
			
            if (Session["uname"]!=null)
            {
                GridView2.Visible=true;
            }
            else 
            {
                Response.Redirect("Login.aspx");
            }
        }

		protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
		{
			GridView2.Visible = false;
			GridView3.Visible = true;
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			GridView2.Visible = true;
			GridView3.Visible = false;
		}
	}
}
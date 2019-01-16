using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.Admin
{
    public partial class JobSeeker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			GridView1.Visible = true;
			GridView2.Visible = false;
            if(Session["uname"] != null)
            {
                GridView1.Visible = true;
            }
            else 
            {
                Response.Redirect("Admin_Login.aspx");
            }
        }

		protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
		{
			GridView1.Visible = false;
			GridView2.Visible = true;
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			GridView1.Visible = true;
			GridView2.Visible = false;
		}
	}
}
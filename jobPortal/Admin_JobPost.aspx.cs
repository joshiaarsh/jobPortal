using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.Admin
{
	public partial class JobPost : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			GridView1.Visible = true;
			GridView2.Visible = false;
			GridView3.Visible = false;

		}

		protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
		{
			GridView1.Visible = false;
			GridView2.Visible = true;
			GridView3.Visible = false;
		}

		protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
		{
			GridView1.Visible = false;
			GridView2.Visible = false;
			GridView3.Visible = true;
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			GridView1.Visible = true;
			GridView2.Visible = false;
			GridView3.Visible = false;
		}
	}
}
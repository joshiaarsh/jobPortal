using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (txtname.Text == "admin" && txtpass.Text == "12345")
            {
                Session["uname"] = txtname.Text;
                Response.Redirect("Admin_Home.aspx");
                
            }
            else
            {
                lbl.Text = "Invalid Detail";

            }
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal.Admin
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["uname"]!=null)
            {
                LinkButton4.Visible = true;
            }
            else
            {
                LinkButton4.Visible = false;
            }
        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.Remove("uname");
            Response.Redirect("Login.aspx");
        }
        }
    }
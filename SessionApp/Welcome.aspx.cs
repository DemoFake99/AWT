using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionApp
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                lblWelcome.Text = "Welcome " + Session["Name"].ToString();
            }
            else
            {
                lblWelcome.Text = "Session Expired";
            }
        }
    }
}
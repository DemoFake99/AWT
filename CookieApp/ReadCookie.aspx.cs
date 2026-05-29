using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookieApp
{
    public partial class ReadCookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                lblName.Text = "Welcome " +
                    Request.Cookies["UserInfo"]["Name"];
            }
            else
            {
                lblName.Text = "Cookie Not Found";
            }
        }
    }
}
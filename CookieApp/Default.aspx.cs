using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookieApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("UserInfo");

            cookie["Name"] = txtName.Text;

            cookie.Expires = DateTime.Now.AddDays(1);

            Response.Cookies.Add(cookie);

            lblMessage.Text = "Cookie Stored Successfully";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataBoundApp
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();

                dt.Columns.Add("ID");
                dt.Columns.Add("Name");
                dt.Columns.Add("Course");

                dt.Rows.Add("101", "Rahul", "ASP.NET");
                dt.Rows.Add("102", "Priya", "Java");
                dt.Rows.Add("103", "Amit", "Python");
                dt.Rows.Add("104", "Neha", "C#");

                ddlStudents.DataSource = dt;
                ddlStudents.DataTextField = "Name";
                ddlStudents.DataValueField = "ID";
                ddlStudents.DataBind();

                GridView1.DataSource = dt;
                GridView1.DataBind();

                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
    }
}
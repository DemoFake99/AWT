using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Security;

namespace SimpleSQLApp
{
    public partial class Home : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Project\NET-Project\SimpleSQLApp\App_Data\User.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open) 
            {
                con.Close();
            }
            con.Open();
            displayData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into [user] values ('"+ nameBox.Text +"','"+ cityBox.Text +"')";
            cmd.ExecuteNonQuery();

            nameBox.Text = string.Empty;
            cityBox.Text = string.Empty;

            displayData();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete FROM [user] where id="+ Convert.ToInt32(idBox.Text) +"";
            cmd.ExecuteNonQuery();

            idBox.Text= string.Empty;
            displayData();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update [user] set name='"+nameBox.Text+"', city='"+cityBox.Text+"' where id="+ Convert.ToInt32(idBox.Text) +"";
            cmd.ExecuteNonQuery();

            idBox.Text = string.Empty;
            nameBox.Text = string.Empty;
            cityBox.Text = string.Empty;

            displayData();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            displayData();
        }

        protected void displayData()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM [user]";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApp
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";
        }

        protected void cvDOB_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = calDOB.SelectedDate != DateTime.MinValue;
        }

        protected void cvSkills_ServerValidate(object source, ServerValidateEventArgs args)
        {
            bool isAnyChecked = false;
            foreach (ListItem item in cblSkills.Items)
            {
                if (item.Selected)
                {
                    isAnyChecked = true;
                    break;
                }
            }
            args.IsValid = isAnyChecked;
        }

        protected void cvTerms_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerms.Checked;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (Page.IsValid)
            {
                string name = txtName.Text;
                string department = ddlDepartment.SelectedValue;

                lblMessage.Text = "Success! " + name + " has been officially registered in the " + department + " department.";
            }
            else
            {
                lblMessage.Text = "Registration failed. Please correct the errors listed at the top.";
            }
        }
    }
}
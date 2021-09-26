using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            if(TxtAdminId.Text == "Admin" && TxtPwdAdmin.Text == "Admin123")
            {
                Session["Adminname"] = "Welcome" + TxtAdminId.Text;
                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                Labelmsg.Text = "Failed Login Details.....";
            }
        }
    }
}
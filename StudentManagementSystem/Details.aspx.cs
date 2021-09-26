using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace StudentManagementSystem
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            using (con)
            {
                string query;
                if (CheckBox1.Checked)
                {
                    query = "select * from [dbo].[student] where Coursejoin='" + DropDownList2.SelectedItem.Text + "' AND FeesDue !=0";
                }
                else
                {
                    query = "select * from [dbo].[student] where Coursejoin='" + DropDownList2.SelectedItem.Text+"'";
                }

                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }

        }

        
    }
}
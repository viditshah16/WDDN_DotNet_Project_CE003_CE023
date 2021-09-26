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
    public partial class CoursePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCourse_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string query = "Insert into [dbo].[Coursetable] (Cname, Duration, Cfees) values (@Cname, @Duration , @Cfees)";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();

            cmd.Parameters.AddWithValue("@Cname", TextCoursename.Text);
            cmd.Parameters.AddWithValue("@Duration", TextDuration.Text);
            cmd.Parameters.AddWithValue("@Cfees", TextFees.Text);

            cmd.ExecuteNonQuery();

            LabelMsg.Text = "The Course " + TextCoursename.Text + " is Saved Successfully ";
            TextCoursename.Text = "";
            TextDuration.Text = "";
            TextFees.Text = "";
            con.Close();
        }
    }
}
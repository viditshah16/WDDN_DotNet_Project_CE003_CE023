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
    public partial class TutorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Literaljoindate.Text = DateTime.Now.ToString();
        }

        protected void ButtonTutor_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string query = "Insert into [dbo].[tutor] (Tname, Temail, Tphone, Tcourse, Tqualification, Joindate) values (@Tname, @Temail, @Tphone, @Tcourse, @Tqualification, @Joindate)";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();

            cmd.Parameters.AddWithValue("@Tname", TextTutorname.Text);
            cmd.Parameters.AddWithValue("@Temail", TextEmail.Text);
            cmd.Parameters.AddWithValue("@Tphone", TextPhone.Text);
            cmd.Parameters.AddWithValue("@Tcourse", DDLCourse.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Tqualification", TextQualification.Text);
            cmd.Parameters.AddWithValue("@Joindate", Literaljoindate.Text);

            cmd.ExecuteNonQuery();

            LabelMsg.Text = "The tutor " + TextTutorname.Text + " is Saved Successfully ";

            TextTutorname.Text = "";
            TextEmail.Text = "";
            TextPhone.Text = "";
            TextQualification.Text = "";

            con.Close();
        }
    }
}
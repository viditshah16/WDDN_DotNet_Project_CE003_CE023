using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace StudentManagementSystem
{
    public partial class StudentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LiteralJoindate.Text = DateTime.Now.ToString();
        }

        protected void ButtonStudent_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string query = "Insert into [dbo].[student] (Stfname, Stlname, StFathername, Stfatherphone, Stemail, Stphone, Coursejoin, Coursefees, Firstinstallment, FeesDue, Joindate) values " +
                "(@Stfname, @Stlname, @StFathername, @Stfatherphone, @Stemail, @Stphone, @Coursejoin, @Coursefees, @Firstinstallment, @FeesDue, @Joindate)";
            
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@Stfname",TextFname.Text);
            cmd.Parameters.AddWithValue("@Stlname",TextLname.Text);
            cmd.Parameters.AddWithValue("@StFathername",TextFatherName.Text);
            cmd.Parameters.AddWithValue("@Stfatherphone",TextFatherPhone.Text);
            cmd.Parameters.AddWithValue("@Stemail",TextEmail.Text);
            cmd.Parameters.AddWithValue("@Stphone",TextPhone.Text);
            cmd.Parameters.AddWithValue("@Coursejoin",DDLCourseName.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Coursefees",LabelCourseFees.Text);
            cmd.Parameters.AddWithValue("@Firstinstallment", TextCourseInstallment.Text);
            cmd.Parameters.AddWithValue("@FeesDue",LabelDueFees.Text);
            cmd.Parameters.AddWithValue("@Joindate", LiteralJoindate.Text);

            cmd.ExecuteNonQuery();

            LabelMsg.Text = "Student " + TextFname.Text + " is Saved Successfully... ";

            TextFname.Text = "";
            TextLname.Text = "";
            TextFatherName.Text = "";
            TextFatherPhone.Text = "";
            TextEmail.Text = "";
            TextPhone.Text = "";
            TextLname.Text = "";
            TextCourseInstallment.Text = "";
            LabelDueFees.Text = "";

            con.Close();
        }

        protected void DDLCourseName_SelectedIndexChanged(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string query = "select * from [dbo].[Coursetable] where Cname = @Cname";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Cname", DDLCourseName.SelectedItem.Text);
            SqlDataReader rdr = cmd.ExecuteReader();
            while(rdr.Read())
            {
                LabelCourseFees.Text = rdr["Cfees"].ToString();
            }
            con.Close();
        }

        protected void TextCourseInstallment_TextChanged(object sender, EventArgs e)
        {
            int balance = Convert.ToInt32(LabelCourseFees.Text) - Convert.ToInt32(TextCourseInstallment.Text);
            LabelDueFees.Text = balance.ToString();
        }
    }
}
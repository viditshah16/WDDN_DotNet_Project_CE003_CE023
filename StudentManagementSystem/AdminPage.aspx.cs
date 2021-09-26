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
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string query = "select * from " + DropDownList1.SelectedItem.Text;
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            
            if(DropDownList1.SelectedItem.Text == "Coursetable")
            {
                GdCourse.Visible = true;
                GdStudent.Visible = false;
                GdTutor.Visible = false;

                GdCourse.DataSource = dt;
                GdCourse.DataBind();
            }
            else if (DropDownList1.SelectedItem.Text == "student")
            {
                GdCourse.Visible = false;
                GdStudent.Visible = true;
                GdTutor.Visible = false;

                GdStudent.DataSource = dt;
                GdStudent.DataBind();
            }
            else
            {
                GdCourse.Visible = false;
                GdStudent.Visible = false;
                GdTutor.Visible = true;

                GdTutor.DataSource = dt;
                GdTutor.DataBind();
            }

                con.Close();
        }



        protected void GdCourse_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GdCourse.EditIndex = -1;
        }

        protected void GdCourse_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GdCourse.Rows[e.RowIndex];

            int courseid = Convert.ToInt32(GdCourse.DataKeys[e.RowIndex].Values[0]);
            string cname = (row.Cells[2].Controls[0] as TextBox).Text;
            string Duration = (row.Cells[3].Controls[0] as TextBox).Text;
            string Fees = (row.Cells[4].Controls[0] as TextBox).Text;

            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string query = "update Coursetable set Cname=@Cname , Duration = @Duration , Cfees=@Cfees where Cid=@Cid";
            
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Cid", courseid);
            cmd.Parameters.AddWithValue("@Cname", cname);
            cmd.Parameters.AddWithValue("@Duration", Duration);
            cmd.Parameters.AddWithValue("@Cfees", Fees);

            cmd.ExecuteNonQuery();

            con.Close();

        }

        protected void GdCourse_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GdCourse.EditIndex = e.NewEditIndex;
        }

        protected void GdCourse_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int courseid = Convert.ToInt32(GdCourse.DataKeys[e.RowIndex].Values[0]);

            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string query = "delete from Coursetable where Cid=@Cid";

            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Cid", courseid);
            cmd.ExecuteNonQuery();
            con.Close();
        }



        protected void GdStudent_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GdStudent.EditIndex = -1;
        }

        protected void GdStudent_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GdStudent.Rows[e.RowIndex];

            int Stid = Convert.ToInt32(GdStudent.DataKeys[e.RowIndex].Values[0]);
            string stfname = (row.Cells[2].Controls[0] as TextBox).Text;
            string stlname = (row.Cells[3].Controls[0] as TextBox).Text;
            string stfathername = (row.Cells[4].Controls[0] as TextBox).Text;
            string stfatherphone = (row.Cells[5].Controls[0] as TextBox).Text;
            string stmail = (row.Cells[6].Controls[0] as TextBox).Text;
            string stphone = (row.Cells[7].Controls[0] as TextBox).Text;
            string coursejoin = (row.Cells[8].Controls[0] as TextBox).Text;
            string coursefees = (row.Cells[9].Controls[0] as TextBox).Text;
            string firstinstallment = (row.Cells[10].Controls[0] as TextBox).Text;
            string feesdue = (row.Cells[11].Controls[0] as TextBox).Text;
            

            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string query = "update student set Stfname=@Stfname , Stlname=@Stlname , StFathername=@StFathername , Stfatherphone=@Stfatherphone , Stemail=@Stemail ,Stphone=@Stphone , Coursejoin=@Coursejoin , Coursefees=@Coursefees ,Firstinstallment=@Firstinstallment, FeesDue=@FeesDue where Stid=@Stid";


            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Stid", Stid);
            cmd.Parameters.AddWithValue("@Stfname", stfname);
            cmd.Parameters.AddWithValue("@Stlname", stlname);
            cmd.Parameters.AddWithValue("@StFathername", stfathername);
            cmd.Parameters.AddWithValue("@Stfatherphone", stfatherphone);
            cmd.Parameters.AddWithValue("@Stemail", stmail);
            cmd.Parameters.AddWithValue("@Stphone", stphone);
            cmd.Parameters.AddWithValue("@Coursejoin", coursejoin);
            cmd.Parameters.AddWithValue("@Coursefees", coursefees);
            cmd.Parameters.AddWithValue("@Firstinstallment", firstinstallment);
            cmd.Parameters.AddWithValue("@FeesDue", feesdue);


            cmd.ExecuteNonQuery();

            con.Close();
        }

        protected void GdStudent_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Stid = Convert.ToInt32(GdStudent.DataKeys[e.RowIndex].Values[0]);

            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string query = "delete from student where Stid=@Stid";

            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Stid", Stid);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void GdStudent_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GdStudent.EditIndex = e.NewEditIndex;
        }



        protected void GdTutor_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GdTutor.EditIndex = -1;
        }

        protected void GdTutor_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Tid = Convert.ToInt32(GdTutor.DataKeys[e.RowIndex].Values[0]);

            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string query = "delete from tutor where Tid=@Tid";

            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Tid", Tid);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void GdTutor_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GdTutor.Rows[e.RowIndex];

            int Tid = Convert.ToInt32(GdTutor.DataKeys[e.RowIndex].Values[0]);
            string Tname = (row.Cells[2].Controls[0] as TextBox).Text;
            string Temail = (row.Cells[3].Controls[0] as TextBox).Text;
            string Tphone = (row.Cells[4].Controls[0] as TextBox).Text;
            string Tcourse = (row.Cells[5].Controls[0] as TextBox).Text;
            string Tqualification = (row.Cells[6].Controls[0] as TextBox).Text;
            

            string CS = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string query = "update tutor set Tname=@Tname , Temail=@Temail, Tphone=@Tphone, Tcourse=@Tcourse , Tqualification=@Tqualification where Tid=@Tid";

            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Tid", Tid);
            cmd.Parameters.AddWithValue("@Tname", Tname);
            cmd.Parameters.AddWithValue("@Temail", Temail);
            cmd.Parameters.AddWithValue("@Tphone", Tphone);
            cmd.Parameters.AddWithValue("@Tcourse", Tcourse);
            cmd.Parameters.AddWithValue("@Tqualification", Tqualification);
            

            cmd.ExecuteNonQuery();

            con.Close();
        }

        protected void GdTutor_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GdTutor.EditIndex = e.NewEditIndex;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ProjectRegistration
{
    public partial class Userregistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        //{
        //    args.IsValid = home.Checked || cell.Checked;
        //}

        protected void textchanged(object sender, EventArgs e)
        {  // using AJAX
            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=True; Database=Project_SilentAuction_itkssx");
            dbConnection.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM UserRegistration WHERE username=@User_Name", dbConnection);
            cmd.Parameters.AddWithValue("@User_Name", txtuname.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Label1.Text = "User already exists";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label1.Text = "Username available";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=True; Database=Project_SilentAuction_itkssx");
              dbConnection.Open();
              string insertquery = "INSERT into UserRegistration (firstName,lastName,homePhone,cellPhone,emailID,username,password,userType,primaryContact,address)  VALUES(@fname,@lname,@homeph,@cellph,@email,@username,@password,@usertype,@primarycon,@address)";
              SqlCommand comm = new SqlCommand(insertquery,dbConnection);


            //string contact = string.Empty;
            //if (home.Checked)
            //{
            //    contact = "home";
            //}
            //else if (cell.Checked)
            //{
            //   contact = "cell";
            //}


            comm.Parameters.AddWithValue("@fname", txtfname.Text);
              comm.Parameters.AddWithValue("@lname", txtlname.Text);
              comm.Parameters.AddWithValue("@cellph", txtcell.Text);
            comm.Parameters.AddWithValue("@homeph", txthome.Text);
            comm.Parameters.AddWithValue("@email", txtemail.Text);
              comm.Parameters.AddWithValue("@username", txtuname.Text);
              comm.Parameters.AddWithValue("@password", txtpass.Text);
            comm.Parameters.AddWithValue("@usertype", usertype.SelectedItem.Value);
            comm.Parameters.AddWithValue("@primarycon", RadioButtonList1.SelectedItem.Value);
            comm.Parameters.AddWithValue("@address", txtadd.Text);
            int i = 0;
              i = comm.ExecuteNonQuery();
              comm.Dispose();
              if (i > 0)
            {
                string showmsg = "<span style='color:green' >Registration Successful </span>";
                results.Text = showmsg;

                //link here to redirect it to user's home page
            }

            comm.ResetCommandTimeout();

              
            
        }

        
    }
}
using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                bool temp = false;
                SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database=Project_SilentAuction_itkssx;");
                dbConnection.Open();

                String queryStr = "select * from UserRegistration where username='" + Session["user"] + "'";
                SqlCommand cmd = new SqlCommand(queryStr, dbConnection);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    txtfname.Text = dr["firstName"].ToString();
                    txtlname.Text = dr["lastName"].ToString();
                    txthome.Text = dr["homePhone"].ToString();
                    txtcell.Text = dr["cellPhone"].ToString();
                    txtemail.Text = dr["emailID"].ToString();
                    txtuname.Text = dr["username"].ToString();
                    txtpass.Text = dr["password"].ToString();
                    txtrepass.Text = dr["password"].ToString();
                    txtadd.Text = dr["address"].ToString();
                    RadioButtonList1.SelectedValue= dr["primaryContact"].ToString();
                    usertype.SelectedValue = dr["userType"].ToString();
                   

                    temp = true;
                }
                dbConnection.Close();
            }

        }

       

        protected void textchanged(object sender, EventArgs e)
        {  // using AJAX
            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=True; Database=Project_SilentAuction_itkssx");
            dbConnection.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM UserRegistration WHERE username=@Username", dbConnection);
            cmd.Parameters.AddWithValue("@Username", txtuname.Text);
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


       
        protected void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            using (
          SqlConnection con = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database=Project_SilentAuction_itkssx"))
            {
                con.Open();
                using (SqlCommand comm = new SqlCommand("UPDATE userRegistration  SET firstName=@fname,lastName=@lname,homePhone=@homeph,cellPhone=@cellph,emailID=@email,username=@username,password=@password,userType=@usertype,primaryContact=@primarycon,address=@address WHERE username=@username", con))
                {
                    comm.Parameters.AddWithValue("@fname", txtfname.Text);
                    comm.Parameters.AddWithValue("@lname", txtlname.Text);
                    comm.Parameters.AddWithValue("@cellph", txtcell.Text);
                    comm.Parameters.AddWithValue("@homeph", txthome.Text);
                    comm.Parameters.AddWithValue("@email", txtemail.Text);
                    comm.Parameters.AddWithValue("@username", txtuname.Text);
                    comm.Parameters.AddWithValue("@password", txtpass.Text);
                    comm.Parameters.AddWithValue("@usertype", usertype.Text);
                    comm.Parameters.AddWithValue("@primarycon", RadioButtonList1.SelectedItem.ToString());
                    comm.Parameters.AddWithValue("@address", txtadd.Text);

                    comm.ExecuteNonQuery();


                    results.Text = "Updated successfully!";     
                }
            }
        }
    }
    }


    

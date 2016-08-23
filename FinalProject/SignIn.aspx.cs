using System;
using System.Data.SqlClient;

namespace FinalProject
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    Username.Text = Request.Cookies["UserName"].Value;
                    Password.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RememberCheckBox.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Cookies["UserName"].Value = Username.Text.Trim();
            Response.Cookies["Password"].Value = Password.Text.Trim();

            Session["user"] = Username.Text;


            string userName = Username.Text;
            string passWord = Password.Text;

            SqlConnection conn = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database = Project_SilentAuction_itkssx");

            conn.Open();
          //  conn.ChangeDatabase("Project_SilentAuction");
            string checkUser = "select count(*) from UserRegistration where username='" + userName + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
               // conn.ChangeDatabase("Project_SilentAuction");
                string checkPassword = "select password from UserRegistration where  username='" + userName + "'";
                SqlCommand passwordcom = new SqlCommand(checkPassword, conn);
                string password = passwordcom.ExecuteScalar().ToString().Replace(" ", "");
                if (password == Password.Text)
                {

                    Response.Redirect("Index.aspx");

                }
                else
                {
                    Label1.Text = "Invalid username and password.";


                }
            }
            else
            {
                Label1.Text = "Username does not exist.";

            }



        }
    

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Recovery.aspx");
        }
    }
}
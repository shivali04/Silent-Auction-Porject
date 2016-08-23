using System;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;

namespace FinalProject
{
    public partial class Recovery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendEmail(object sender, EventArgs e)
        {
            string username = string.Empty;
            string password = string.Empty;
            
            string constr = "Data Source=itksqlexp8;Integrated Security=true; Database = Project_SilentAuction_itkssx";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Username, [Password] FROM UserRegistration WHERE emailID = @emailID"))
                {
                    cmd.Parameters.AddWithValue("@emailID", txtEmail.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            username = sdr["Username"].ToString();
                            password = sdr["Password"].ToString();
                        }
                    }
                    con.Close();
                }
            }
            if (!string.IsNullOrEmpty(password))
            {
                
                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add(txtEmail.Text);
                mailMessage.From = new MailAddress("schangk@ilstu.edu");
                mailMessage.Subject = "Password Recovery";


                mailMessage.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.<br /><br /> <img src=cid:myImageID width=\"80\" height=\"80\">", username, password);
                mailMessage.IsBodyHtml = true;
                AlternateView htmlView = AlternateView.CreateAlternateViewFromString(mailMessage.Body, null, "text/html");
                //Add Image
                LinkedResource theEmailImage = new LinkedResource(Server.MapPath(".") + @"\logo.jpg", "image/jpg");
                theEmailImage.ContentId = "myImageID";


                //Add the Image to the Alternate view
                htmlView.LinkedResources.Add(theEmailImage);

                //Add view to the Email Message
                mailMessage.AlternateViews.Add(htmlView);
                             
                SmtpClient smtpClient = new SmtpClient("smtp.ilstu.edu");
                smtpClient.Send(mailMessage);
               // smtp.Send(mm);
                lblMessage.ForeColor = Color.Green;
                lblMessage.Text = "Password has been sent to your email address.";
            }
            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "This email address does not match our records.";
            }
        }
    }
}
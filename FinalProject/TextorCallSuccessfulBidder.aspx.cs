using System;

namespace FinalProject
{
    public partial class TextorCallSuccessfulBidder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference1.SUSMSClient text = new ServiceReference1.SUSMSClient();
            String message = "Congratulations, " + usernameTextBox.Text + "!" + " You are the winner of item " + itemIDTextBox.Text + ".";
            String carrier = DropDownList1.Text;

            if (carrier == "Sprint")
                carrier = "Sprint Nextel";
            if (carrier == "Boost Mobile")
                carrier = "Boost Mobile";
            if (carrier == "T-Mobile")
                carrier = "T - Mobile";
            if (carrier == "Virgin Mobile")
                carrier = "Virgin Mobile";
            if (carrier == "Cingular")
                carrier = "Cingular";
            if (carrier == "Verizon")
                carrier = "Verizon";
            if (carrier == "Nextel")
                carrier = "Nextel";
            if (carrier == "US Cellular")
                carrier = "US Cellular";
            if (carrier == "Suncom")
                carrier = "Suncom";
            if (carrier == "Powertel")
                carrier = "Powertel";
            if (carrier == "AT&T")
                carrier = "ATT Cingular";
            if (carrier == "Alltel")
                carrier = "Alltel";
            if (carrier == "Metro PCS")
                carrier = "Metro pcs";

            try
            {


                text.sendSMS(carrier, mobileNumberTextBox.Text, message);
                errorLabel.Text = "Message sent";
            }
            catch
            {
                errorLabel.Text = "The message was not successfully sent";
            }


            //int size = text.getCarriers().Length;
            //string temp = "";
            //for (int i = 0; i < size; i++)
            //{
            //    temp += text.getCarriers().ElementAt(i) + ":";
            //}
            //carriersTextBox.Text = temp;

            //boost mobile:t - mobile:virgin mobile:cingular: sprint nextel:verizon: nextel: us cellular:suncom: powertel: att cingular:alltel: metro pcs:

        }


    }
}

        
    

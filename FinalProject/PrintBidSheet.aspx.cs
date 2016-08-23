using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class PrintBidSheet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["sponsers"] = sponserTextBox.Text;
            Session["itemID"] = itemIDTextBox.Text;
            Session["itemName"] = itemNameTextBox.Text;
            Session["minimumBid"] = minimumBidTextBox.Text;


        }

        protected void generateButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("BidSheet.aspx");

        }


    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class BidSheet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sponserLabel.Text = (string)(Session["sponsers"]);
            minimumBidLabel.Text = (string)(Session["minimumBid"]);
            itemIDLabel.Text = (string)(Session["itemID"]);
            itemNameLabel.Text = (string)(Session["itemName"]);

        }

        protected void printButton_Click(object sender, EventArgs e)
        {
            printButton.Visible = false;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "window.print();", true);

        }
    }
}
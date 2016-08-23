using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class EnterAuction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enterButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = "Data Source=itksqlexp8; ; Initial Catalog=Project_SilentAuction_itkssx;Integrated Security=True;Pooling=False";

            SqlCommand insert = new SqlCommand("insert into Items(itemName, categoryID, ApproximateValue, MinimumBidAmount, angelPrice, donatedBy, createDate) values(@itemName, @categoryID, @ApproximateValue, @MinimumBidAmount,  @angelPrice, @donatedBy, @createDate)", conn);
           // insert.Parameters.AddWithValue("@itemID", itemIDTextBox.Text);
            insert.Parameters.AddWithValue("@itemName", itemNameTextBox.Text);
            insert.Parameters.AddWithValue("@categoryID", categoryIDTextBox.Text);
            insert.Parameters.AddWithValue("@ApproximateValue", approximateValueTextBox.Text);
            insert.Parameters.AddWithValue("@MinimumBidAmount", minimumBidAmountTextBox.Text);
            insert.Parameters.AddWithValue("@angelPrice", angelPriceTextBox.Text);
            insert.Parameters.AddWithValue("@donatedBy", donorDesignerTextBox.Text);
            insert.Parameters.AddWithValue("@createDate", DateTime.Now);




            try
            {
                conn.Open();
                insert.ExecuteNonQuery();
                errorLabel.Text = "Item was Added";


            }
            catch (Exception ex)
            {
                errorLabel.Text = "Error: " + ex.Message;

                conn.Close();
            }
        }

    }
}

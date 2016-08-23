<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnterAuctionItem.aspx.cs" Inherits="FinalProject.EnterAuction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <table>
            
                       Enter Auction Item:
                    
                <%--<tr>
                    <td style="text-align: right" class="auto-style2">
                        Item ID:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                       <asp:TextBox ID="itemIDTextBox" runat="server"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="color:red" ControlToValidate="itemIDTextBox" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>--%>
                <tr>
                    <td style="text-align: right" class="auto-style2">
                        Item Name:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                       <asp:TextBox ID="itemNameTextBox" runat="server"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" style="color:red" ControlToValidate="itemNameTextBox" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            <tr>
                    <td style="text-align: right" class="auto-style2">
                       Category ID:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                       <asp:TextBox ID="categoryIDTextBox" runat="server"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" style="color:red" ControlToValidate="categoryIDTextBox" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style2">
                        Approximate Value:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                         <asp:TextBox ID="approximateValueTextBox" runat="server"> </asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" style="color:red" ControlToValidate="approximateValueTextBox" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
              <tr>
                    <td style="text-align: right" class="auto-style2">
                        Minimum Bid Amount:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                         <asp:TextBox ID="minimumBidAmountTextBox" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" style="color:red" ControlToValidate="minimumBidAmountTextBox" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
              <tr>
                    <td style="text-align: right" class="auto-style2">
                        Angel Price:
                    </td>
                    <td style="text-align: left; vertical-align: top">
                          <asp:TextBox ID="angelPriceTextBox" runat="server"> </asp:TextBox>
                    </td>
                </tr>
             <tr>
                    <td style="text-align: right" class="auto-style2">
                        Donor/Designer ID:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                          <asp:TextBox ID="donorDesignerTextBox" runat="server"> </asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" style="color:red" ControlToValidate="donorDesignerTextBox" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
             <tr>
                    <td style="text-align: right" class="auto-style2">
                        
                    </td>
                    <td style="text-align: left; vertical-align: top">
                       <asp:Button ID="enterItemButton"  runat="server" Text="Enter Item" OnClick="enterButton_Click" CssClass="auto-style1" Width="91px"></asp:Button>
                    </td>
                </tr>   
                            
            </table>
        <asp:Label ID="errorLabel"  runat="server"></asp:Label>



     
    
    </div>
    </form>
</body>
</html>



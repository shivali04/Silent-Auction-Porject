<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintBidSheet.aspx.cs" Inherits="FinalProject.PrintBidSheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 85px;
        }
        .auto-style2 {
            width: 102px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            
                        Please enter the information for the bid sheet:
                    
                <tr>
                    <td style="text-align: right" class="auto-style2">
                        Item Name:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                        <asp:TextBox ID="itemNameTextBox" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style2">
                        Item ID:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                        <asp:TextBox ID="itemIDTextBox" runat="server" />
                    </td>
                </tr>
            <tr>
                    <td style="text-align: right" class="auto-style2">
                        Minimum Bid:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                        <asp:TextBox ID="minimumBidTextBox" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style2">
                        Sponser
                    </td>
                    <td style="text-align: right; vertical-align: top">
                        <asp:TextBox ID="sponserTextBox" runat="server" />
                    </td>
                </tr>
             <tr>
                    <td style="text-align: right" class="auto-style2">
                       
                    </td>
                    <td style="text-align: right; vertical-align: top">
                       <asp:Button ID="generateButton" runat="server" Text="Generate Bid Sheet" OnClick="generateButton_Click" />
                    </td>
                </tr>   
                            
            </table>
    
    </div>
    </form>
</body>
</html>


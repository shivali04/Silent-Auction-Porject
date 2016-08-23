<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextSuccessFulBidder.aspx.cs" Inherits="FinalProject.TextSuccessFulBidder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 14px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        

        <table>
            
                        Please enter the user's information:
                    
                <tr>
                    <td style="text-align: right" class="auto-style2">
                        Username:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                        <asp:TextBox ID="usernameTextBox" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style2">
                        ID of Item Won:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                        <asp:TextBox ID="itemIDTextBox" runat="server" />
                    </td>
                </tr>
            <tr>
                    <td style="text-align: right" class="auto-style2">
                       Mobile Number:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                        <asp:TextBox ID="mobileNumberTextBox" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="auto-style2">
                        Carrier:
                    </td>
                    <td style="text-align: right; vertical-align: top">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="155px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Verizon</asp:ListItem>
                            <asp:ListItem>US Cellular</asp:ListItem>
                             <asp:ListItem>Virgin Mobile</asp:ListItem>
                            <asp:ListItem>Boost Mobile</asp:ListItem>
                            <asp:ListItem>T-Mobile</asp:ListItem>
                            <asp:ListItem>Sprint</asp:ListItem>
                             <asp:ListItem>AT&T</asp:ListItem>
                             <asp:ListItem>Suncom</asp:ListItem>
                            <asp:ListItem>Powertel</asp:ListItem>
                            <asp:ListItem>Alltel</asp:ListItem>
                             <asp:ListItem>Metro PCS</asp:ListItem>
                            <asp:ListItem>Nextel</asp:ListItem>
                            <asp:ListItem>Cingular</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
           
            <tr>
                    <td style="text-align: right" class="auto-style2">
                       
                    </td>
                    <td style="text-align: right; vertical-align: top">
                       <asp:Button ID="Button1" runat="server" Text="Send Message" OnClick="Button1_Click" Height="24px" Width="185px" />
                    </td>
                </tr>         
                            
            </table>
      
       
            <asp:Label ID="errorLabel" runat="server"></asp:Label>
                   
    
    
           
         
    
    </div>
    </form>
</body>
</html>


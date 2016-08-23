<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="FinalProject.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 122px;
        }

        .style2 {
            width: 239px;
        }

        .style3 {
            text-align: left;
            text-decoration: underline;
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table style="width: 100%;">
                <caption class="style3">
                    <h1 style="color: brown"><strong>Update Profile </strong></h1>
                    <br />
                </caption>
                <tr>
                    <td class="style1"></td>
                    <td class="style2"></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="lblfname" runat="server" Text="FirstName:"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtfname" runat="server" Height="22px" MaxLength="20"
                            Width="236px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txtfname" ErrorMessage="Please Enter your First Name"
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>


                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="lbllname" runat="server" Text="LastName:"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtlname" runat="server" Height="22px" MaxLength="10"
                            Width="236px"></asp:TextBox>

                    </td>
                </tr>

                <tr>
                    <td class="style1">
                        <asp:Label ID="lblhome" runat="server" Text="Home Phone no:"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txthome" runat="server" Height="22px" MaxLength="10"
                            Width="236px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="txthome" ErrorMessage="Please Enter your Home Phone no:"
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="lblcell" runat="server" Text="Cell Phone:"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtcell" runat="server" Height="22px" MaxLength="10"
                            Width="236px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtcell" ValidationExpression="^(\+\d{1,3}[- ]?)?\d{10}$" ErrorMessage="Invalid cel phone number<br>Please enter 10 digits" ForeColor="Red"></asp:RegularExpressionValidator>

                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ControlToValidate="txtcell" ErrorMessage="Please Enter your Cell Phone no:"
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtemail" runat="server" Height="22px" MaxLength="30"
                            Width="236px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ControlToValidate="txtemail" ErrorMessage="Please Enter your Email ID"
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Invalid Email Id<br>eg: max@123reg.co.in" ForeColor="red"></asp:RegularExpressionValidator>

                    </td>


                </tr>


                <tr>
                    <td class="style1">
                        <asp:Label ID="lbluname" runat="server" Text="User Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div>
                                    <asp:TextBox ID="txtuname" runat="server" AutoPostBack="True" OnTextChanged="textchanged"></asp:TextBox>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                            ControlToValidate="txtuname" ErrorMessage="Please Enter your User Name"
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>

                </tr>


                <tr>
                    <td class="style1">
                        <asp:Label ID="lblpass" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtpass" runat="server" Height="22px" MaxLength="20"
                            Width="236px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                            ControlToValidate="txtpass" ErrorMessage="Please Enter your Password"
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtpass" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$" ErrorMessage="Invalid password Enter At least one upper case english letter<br>At least one lower case english letter<br>At least one digit<br>At least one special character<br>Minimum 8 in length<br>" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>

                </tr>

                <tr>
                    <td class="style1">
                        <asp:Label ID="lblrepass" runat="server" Text="ConfirmPassword:"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtrepass" runat="server" Height="22px" MaxLength="20"
                            Width="236px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                            ControlToValidate="txtrepass" ErrorMessage="Please Enter ConfirmPassword"
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1"
                            runat="server"
                            ControlToCompare="txtpass"
                            ControlToValidate="txtrepass"
                            ErrorMessage="Your passwords do not match up!"
                            Display="Dynamic" Font-Names="Verdana" ForeColor="#666666" />
                    </td>

                </tr>


                <tr>
                    <td>
                        <asp:Label ID="Lblusertype" runat="server" Text="User Type:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="usertype" runat="server" AutoPostBack="False"
                            DataTextField="user" DataValueField="user" BackColor="#FFCCCC" Height="32px"
                            Style="text-align: center" Width="145px">
                            <asp:ListItem Value="0">-- Select--</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Steering Committee</asp:ListItem>
                            <asp:ListItem>Donor</asp:ListItem>
                            <asp:ListItem>Bidder</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                            ControlToValidate="usertype" ErrorMessage="Please choose usertype"
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblcontact" runat="server" Text="Primary Contact:"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true">
                            <asp:ListItem>Home</asp:ListItem>
                            <asp:ListItem>Cell</asp:ListItem>
                        </asp:RadioButtonList>
                        <%--<asp:RadioButton ID="home" runat="server" Text="Home Phone" />
                        <asp:RadioButton ID="cell" runat="server" Text="Cell Phone" />--%>
                    </td>
                    <%--<asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="please choose" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>--%>

                </tr>

                <tr>
                    <td class="style1">
                        <asp:Label ID="lbladd" runat="server" Text="Address:"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtadd" runat="server" Height="22px" MaxLength="15"
                            Width="236px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                            ControlToValidate="txtadd" ErrorMessage="Please enter your Address"
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td class="style1"></td>
                    <td class="style2"></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="style1"></td>
                    <td class="style2">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/register.jpg" Width="224px" OnClick="ImageButton1_Click" />

                    </td>
                    <td></td>
                </tr>
            </table>

        </div>
        <asp:Literal ID="results" runat="server"></asp:Literal>
    </form>
</body>
</html>


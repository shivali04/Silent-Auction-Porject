<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="FinalProject.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Login Page"></asp:Label><br />
            <br />
            Username: &nbsp &nbsp
        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
            Password: &nbsp &nbsp
        <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
            <asp:Button ID="SignInButton" runat="server" Text="Sign In" OnClick="Button1_Click" />


            <br />
            <br />
            <asp:CheckBox ID="RememberCheckBox" runat="server" Text="Remember me for 30 days" />
             <br />
            <asp:LinkButton ID="forgotUsernamePassword" runat="server" OnClick="LinkButton1_Click">Forgot password?</asp:LinkButton>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
            

        </div>
    </form>
</body>
</html>

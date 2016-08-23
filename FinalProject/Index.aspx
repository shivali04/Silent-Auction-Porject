<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FinalProject.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  <h2>  Welcome to Silent Auction </h2>
        <asp:Label ID="welcome" runat="server" Text=""></asp:Label><br /> <br />
        <a href="Update.aspx">Update Profile</a>  <br /> <br />
        <a href="EnterAuctionItem.aspx">Enter Auction Items</a>   <br /> <br />
         <a href="PrintBidSheet.aspx">Print Bid Sheet</a> <br /> <br />
         <a href="TextorCallSuccessfulBidder.aspx">Text Successful Bidders</a>
    </div>
    </form>
</body>
</html>

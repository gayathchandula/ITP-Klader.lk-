<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerView.aspx.cs" Inherits="ITPCrud.CustomerView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" runat="server"  href="Styles/View_customer.css" />
    <title>Promotions</title>
    
     
</head>
<body>
    <header >
    <nav class="header">
        <a class="Brand">Klader.lk</a>
     
        </nav> 
        
        
    <nav class="home"><a >Home</a></nav> 
    <nav class="store"><a >Store</a></nav>
    <nav class="contact"><a >Contact</a></nav> 
    <nav class="promo" ><a href="CustomerView.aspx" >Promotions</a></nav>
    <nav class="cart_pic"><a href="cart.aspx" class="cart_img"><img src="Images/cart.svg"/></a></nav>
    <nav class="acc_pic"><a href="login.aspx" class="acc_img"><img src="Images/acc.svg"></a></nav>
         
    
        </header>
    <br/>
    <br/>
    <br/>
    <div class="picture">
    <img src="Images/unnamed.jpg"/></div>
    <form id="form1" runat="server">
        <div class="details">
            <table>
                <tr>
            <td><asp:Label ID="Label1" runat="server" Font-Bold="true">Promotion name:</asp:Label></td>
            <td><asp:Label ID="Name" runat="server"/></td>
                </tr>
                <tr>
            <td><asp:Label ID="Label2" runat="server" Font-Bold="true">Discount(%):</asp:Label></td>
            <td><asp:Label ID="Amount" runat="server">%</asp:Label></td>
                    </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Font-Bold="true">Coupen Code:</asp:Label></td>
            <td><asp:Label ID="Code" runat="server"/><td>
                    </tr>
            </table>
        </div>
        
    </form>
    
</body>
</html>

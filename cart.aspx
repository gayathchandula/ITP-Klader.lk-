<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="ITPCrud.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" runat="server"  href="Styles/View_customer.css" />
    <title>Cart</title>
    
    <style type="text/css">
        .button {}
    </style>
    
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
    <form id="form1" runat="server">
        <div class="cart_box">
            <asp:Label ID="qty" runat="server" CssClass="qty">2</asp:Label><br/> 
            <asp:Label ID="price" runat="server" CssClass="price" Text="1500"></asp:Label>
            <asp:Label ID="Item_name" runat="server" CssClass="name">Gent's shirt</asp:Label>
            <br />
            <br/>
            <asp:Label ID="Label2" runat="server" Text="Label" CssClass="disa">Discount:</asp:Label>
            <asp:Label ID="Label3" runat="server" Text="" CssClass="dis"></asp:Label>
            <asp:Label ID="net" runat="server" CssClass="neta" >Net Price:</asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="net"></asp:Label>
            
            
            </div>
           <div class="checkout"><asp:Button ID="Button3" runat="server" Text="Check out" CssClass="submit button" alignment="center" BorderStyle="None" BackColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Nexa" Height="41px" Width="111px" /></div><br/>
            
            <br/>
            <div class="code_box">
            
            <asp:Label ID="Code" runat="server">Enter Coupen code</asp:Label>
            <asp:TextBox ID="Coupen" runat="server" CssClass="submit_box" BorderStyle="None"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" CssClass="submit_btn" Text="Enter"  OnClick="Button2_Click" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Large" Font-Names="Nexa" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="Coupen"></asp:RequiredFieldValidator>
                <br/>
                <br/>
            <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>
        </div>
        
            
    </form>
</body>
</html>

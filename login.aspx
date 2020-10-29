<% @ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ITPCrud.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="user" runat="server">Login name</asp:Label><br/>
            <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="235px"></asp:TextBox><br/>
            <asp:Label ID="Label1" runat="server">Password</asp:Label><br/>
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="235px"></asp:TextBox>    
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
        
    </form>
</body>
</html>

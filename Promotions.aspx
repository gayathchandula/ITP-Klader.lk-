<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Promotions.aspx.cs" Inherits="ITPCrud.Promotions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" runat="server"  href="Styles/promotions.css" />
    <title>Promotion Manage</title>
    
</head>
<body >
    <div class="body" >
    <h1>Promotion Management</h1>
    <form id="form1" runat="server"  >
        <div style="position: absolute; z-index: auto; background-color: #CCCCFF">
            <asp:HiddenField ID="hfCode_ID" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
                        
                        

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Amount"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                        
                        
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Code"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Report" />
                        
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"  />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                        <asp:Button ID="Button1" runat="server"  Text="Login" OnClick="Button1_Click" ></asp:Button>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <br/>
            <asp:GridView ID="gvPromotions" runat="server" AutoGenerateColumns="false" BorderColor="#0033CC" BorderStyle="Solid">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-BackColor="#0066FF" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount percentage" HeaderStyle-BackColor="#0066FF"/>
                    <asp:BoundField DataField="Code" HeaderText="PromoCode" HeaderStyle-BackColor="#0066FF"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%#Eval("Code_ID") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
        </div>
</body>
</html>

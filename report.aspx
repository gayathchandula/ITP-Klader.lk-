<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="ITPCrud.report" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Usage report</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Promotion Code Usage Report" BorderColor="Black" Font-Bold="true"></asp:Label>
        <asp:GridView ID="reportview" runat="server" AutoGenerateColumns="false" BorderColor="#0033CC" BorderStyle="Solid" Height="76px" Width="541px">
                <Columns>
                    <asp:BoundField DataField="Code" HeaderText="Code" HeaderStyle-BackColor="#0066FF" />
                    <asp:BoundField DataField="usage" HeaderText="Usage" HeaderStyle-BackColor="#0066FF"/>
                    
                
                </Columns>
            </asp:GridView>
        <br />
    </form>
</body>
</html>

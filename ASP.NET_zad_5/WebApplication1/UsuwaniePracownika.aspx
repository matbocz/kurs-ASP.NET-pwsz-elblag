<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuwaniePracownika.aspx.cs" Inherits="WebApplication1.UsuwaniePracownika" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Projekty\kurs-ASP.NET-pwsz-elblag\ASP.NET_zad_5\WebApplication1\Instytut.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM PRACOWNICY WHERE ID_PRAC=@id" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM PRACOWNICY ORDER BY ID_PRAC">
                <DeleteParameters>
                    <asp:FormParameter FormField="idPracownikaTextBox" Name="id" />
                </DeleteParameters>
            </asp:SqlDataSource>
            <br />
            Usuń dane pracownika o identyfikatorze:
            <asp:TextBox ID="idPracownikaTextBox" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="usunButton" runat="server" OnClick="usunButton_Click" Text="Usuń" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Powrót</asp:HyperLink>
        </div>
    </form>
</body>
</html>

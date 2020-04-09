<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DodawaniePracownika.aspx.cs" Inherits="WebApplication1.DodawaniePracownika" %>

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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Projekty\kurs-ASP.NET-pwsz-elblag\ASP.NET_zad_5\WebApplication1\Instytut.mdf;Integrated Security=True;Connect Timeout=30" InsertCommand="INSERT INTO Pracownicy(NAZWISKO, ETAT, ID_SZEFA, ZATRUDNIONY, PLACA_POD, PLACA_DOD, ID_ZESP) VALUES (@na, @et, @id_sz, @za, @pl_pod, @pl_dod, @id_z)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT TOP 10 ID_PRAC, NAZWISKO, ETAT, ID_SZEFA, ZATRUDNIONY, PLACA_POD, PLACA_DOD, ID_ZESP FROM PRACOWNICY ORDER BY ID_PRAC DESC">
                <InsertParameters>
                    <asp:FormParameter DefaultValue="" FormField="nazwiskoTextBox" Name="na" />
                    <asp:FormParameter DefaultValue="" FormField="etatDropDownList" Name="et" />
                    <asp:FormParameter DefaultValue="" FormField="idSzefaTextBox" Name="id_sz" />
                    <asp:FormParameter DefaultValue="" FormField="dataTextBox" Name="za" />
                    <asp:FormParameter DefaultValue="" FormField="podstawowaTextBox" Name="pl_pod" />
                    <asp:FormParameter DefaultValue="" FormField="dodatkowaTextBox" Name="pl_dod" />
                    <asp:FormParameter DefaultValue="" FormField="idZespoluTextBox" Name="id_z" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            Wprowadź dane: <br />
            Nazwisko: <asp:TextBox ID="nazwiskoTextBox" runat="server"></asp:TextBox>
            <br />
            Etat:
            <asp:DropDownList ID="etatDropDownList" runat="server" DataSourceID="ListaNazwEtatow" DataTextField="ETAT" DataValueField="ETAT">
            </asp:DropDownList>
            <asp:SqlDataSource ID="ListaNazwEtatow" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Projekty\kurs-ASP.NET-pwsz-elblag\ASP.NET_zad_5\WebApplication1\Instytut.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [ETAT] FROM [PRACOWNICY]"></asp:SqlDataSource>
            <br />
            Identyfikator szefa:
            <asp:TextBox ID="idSzefaTextBox" runat="server"></asp:TextBox>
            <br />
            Data zatrudnienia:
            <asp:TextBox ID="dataTextBox" runat="server"></asp:TextBox>
            <br />
            Płaca podstawowa:
            <asp:TextBox ID="podstawowaTextBox" runat="server"></asp:TextBox>
            <br />
            Płaca dodatkowa:
            <asp:TextBox ID="dodatkowaTextBox" runat="server"></asp:TextBox>
            <br />
            Identyfikator zespołu:
            <asp:TextBox ID="idZespoluTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="dodajButton" runat="server" OnClick="dodajButton_Click" Text="Dodaj" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Powrót</asp:HyperLink>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Witaj świecie!<br />
            Dzisiaj jest:
            <asp:Label ID="dzisiajLabel" runat="server"></asp:Label>
            <br />
            <br />
            Podaj swoje imię:
            <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="wyswietlButton" runat="server" OnClick="wyswietlButton_Click" Text="Wyświetl" />
            <br />
            <asp:Label ID="imieLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>

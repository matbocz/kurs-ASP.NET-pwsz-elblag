<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zadanie1.aspx.cs" Inherits="WebApplication1.Zadanie1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Wysokość:
            <asp:TextBox ID="wysokoscTextBox" runat="server"></asp:TextBox>
            <br />
            Promień podstawy:
            <asp:TextBox ID="promienTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="obliczButton" runat="server" OnClick="obliczButton_Click" Text="Oblicz" />
            <br />
            <br />
            <asp:Label ID="wynikLabel" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>

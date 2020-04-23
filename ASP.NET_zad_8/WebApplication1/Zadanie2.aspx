<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zadanie2.aspx.cs" Inherits="WebApplication1.Zadanie2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="wyborDropDownList" runat="server" OnSelectedIndexChanged="wyborDropDownList_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="s" Selected="True">Stożek</asp:ListItem>
                <asp:ListItem Value="k">Kula</asp:ListItem>
                <asp:ListItem Value="w">Walec</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="wysokoscLabel" runat="server" Text="Wysokość:"></asp:Label>
            &nbsp;<asp:TextBox ID="wysokoscTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="promienLabel" runat="server" Text="Promień podstawy:"></asp:Label>
            &nbsp;<asp:TextBox ID="promienTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="tworzacaLabel" runat="server" Text="Tworząca stożka:"></asp:Label>
            &nbsp;<asp:TextBox ID="tworzacaTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="obliczButton" runat="server" OnClick="obliczButton_Click" Text="Oblicz" />
            <br />
            <br />
            <asp:Image ID="figuraImage" runat="server" ImageUrl="~/stozek.png" />
            <br />
            <br />
            <asp:Label ID="objetoscLabel" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="poleLabel" runat="server" ForeColor="#009933" Text="Label" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>

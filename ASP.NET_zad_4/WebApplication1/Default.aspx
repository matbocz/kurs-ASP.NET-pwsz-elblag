<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Etat:
            <asp:DropDownList ID="etatDropDownList" runat="server" DataSourceID="ListaNazwEtatow" DataTextField="ETAT" DataValueField="ETAT">
                <asp:ListItem Selected="True">Dyrektor</asp:ListItem>
                <asp:ListItem>Profesor</asp:ListItem>
                <asp:ListItem>Adiunkt</asp:ListItem>
                <asp:ListItem>Asystent</asp:ListItem>
                <asp:ListItem>Stazysta</asp:ListItem>
                <asp:ListItem>Sekretarka</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="ListaNazwEtatow" runat="server" ConnectionString="<%$ ConnectionStrings:InstytutConnectionString1 %>" SelectCommand="SELECT DISTINCT [ETAT] FROM [PRACOWNICY]"></asp:SqlDataSource>
            <br />
            Płaca od:
            <asp:TextBox ID="dolnyTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dolnyTextBox" Display="Dynamic" ErrorMessage="Pole wymagane!"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="dolnyTextBox" Display="Dynamic" ErrorMessage="Wartość musi być liczbą całkowitą z zakresu od 0 do 9999!" MaximumValue="9999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br />
            Płaca do:
            <asp:TextBox ID="gornyTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="gornyTextBox" Display="Dynamic" ErrorMessage="Pole wymagane!"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="gornyTextBox" Display="Dynamic" ErrorMessage="Wartość musi być liczbą całkowitą z zakresu od 0 do 9999!" MaximumValue="9999" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br />
            <br />
            <asp:Button ID="szukajButton" runat="server" OnClick="szukajButton_Click" Text="Szukaj" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="dolnyTextBox" ControlToValidate="gornyTextBox" Display="Dynamic" ErrorMessage="Dolny próg nie może być wyższy niż górny!" Operator="GreaterThanEqual" Type="Integer"></asp:CompareValidator>
        </div>
    </form>
</body>
</html>

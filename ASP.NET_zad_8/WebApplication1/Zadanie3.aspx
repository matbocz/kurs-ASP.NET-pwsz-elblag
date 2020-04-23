<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zadanie3.aspx.cs" Inherits="WebApplication1.Zadanie3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Imie:
            <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="imieTextBox" ErrorMessage="Błędne imie!" ValidationExpression="[A-Z]{1}[a-z]{2,}"></asp:RegularExpressionValidator>
            <br />
            Nazwisko:
            <asp:TextBox ID="nazwiskoTextBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="nazwiskoTextBox" ErrorMessage="Błędne nazwisko!" ValidationExpression="[A-Z]{1}[a-z]{2,}"></asp:RegularExpressionValidator>
            <br />
            Email: <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Błędny adres email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="wyslijButton" runat="server" Text="Wyślij" />
        </div>
    </form>
</body>
</html>

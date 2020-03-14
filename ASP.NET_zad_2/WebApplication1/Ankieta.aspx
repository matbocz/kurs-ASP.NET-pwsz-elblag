<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ankieta.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="mainMultiView" runat="server">
                <asp:View ID="ankietaGlowna" runat="server">
                    Imię:<br />
                    <asp:TextBox ID="imieTextBox" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Płeć:<br />
                    <asp:DropDownList ID="plecDropDownList" runat="server">
                        <asp:ListItem Value="K">Kobieta</asp:ListItem>
                        <asp:ListItem Value="M">Mężczyzna</asp:ListItem>
                        <asp:ListItem Selected="True" Value="N">Nie podaje</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    Email:<br />
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Telefon:<br />
                    <asp:TextBox ID="telTextBox" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Ulica:<br />
                    <asp:TextBox ID="ulicaTextBox" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Numer domu:<br />
                    <asp:TextBox ID="domTextBox" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Numer mieszkania:<br />
                    <asp:TextBox ID="mieszTextBox" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Kod pocztowy:<br />
                    <asp:TextBox ID="kodTextBox" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Miejscowość:<br />
                    <asp:TextBox ID="miejscTextBox" runat="server"></asp:TextBox>
                    <br />
                    <asp:MultiView ID="ankietaMultiView" runat="server">
                        <asp:View ID="nowyView" runat="server">
                            Wzrost:<br />
                            <asp:TextBox ID="wzrostTextBox" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            Rama roweru:<br />
                            <asp:DropDownList ID="ramaDropDownList" runat="server">
                                <asp:ListItem Value="D">Damska</asp:ListItem>
                                <asp:ListItem Value="M">Męska</asp:ListItem>
                                <asp:ListItem Selected="True" Value="N">Nie ma znaczenia</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            Marka:<br />
                            <asp:ListBox ID="markaListBox" runat="server">
                                <asp:ListItem Value="C">Cateye</asp:ListItem>
                                <asp:ListItem Value="G">Giant</asp:ListItem>
                                <asp:ListItem Value="K">Kenda</asp:ListItem>
                                <asp:ListItem Value="Kr">Kross</asp:ListItem>
                                <asp:ListItem Selected="True" Value="N">Nie ma znaczenia</asp:ListItem>
                            </asp:ListBox>
                            <br />
                            <br />
                            Rodzaj roweru:<br />
                            <asp:ListBox ID="rodzajListBox" runat="server">
                                <asp:ListItem Value="G">Górski</asp:ListItem>
                                <asp:ListItem Value="M">Miejski</asp:ListItem>
                                <asp:ListItem Value="S">Szosowy</asp:ListItem>
                                <asp:ListItem Value="B">BMX</asp:ListItem>
                                <asp:ListItem Value="D">Dziecięcy</asp:ListItem>
                                <asp:ListItem Selected="True" Value="N">Nie wiem</asp:ListItem>
                            </asp:ListBox>
                            <br />
                            <br />
                            Kwota planowanych wydatków:<br />
                            <asp:RadioButtonList ID="cenaRadioButtonList" runat="server">
                                <asp:ListItem Selected="True" Value="0">Nie ma znaczenia</asp:ListItem>
                                <asp:ListItem Value="5">do 500 zł</asp:ListItem>
                                <asp:ListItem Value="10">500 - 1000 zł</asp:ListItem>
                                <asp:ListItem Value="15">1000 - 1500 zł</asp:ListItem>
                                <asp:ListItem Value="20">pow. 1500</asp:ListItem>
                                <asp:ListItem Value="1">Zakres</asp:ListItem>
                            </asp:RadioButtonList>
                            od:
                            <asp:TextBox ID="odTextBox" runat="server"></asp:TextBox>
                            &nbsp;do:
                            <asp:TextBox ID="doTextBox" runat="server"></asp:TextBox>
                        </asp:View>
                        <asp:View ID="wycieczkiView" runat="server">
                            Rodzaj posiadanego roweru:<br />
                            <asp:ListBox ID="posiadaListBox" runat="server">
                                <asp:ListItem Value="G">Górski</asp:ListItem>
                                <asp:ListItem Value="M">Miejski</asp:ListItem>
                                <asp:ListItem Value="S">Szosowy</asp:ListItem>
                                <asp:ListItem Value="B">BMX</asp:ListItem>
                                <asp:ListItem Value="D">Dziecięcy</asp:ListItem>
                                <asp:ListItem Selected="True" Value="N">Nie wiem</asp:ListItem>
                            </asp:ListBox>
                            <br />
                            <br />
                            Data ostatniej wycieczki:<br />
                            <asp:Calendar ID="ostatniaCalendar" runat="server"></asp:Calendar>
                            <br />
                            Data następnej wycieczki:<br />
                            <asp:Calendar ID="nastepnaCalendar" runat="server"></asp:Calendar>
                            <br />
                            Ilość kilometrów średnio na jednej wycieczce:<br />
                            <asp:TextBox ID="kmTextBox" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            Poziom umiejętności:<br />
                            <asp:DropDownList ID="poziomDropDownList" runat="server">
                                <asp:ListItem Value="P">Początkujący</asp:ListItem>
                                <asp:ListItem Value="S">Średniozaawansowany</asp:ListItem>
                                <asp:ListItem Value="Z">Zaawansowany</asp:ListItem>
                            </asp:DropDownList>
                        </asp:View>
                    </asp:MultiView>
                    Preferowany rodzaj kontaktu:<br />
                    <asp:CheckBoxList ID="kontaktCheckBoxList" runat="server">
                        <asp:ListItem Value="E">E-Mail</asp:ListItem>
                        <asp:ListItem Value="T">Telefon</asp:ListItem>
                        <asp:ListItem Value="O">Osobisty</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Button ID="wyswietlButton" runat="server" Text="Wyświetl" OnClick="wyswietlButton_Click" />
                </asp:View>
                <asp:View ID="podsumowanie" runat="server">
                    Dziękujemy za wypełnienie ankiety!<br />
                    <a href="Default.aspx">Strona główna</a>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>

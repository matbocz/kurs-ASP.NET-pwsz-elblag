<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pracownicy.aspx.cs" Inherits="WebApplication1.Pracownicy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_PRAC" DataSourceID="SqlDataSource1" EmptyDataText="Brak pracowników spełniających zadane kryteria." PageSize="5">
                <AlternatingRowStyle BackColor="#FFFF80" />
                <Columns>
                    <asp:BoundField DataField="ID_PRAC" HeaderText="Id" ReadOnly="True" SortExpression="ID_PRAC" />
                    <asp:BoundField DataField="NAZWISKO" HeaderText="Nazwisko" SortExpression="NAZWISKO" />
                    <asp:BoundField DataField="ETAT" HeaderText="Etat" SortExpression="ETAT" />
                    <asp:BoundField DataField="PLACA_POD" HeaderText="Płaca" SortExpression="PLACA_POD" />
                </Columns>
                <PagerSettings Mode="NumericFirstLast" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InstytutConnectionString1 %>" DeleteCommand="DELETE FROM [PRACOWNICY] WHERE [ID_PRAC] = @ID_PRAC" InsertCommand="INSERT INTO [PRACOWNICY] ([NAZWISKO], [ETAT], [ID_SZEFA], [ZATRUDNIONY], [PLACA_POD], [PLACA_DOD], [ID_ZESP]) VALUES (@NAZWISKO, @ETAT, @ID_SZEFA, @ZATRUDNIONY, @PLACA_POD, @PLACA_DOD, @ID_ZESP)" ProviderName="<%$ ConnectionStrings:InstytutConnectionString1.ProviderName %>" SelectCommand="SELECT [ID_PRAC], [NAZWISKO], [ETAT], [ID_SZEFA], [ZATRUDNIONY], [PLACA_POD], [PLACA_DOD], [ID_ZESP] FROM [PRACOWNICY] WHERE  ETAT = @p_etat  AND  PLACA_POD  BETWEEN @p_dolny AND @p_gorny" UpdateCommand="UPDATE [PRACOWNICY] SET [NAZWISKO] = @NAZWISKO, [ETAT] = @ETAT, [ID_SZEFA] = @ID_SZEFA, [ZATRUDNIONY] = @ZATRUDNIONY, [PLACA_POD] = @PLACA_POD, [PLACA_DOD] = @PLACA_DOD, [ID_ZESP] = @ID_ZESP WHERE [ID_PRAC] = @ID_PRAC">
                <DeleteParameters>
                    <asp:Parameter Name="ID_PRAC" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NAZWISKO" Type="String" />
                    <asp:Parameter Name="ETAT" Type="String" />
                    <asp:Parameter Name="ID_SZEFA" Type="Int32" />
                    <asp:Parameter Name="ZATRUDNIONY" Type="DateTime" />
                    <asp:Parameter Name="PLACA_POD" Type="Decimal" />
                    <asp:Parameter Name="PLACA_DOD" Type="Decimal" />
                    <asp:Parameter Name="ID_ZESP" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="p_etat" QueryStringField="p_etat" />
                    <asp:QueryStringParameter Name="p_dolny" QueryStringField="p_dolny" />
                    <asp:QueryStringParameter Name="p_gorny" QueryStringField="p_gorny" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NAZWISKO" Type="String" />
                    <asp:Parameter Name="ETAT" Type="String" />
                    <asp:Parameter Name="ID_SZEFA" Type="Int32" />
                    <asp:Parameter Name="ZATRUDNIONY" Type="DateTime" />
                    <asp:Parameter Name="PLACA_POD" Type="Decimal" />
                    <asp:Parameter Name="PLACA_DOD" Type="Decimal" />
                    <asp:Parameter Name="ID_ZESP" Type="Int32" />
                    <asp:Parameter Name="ID_PRAC" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Powrót</asp:HyperLink>
        </div>
    </form>
</body>
</html>

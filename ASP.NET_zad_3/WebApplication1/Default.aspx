<%@ Page Title="Strona główna" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <a href="Ankieta.aspx?view=nowy">Ankieta dla nowych klientów</a>
        <br />
        <a href="Ankieta.aspx?view=wycieczki">Ankieta dla osób posiadających rower</a>
    </div>
</asp:Content>

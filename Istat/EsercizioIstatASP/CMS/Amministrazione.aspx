<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Amministrazione.aspx.cs" Inherits="Amministrazione" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>Amministrazione</div>
    <div>
        <asp:HyperLink ID="lnkRipartizioni" runat="server" NavigateUrl="~/CMS/ElencoRipartizioni.aspx">Gestione ripartizioni</asp:HyperLink>
    </div>

    <div>
        <asp:HyperLink ID="lnkRegioni" runat="server" NavigateUrl="~/CMS/NuovaRegione.aspx">Nuova Regione</asp:HyperLink>
    </div>
</asp:Content>


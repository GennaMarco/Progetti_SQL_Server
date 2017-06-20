<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NuovoCD.aspx.cs" Inherits="NuovoCD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div>Nuovo CD</div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Titolo"></asp:Label>
            <asp:TextBox ID="txtTitolo" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Artista"></asp:Label>
            <asp:TextBox ID="txtArtista" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Casa Discografica"></asp:Label>
            <asp:TextBox ID="txtCasaDiscografica" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnInvia" runat="server" Text="Invia" OnClick="btnInvia_Click" />
            <br /> <br />
            <asp:Label ID="lblRisultato" runat="server" Text="" ForeColor="#00CC00"></asp:Label>
        </div>
</asp:Content>


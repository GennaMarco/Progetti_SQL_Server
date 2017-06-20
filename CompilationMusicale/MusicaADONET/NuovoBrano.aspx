<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NuovoBrano.aspx.cs" Inherits="NuovoBrano" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>Nuovo Brano</div>
        <div>
            <asp:Label ID="lblTitolo" runat="server" Text="Titolo"></asp:Label>
            <asp:TextBox ID="txtTitolo" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblCompilation" runat="server" Text="Compilation"></asp:Label>
            <asp:DropDownList ID="ddlCompilation" runat="server"></asp:DropDownList>
            <br />
            <asp:Label ID="lblDurata" runat="server" Text="Durata"></asp:Label>
            <asp:TextBox ID="txtDurata" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnInvia" runat="server" Text="Invia" OnClick="btnInvia_Click" />
            <br /> <br />
            <asp:Label ID="lblRisultato" runat="server" Text="" ForeColor="#00CC00"></asp:Label>
        </div>
</asp:Content>


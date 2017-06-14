<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contatti.aspx.cs" Inherits="Contatti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNominativo" runat="server" Text="Nominativo"></asp:Label>
            <asp:TextBox ID="txtNominativo" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblOggetto" runat="server" Text="Oggetto"></asp:Label>
            <asp:TextBox ID="txtOggetto" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Messaggio" runat="server" Text="Messaggio"></asp:Label>
            <asp:TextBox ID="txtMessaggio" runat="server" TextMode="MultiLine" Height="150px" Width="250px"></asp:TextBox>
            <br />
            <asp:Button ID="btnInvia" runat="server" Text="Invia" OnClick="btnInvia_Click" />
            <asp:Button ID="btnCancella" runat="server" Text="Cancella" />
        </div>
        <div style="margin-top: 50px" >
            <asp:Label ID="lblRisultato" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
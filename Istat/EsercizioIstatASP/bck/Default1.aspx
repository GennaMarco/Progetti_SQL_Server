<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Esercizio Istat</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <% /* ASP.net c# */ %>
        Benvenuto nella mia prima applicazione ASP.NET
    </div>
    <div>
        <asp:Label ID="lblTesto" Text="Testo" runat="server" />
        <asp:TextBox ID="txtTesto" runat="server" />
        <asp:Button ID="btnInvia" Text="Invia" runat="server" OnClick="btnInvia_Click" />
        <br />
        <br />
        <asp:Label ID="lblRisultato" Text="" runat="server" />
    </div>
    <div>
        Link
        <br />
        <asp:HyperLink ID="lnkContatti" NavigateUrl="~/Contatti.aspx" runat="server" />Contatti
    </div>
    </form>
</body>
</html>
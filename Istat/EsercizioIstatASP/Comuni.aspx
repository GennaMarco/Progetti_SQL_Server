<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Comuni.aspx.cs" Inherits="Comuni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>Comuni</div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sdsComuni" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Ripartizione" HeaderText="Ripartizione" SortExpression="Ripartizione" />
            <asp:BoundField DataField="Regione" HeaderText="Regione" SortExpression="Regione" />
            <asp:BoundField DataField="Provincia" HeaderText="Provincia" SortExpression="Provincia" />
            <asp:BoundField DataField="Comune" HeaderText="Comune" SortExpression="Comune" />
            <asp:BoundField DataField="Popolazione" HeaderText="Popolazione" SortExpression="Popolazione" />
            <asp:CheckBoxField DataField="Capoluogo" HeaderText="Capoluogo" SortExpression="Capoluogo" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <asp:SqlDataSource ID="sdsComuni" runat="server" ConnectionString="<%$ ConnectionStrings:IstatConnectionString %>" SelectCommand="sp_get_comuni" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

</asp:Content>


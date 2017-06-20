<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Regioni.aspx.cs" Inherits="Regioni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>Regioni</div>
    <div>
        Cerca per ripartizione geografica 
        <asp:DropDownList ID="ddlRipartizioni" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="sdsRipartizioni" DataTextField="Denominazione" DataValueField="Id">
            <asp:ListItem Selected="True" Value="0">Tutti</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="sdsRipartizioni" runat="server" ConnectionString="<%$ ConnectionStrings:IstatConnectionString %>" SelectCommand="sp_get_ripartizioni_geografiche" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>

    <div>
        <asp:gridview runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sdsRegione" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" DataKeyNames="IdRegione">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Ripartizione" HeaderText="Ripartizione" SortExpression="Ripartizione" />
                <asp:BoundField DataField="IdRegione" HeaderText="IdRegione" SortExpression="IdRegione" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Regione" HeaderText="Regione" SortExpression="Regione" />
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
        </asp:gridview>
    </div>
    <asp:SqlDataSource ID="sdsRegione" runat="server" ConnectionString="<%$ ConnectionStrings:IstatConnectionString %>" SelectCommand="sp_get_regioni_per_idripartizione" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlRipartizioni" Name="idripartizione" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    
    
</asp:Content>


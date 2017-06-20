<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Province.aspx.cs" Inherits="Province" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>Province</div>
    <div>
        Cerca per ripartizione geografica 
        <asp:DropDownList ID="ddlRipartizioni" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="sdsRipartizioni" DataTextField="Denominazione" DataValueField="Id" OnSelectedIndexChanged="ddlRipartizioni_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="0">Tutti</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="sdsRipartizioni" runat="server" ConnectionString="<%$ ConnectionStrings:IstatConnectionString %>" SelectCommand="sp_get_ripartizioni_geografiche" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>

    <div>
        Cerca per regione
        <asp:DropDownList ID="ddlRegioni" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="sdsRegioni" DataTextField="Regione" DataValueField="IdRegione">
            <asp:ListItem Selected="True" Value="0">Tutti</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="sdsRegioni" runat="server" ConnectionString="<%$ ConnectionStrings:IstatConnectionString %>" SelectCommand="sp_get_regioni_per_idripartizione" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlRipartizioni" Name="idripartizione" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div> 
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sdsProvince" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Ripartizione" HeaderText="Ripartizione" SortExpression="Ripartizione" />
                <asp:BoundField DataField="Regione" HeaderText="Regione" SortExpression="Regione" />
                <asp:BoundField DataField="Provincia" HeaderText="Provincia" SortExpression="Provincia" />
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
        <asp:SqlDataSource ID="sdsProvince" runat="server" ConnectionString="<%$ ConnectionStrings:IstatConnectionString %>" SelectCommand="sp_get_province_per_idregione" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlRipartizioni" Name="idripartizione" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="ddlRegioni" Name="idregione" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    
    </asp:Content> 


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NuovaRegione.aspx.cs" Inherits="CMS_NuovaRegione" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DetailsView ID="dvRegioni" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="sdsRegione" DefaultMode="Insert" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:TemplateField HeaderText="IdRipartizioneGeografica" SortExpression="IdRipartizioneGeografica">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IdRipartizioneGeografica") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlRipartizioni" runat="server" DataSourceID="sdsRipartizioni" DataTextField="Denominazione" DataValueField="Id" SelectedValue='<%# Bind("IdRipartizioneGeografica", "{0}") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sdsRipartizioni" runat="server" ConnectionString="<%$ ConnectionStrings:IstatConnectionString %>" SelectCommand="sp_get_ripartizioni_geografiche" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("IdRipartizioneGeografica") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Denominazione" HeaderText="Denominazione" SortExpression="Denominazione" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>

    <asp:SqlDataSource ID="sdsRegione" runat="server" ConnectionString="<%$ ConnectionStrings:IstatConnectionString %>" InsertCommand="sp_add_regione" InsertCommandType="StoredProcedure" SelectCommand="sp_getall_regioni" SelectCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="IdRipartizioneGeografica" Type="Int32" />
            <asp:Parameter Name="Denominazione" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModificaRipartizione.aspx.cs" Inherits="ModificaRipartizione" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div>
            Modifica ripartizione
        </div>
    <div>
        <asp:DetailsView ID="dvNew" runat="server" Height="119px" Width="227px" AutoGenerateRows="False" Caption="Modifica Ripartizione Geografica" CaptionAlign="Top" DataKeyNames="Id" DataSourceID="sdsNuovaRipartizione" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" OnItemUpdated="dvNew_ItemUpdated">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Denominazione" HeaderText="Denominazione" SortExpression="Denominazione" />
                <asp:CommandField ShowEditButton="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </div>

        <asp:SqlDataSource ID="sdsNuovaRipartizione" runat="server" ConnectionString="<%$ ConnectionStrings:IstatConnectionString %>" InsertCommand="sp_add_ripartizione" InsertCommandType="StoredProcedure" SelectCommand="sp_ripartizione_by_id" SelectCommandType="StoredProcedure" UpdateCommand="sp_update_ripartizione" UpdateCommandType="StoredProcedure">
            <InsertParameters>
                <asp:Parameter Name="denominazione" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="denominazione" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <div style="text-align: center; width: 100%;">
            <asp:Label ID="lblRisultato" runat="server" Text="" ForeColor="Green"></asp:Label>
        </div>



</asp:Content>


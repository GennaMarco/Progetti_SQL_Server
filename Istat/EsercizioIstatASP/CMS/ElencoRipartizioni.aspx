<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ElencoRipartizioni.aspx.cs" Inherits="ElencoRipartizioni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>Gestione ripartizioni</div>
    <div style="margin-bottom: 20px;">
        <a href="NuovaRipartizione.aspx">NuovaRipartizione.aspx</a>
    </div>
    <div>
        <asp:GridView ID="gvView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsRipartizioni">
            <Columns>
                <asp:BoundField DataField="Denominazione" HeaderText="Denominazione" SortExpression="Denominazione" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Aggiorna"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Modifica"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Elimina" OnClientClick="return confirm('Sicuro di voler eliminare i dati selezionati?')"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
               
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="ModificaRipartizione.aspx?id={0}" Text="Dettaglio" />
               
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="sdsRipartizioni" runat="server" ConnectionString="<%$ ConnectionStrings:IstatConnectionString %>" DeleteCommand="sp_delete_ripartizione" DeleteCommandType="StoredProcedure" SelectCommand="sp_get_ripartizioni_geografiche" SelectCommandType="StoredProcedure" UpdateCommand="sp_update_ripartizione" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="denominazione" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>


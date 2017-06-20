<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NuovaRipartizione.aspx.cs" Inherits="NuovaRipartizione" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div>
            Nuova ripartizione
        </div>
    <div>
        <asp:DetailsView ID="dvNew" runat="server" Height="119px" Width="227px" AutoGenerateRows="False" Caption="Nuova Ripartizione Geografica" CaptionAlign="Top" DataKeyNames="Id" DataSourceID="sdsNuovaRipartizione" DefaultMode="Insert" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" OnItemInserted="dvNew_ItemInserted">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Denominazione" HeaderText="Denominazione" SortExpression="Denominazione" />
                <asp:TemplateField ShowHeader="False">
                    <InsertItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserisci"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="Nuovo"></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </div>

    <div>
        <asp:SqlDataSource ID="sdsNuovaRipartizione" runat="server" ConnectionString="<%$ ConnectionStrings:IstatConnectionString %>" InsertCommand="sp_add_ripartizione" InsertCommandType="StoredProcedure" SelectCommand="sp_ripartizione_by_id" SelectCommandType="StoredProcedure">
            <InsertParameters>
                <asp:Parameter Name="denominazione" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="dvNew" Name="id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <div style="text-align: center; width: 100%;">
            <asp:Label ID="lblRisultato" runat="server" Text="" ForeColor="Green"></asp:Label>
        </div>
    </div>
</asp:Content>


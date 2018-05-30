<%@ Page Title="Liste de Formations" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Liste_formation.aspx.cs" Inherits="Formation_Pro.Liste_formation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Liste des formations</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="sds_liste_formation" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="nom_formation" DataField="nom_formation" SortExpression="nom_formation" />
            <asp:BoundField HeaderText="Id_categorie" DataField="Id_categorie" SortExpression="Id_categorie" />
            <asp:BoundField HeaderText="prerequis" DataField="prerequis" SortExpression="prerequis" />
            <asp:BoundField HeaderText="duree" DataField="duree" SortExpression="duree" />
            <asp:BoundField HeaderText="prix" DataField="prix" SortExpression="prix" />
            <asp:BoundField HeaderText="description" DataField="description" SortExpression="description" />
            <asp:BoundField DataField="fichier" HeaderText="fichier" SortExpression="fichier" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
<asp:SqlDataSource ID="sds_liste_formation" runat="server" ConnectionString="<%$ ConnectionStrings:DB_formationConnectionString %>" SelectCommand="SELECT [nom_formation], [Id_categorie], [prerequis], [duree], [prix], [description], [fichier] FROM [tbl_formation]"></asp:SqlDataSource>
</asp:Content>

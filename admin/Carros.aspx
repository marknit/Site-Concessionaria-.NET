<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="Carros.aspx.cs" Inherits="NewCarMedia.admin.Carros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grdDados" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="300px" Width="1233px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Codigo" />
            <asp:BoundField DataField="modelo" HeaderText="Modelo" />
            <asp:TemplateField HeaderText="Marca">
                <ItemTemplate>
                    <asp:Image ID="imgMarca" runat="server" Height="122px" ImageUrl='<%# Eval("marca", "../marcas/{0}.jpg") %>' Width="122px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ano" HeaderText="Ano" />
            <asp:BoundField DataField="preco" DataFormatString="{0:c}" HeaderText="Preço" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="ExcluirCarro.aspx?id={0}" HeaderText="Apagar" Text="X" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
</asp:Content>

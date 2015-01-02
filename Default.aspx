<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NewCarMedia.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .auto-style1 {
            width: 111%;
        }
        .auto-style4 {
        }
        .auto-style7 {
            text-align: center;
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
   
     <table class="auto-style1">
        <tr>
            <td class="auto-style3" dir="auto" style="background-color: #FF9900">
                <asp:Label ID="lblNomeCarro" runat="server" Width="1214px" Text="-&gt;Carros" style="font-size: medium; font-weight: 700; color: #FFFFFF; font-family: Arial;"></asp:Label>
            </td>
        </tr>
        
    </table>

    <table>
    <p>
        <asp:SqlDataSource ID="dsCarros" runat="server" ConnectionString="<%$ ConnectionStrings:CARMEDIAConnectionString %>" SelectCommand="SELECT * FROM [CARROS] ORDER BY preco" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
    </p>
    <p>
    <center>
        </table>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="dsCarros" RepeatColumns="4">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="pagination-centered">
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" style="color: #33a6ab" Text='<%# Eval("modelo") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                </table>
                <center style="width: 318px; height: 237px">
                    <table align="center" class="auto-style1">
                        <tr>
                            <td class="auto-style4">
                                <asp:Image ID="Image1" runat="server" Height="118px" Width="221px" ImageUrl='<%# Eval("marca", "../img/{0}.jpg") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><strong>Marca: </strong>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("marca") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><strong>Preço: </strong>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("preco","{0:C}") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><strong>Ano: </strong>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("ano") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: justify">
                                <asp:HyperLink ID="HyperLink1" runat="server" button="" class="btn btn-info btn-block " NavigateUrl='<%# Eval("id", "ViewCar.aspx?id={0}") %>'>+ Informações</button></asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                    <br>
                    
                </center>
                
                  
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
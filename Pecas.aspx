<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Pecas.aspx.cs" Inherits="NewCarMedia.Pecas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            
       .auto-style2 {
            width: 1165px;
            font-family: Arial;
            font-weight: bold;
            font-size: medium;
            color: #FFFFFF;
            height: 32px;
        }
        .auto-style3 {
            font-weight: bold;
            font-size: medium;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

     <table>
         <tr>
             <td class="auto-style2" style="background-color: #FF9900">
                 ->Marca:
                 <asp:DropDownList ID="ddl" runat="server" Height="24px" Width="210px" AutoPostBack="True">
                 </asp:DropDownList>
             </td>
         </tr>

    </table>

    <br />

    <p class="auto-style3"  style="background-color: #FF9900; font-family: Arial;">
        -&gt;Peças:
    </p>
         
    <center>   
    <asp:DataList ID="dataPecas" runat="server" RepeatColumns="4">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="pagination-centered"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Label ID="Label1" runat="server" style="color: #33a6ab" Text='<%# Eval("nome") %>'></asp:Label>
                        </strong></td>
                </tr>
            </table>
            <center style="width: 318px; height: 237px">
                <table align="center" class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Image ID="Image1" runat="server" Height="101px" Width="261px" ImageUrl='<%# Eval("marca", "marcas/{0}") %>' />
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
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: justify">
                            <asp:HyperLink ID="HyperLink1" runat="server" button="" class="btn btn-info btn-block " NavigateUrl='<%# Eval("id", "ViewPecas.aspx?id={0}") %>'>+ Informações</button></asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <br>
            </center>
        </ItemTemplate>
    </asp:DataList>
 </asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NewCarMedia.admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 400px;
        }
        .auto-style3 {
            font-family: Arial;
            font-size: small;
            color: #FFFFFF;
            background-color: #FF9900;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    correto<br />
    <br />
    <br />
  
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style3" colspan="2">Painel Administrativo</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLogin" runat="server" Text="Login:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLogin" runat="server" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSenha" runat="server" Text="Senha:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSenha" runat="server" Width="248px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnLogar" runat="server" Text="Logar" />
            </td>
        </tr>
    </table>
</asp:Content>


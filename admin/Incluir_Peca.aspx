<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeBehind="Incluir_Peca.aspx.cs" Inherits="NewCarMedia.admin.Incluir_Peca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 376px;
        }
        .auto-style5 {
            width: 376px;
            text-align: right;
        }
        .auto-style6 {
            color: #FF0000;
            font-weight: 700;
        }
        .auto-style7 {
            width: 376px;
            text-align: right;
            height: 115px;
        }
        .auto-style8 {
            height: 115px;
        }
        .auto-style9 {
            width: 376px;
            text-align: right;
            height: 22px;
        }
        .auto-style10 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td colspan="2" style="text-align: center; background-color: #CCCCCC"><strong>Cadastro de Peças</strong></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: #FF0000; font-weight: 700; font-family: Arial" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Id</td>
            <td>
                <asp:TextBox ID="txtId" runat="server" Width="57px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNome" CssClass="auto-style6" ErrorMessage="*Preencha o Id">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Nome:</td>
            <td>
                <asp:TextBox ID="txtNome" runat="server" Width="378px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" CssClass="auto-style6" ErrorMessage="*Preencha o nome da peça">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Descrição;</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtDescricao" runat="server" Height="90px" TextMode="MultiLine" Width="378px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescricao" CssClass="auto-style6" ErrorMessage="*Preencha a descrição da peça">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Marca:</td>
            <td>
                <asp:TextBox ID="txtMarca" runat="server" Width="378px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMarca" CssClass="auto-style6" ErrorMessage="*Preencha a Marca">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Preço</td>
            <td>
                <asp:TextBox ID="txtPreco" runat="server" Width="378px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPreco" CssClass="auto-style6" ErrorMessage="*Preencha o preço">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Dt_Cadastro</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtData" runat="server" Width="378px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNome" CssClass="auto-style6" ErrorMessage="*Preencha a data atual">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="brnCadastrar" runat="server" OnClick="brnCadastrar_Click" Text="Cadastrar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

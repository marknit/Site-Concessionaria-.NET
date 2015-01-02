<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="ViewCar.aspx.cs" Inherits="NewCarMedia.ViewCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .auto-style1 {
            width: 70%;
        }
        .auto-style2 {
            height: 19px;
        font-weight: bold;
    }
        .auto-style3 {
            font-family: Arial;
            color: #FFFFFF;
        }
        .auto-style5 {
        }
        .auto-style6 {
            font-family: Arial;
            height: 21px;
        color: black;
        font-weight: bold;
    }
        .auto-style7 {
            height: 22px;
        color: black;
        font-weight: bold;
    }
    .auto-style9 {
        color: black;
    }
    .auto-style10 {
        color: black;
        font-weight: 400;
        font-style: italic;
        font-family: Arial;
    }
    .auto-style11 {
        color: black;
        font-weight: 400;
        font-family: Arial;
    }
        .auto-style12 {
            width: 433px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2" dir="auto" style="background-color: #FF9900">
                &nbs&nbs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblNomeCarro" runat="server" Text="lblNomeCarro" style="font-size: medium; font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" rowspan="8"><strong>
                <asp:Image ID="imgFoto" runat="server" Height="267px" Width="434px" />
                </strong>
            </td>
            <td class="auto-style6"><strong>Descrição:rong>>
        </tr>
        <tr>
            <td class="auto-style2"><span class="auto-style10">&nbsp;</span><asp:TextBox ID="txtDescricao" runat="server" Height="95px" TextMode="MultiLine" Width="675px" CssClass="auto-style10" ClientIDMode="AutoID"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>&nbsp;Marca:</strong></td>
        </tr>
        <tr>
            <td>
                <b>
                &nbsp;<asp:Label ID="lblMarca" runat="server" Text="lblMarca" CssClass="auto-style9"></asp:Label>
                </b>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>&nbsp;Ano:</strong></td>
        </tr>
        <tr>
            <td>
                <b>
                &nbsp;<asp:Label ID="lblAno" runat="server" Text="lblAno" CssClass="auto-style9"></asp:Label>
                </b>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>&nbsp;Preço:</strong></td>
        </tr>
        <tr>
            <td>
                <b>
                &nbsp;<asp:Label ID="lblPreco" runat="server" Text="lblPreco" CssClass="auto-style9"></asp:Label>
                </b>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:LinkButton ID="HyperLink1" runat="server" button class="btn btn-success btn-large btn-block " NavigateUrl='<%# Eval("id", "ViewCar.aspx?id={0}") %>' Width="432px">TENHO INTERESSE</button></asp:LinkButton>
            </td>
        </tr>
        
            </table>
</asp:Content>

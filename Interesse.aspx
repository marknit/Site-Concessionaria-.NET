<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Interesse.aspx.cs" Inherits="NewCarMedia.Interesse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            height: 19px;
            font-family: Arial;
            font-size: medium;
            color: white;
            font-weight: bold;
        }
        .auto-style4 {
            width: 830px;
            text-align: center;
        }
        .auto-style5 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large (20 pt);
            width: 100%;
            display: block;
            border-left-color: #51A351;
            border-left-width: 0;
            border-right-color: #51A351;
            border-right-width: 0;
            border-top-color: #51A351;
            border-top-width: 0;
            border-bottom-color: #387038;
            border-bottom-width: 0;
            padding-top: 7px;
            padding-bottom: 7px;
            background-color: #51A351;
            background-repeat: repeat-x;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
&nbsp;<table class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2" dir="auto" style="background-color: #FF9900">-&gt;interesse / <b>
                <asp:Label ID="lblNomeCarro" runat="server" Text="lblNomeCarro"></asp:Label>
                </b></td>
        </tr>
        <tr>
            <td class="auto-style4" rowspan="9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;<h1>Caso tenha interesse neste carro entre em contato ultilizando o formulário ao lado.</h1></td>
            <td class="auto-style6"><strong>Nome:</strong></td>
        </tr>
        <tr>
            <td class="auto-style2"><span class="auto-style10">&nbsp;</span><asp:TextBox ID="txtNome" runat="server" Height="20px" Width="675px" CssClass="auto-style10" placeholder="Seu nome"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>&nbsp;E-mail:</strong></td>
        </tr>
          <tr>
            <td><input class="input-block-level" type="email" id="txtEmail" CssClass="auto-style10" placeholder="usuario@seudominio.com.br"></td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>&nbsp;Assunnto:</strong></td>
        </tr>
        <tr>
            <td><b>&nbsp;<asp:TextBox ID="txtAssunto" runat="server" Height="20px" Width="675px" CssClass="auto-style10" placeholder="Assunto" ></asp:TextBox>
                </b></td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>&nbsp;Menssagem:</strong></td>
        </tr>
    
        <tr>
            <td><b>&nbsp;<asp:TextBox ID="txtMensagem" runat="server" Height="106px" TextMode="MultiLine" Width="675px" CssClass="auto-style10" placeholder="Digite sua menssagem"></asp:TextBox>
                </b></td>
        </tr>
        <tr>
            <td><button class="btn btn-success btn-block btn-small"  ><span class="auto-style5"><h2>Enviar</h2></span></button></td>
        </tr>
    </table>
</asp:Content>
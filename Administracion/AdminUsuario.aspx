<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="AdminUsuario.aspx.cs" Inherits="Administracion_AdminUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 1170px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    REGISTRO DE USUARIOS
    <br />
    <br />
        <table class="auto-style1">
            <tr>
                <td class="text-center">Cédula</td>
                <td>
                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">Apellido Paterno</td>
                <td>
                    <asp:TextBox ID="txtApellidoP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">Apellido Materno</td>
                <td>
                    <asp:TextBox ID="txtApellidoM" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">&nbsp;Nombres</td>
                <td>
                    <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">Email</td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">User name</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">Password</td>
                <td>
                    <asp:TextBox ID="txtClave" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">Perfil</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">Administrador</asp:ListItem>
                        <asp:ListItem Value="2">Vendedor</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            </table>
</asp:Content>

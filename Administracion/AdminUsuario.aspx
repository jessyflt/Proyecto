<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="AdminUsuario.aspx.cs" Inherits="Administracion_AdminUsuario" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
            text-align: center;
            width: 214px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <br />
    <br />
    <h1 > <center>REGISTRO DE USUARIOS</center></h1>
    <p>
    <br />
     <br />
    <br />
    <br />
        <table class="table table-hover" style="z-index: 100; left: 200px; width: 56%; position: absolute; top: 250px; right: 181px;">
            <tr >
                <td class="auto-style2" >Id</td>
                <td >
                    <asp:TextBox ID="txtIdUs" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Cedula</td>
                <td>
                    <asp:TextBox ID="txtCedula" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Apellido Paterno</td>
                <td>
                    <asp:TextBox ID="txtApellidoP" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Apellido Materno</td>
                <td>
                    <asp:TextBox ID="txtApellidoM" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;Nombres</td>
                <td>
                    <asp:TextBox ID="txtNombres" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="txtMail" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">User name</td>
                <td>
                    <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="txtClave" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Perfil</td>
                <td>
                    <asp:DropDownList ID="perfil"  CssClass="form-control" runat="server">
                        <asp:ListItem Value="1">Administrador</asp:ListItem>
                        <asp:ListItem Value="2">Vendedor</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnGuardar" CssClass ="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    &nbsp;</td>
            </tr>
            </table>
</asp:Content>

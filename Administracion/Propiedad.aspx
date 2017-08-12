<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Propiedad.aspx.cs" Inherits="Administracion_Propiedad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="text-center" colspan="2">PROPIEDADES</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCodigoPropiedad" runat="server" Width="241px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label2" runat="server" Text="Fecha:"></asp:Label>
            </td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label3" runat="server" Text="Estado:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEstado" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="text-right">
                <asp:Label ID="Label8" runat="server" Text="Dueño:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDue" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label4" runat="server" Text="Tipo:"></asp:Label>
            </td>
            <td>
                    <asp:DropDownList ID="tipoP"  CssClass="form-control" runat="server">
                        <asp:ListItem Value="Casa">Casa</asp:ListItem>
                        <asp:ListItem Value="Terreno">Terreno</asp:ListItem>
                        <asp:ListItem Value="Departamento">Departamento</asp:ListItem>
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label5" runat="server" Text="Direccion:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDireccionT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label6" runat="server" Text="Sector:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSector" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="text-right">
                <asp:Label ID="Label7" runat="server" Text="Ciudad:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnGuardar" CssClass ="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                </td>
            </tr>
        </table>
</asp:Content>


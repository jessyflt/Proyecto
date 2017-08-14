<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Propiedad.aspx.cs" Inherits="Administracion_Propiedad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <br />
     <br />
    <h1> <center>PROPIEDADES</center></h1>
    <br />
     <br />
    <br />
    <br />
    <table class="table table-hover" style="z-index: 100; left: 200px; width: 54%; position: absolute; top: 250px; right: 203px;">
         <tr>
            <td class="text-right">
                <asp:Label ID="Label1" runat="server" Text="Codigo:" ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCodigoPropiedad" CssClass="form-control" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label2" runat="server" Text="Fecha:"></asp:Label>
            </td>
            <td>
                <asp:Calendar ID="calendarP"  runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label3" runat="server" Text="Estado:"></asp:Label>
            </td>
            <td>
                    <asp:DropDownList ID="listEstado"  CssClass="form-control" runat="server" >
                        <asp:ListItem Value="Vendido">Vendido</asp:ListItem>
                        <asp:ListItem Value="En venta">En venta</asp:ListItem>
                    </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td class="text-right">
                <asp:Label ID="Label8" runat="server" Text="Dueño:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="listDue" CssClass="form-control" runat="server" DataSourceID="SqlConDue" DataTextField="Nombre" DataValueField="codDue" >
                </asp:DropDownList>
                <br />
                <asp:Button ID="txtNDue" runat="server" Text="Agregar Dueño" CssClass ="btn btn-primary" OnClick="txtNDue_Click" />
                <asp:SqlDataSource ID="SqlConDue" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [codDue], CONCAT([nombreDue], ' ' ,[apellidoDue]) as Nombre
FROM [Inmobiliaria].[dbo].[DUEÑO]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label4" runat="server" Text="Tipo:" ></asp:Label>
            </td>
            <td>
                    <asp:DropDownList ID="tipoP"  CssClass="form-control" runat="server" >
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
                <asp:TextBox ID="txtDireccionT" CssClass="form-control" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label6" runat="server" Text="Sector:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSector" CssClass="form-control" runat="server" ></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="text-right">
                <asp:Label ID="Label7" runat="server" Text="Ciudad:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCiudad"  CssClass="form-control" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnGuardar" CssClass ="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                </td>
            </tr>
        </table>
</asp:Content>


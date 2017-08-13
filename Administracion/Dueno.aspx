<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Dueno.aspx.cs" Inherits="Administracion_Dueno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 473px;
        }
        .auto-style2 {
            width: 433px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <strong><em><span class="auto-style3">REGISTRO DE DUEÑO</span></em></strong>
    <br />
        <table class="table table-hover" style="z-index: 100; left: 200px; width: 755px; position: absolute; top: 120px" >
            <tr >
                <td class="auto-style1" >Codigo</td>
                <td class="auto-style2" >
                    <asp:TextBox ID="txtCodigoDue" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Cédula</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCedulaD" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Apellido</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtApellidoD" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td class="auto-style1">&nbsp;Nombres</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtNombreD" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Telefono</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtTelefonoD" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
          
            <tr>
                <td class="auto-style1">Direccion</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtDireccionD" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Ciudad</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCiudadD" CssClass="form-control" runat="server"></asp:TextBox>
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
    <br />
        </asp:Content>


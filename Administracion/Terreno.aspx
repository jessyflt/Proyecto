<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Terreno.aspx.cs" Inherits="Administracion_Terreno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <table class="table table-hover" style="z-index: 100; left: 200px; width: 755px; position: absolute; top: 80px">
        <tr>
            <td class="text-center" colspan="2">TERRENOS</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCodigoTe" CssClass="form-control"  runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label2" runat="server" Text="Area:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtArea"  CssClass="form-control"  runat="server"></asp:TextBox>
            </td>
        </tr>
          
          <tr>
            <td class="text-right">
                <asp:Label ID="Label8" runat="server" Text="Frente:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFrente"  CssClass="form-control"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label3" runat="server" Text="Fondo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFondo"  CssClass="form-control"  runat="server"></asp:TextBox>
            </td>
        </tr>
                 
        <tr>
            <td class="text-right">
                <asp:Label ID="Label4" runat="server" Text="Foto:"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" CssClass="form-control"  runat="server" />
            </td>
        </tr>
                 
        
        <tr>
            <td class="text-right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">&nbsp;</td>
            <td>
                <asp:Button ID="btnGuardar" CssClass ="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click"  />
            </td>
        </tr>
    </table>
</asp:Content>


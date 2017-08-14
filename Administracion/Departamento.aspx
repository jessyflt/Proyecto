<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Departamento.aspx.cs" Inherits="Administracion_Departamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <table class="table table-hover" style="z-index: 100; left: 200px; width: 755px; position: absolute; top: 80px">
        <tr>
            <td class="text-center" colspan="2">DEPARTAMENTOS</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCodigoDepar" CssClass="form-control"  runat="server" ></asp:TextBox>
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
                <asp:Label ID="Label5" runat="server" Text="Numero de habitaciones:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtHab" CssClass="form-control"  runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td class="text-right">
                <asp:Label ID="Label6" runat="server" Text="Numero de baños:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbaños" CssClass="form-control"  runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
         
          <tr>
            <td class="text-right">
                <asp:Label ID="Label8" runat="server" Text="Telefono:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTelefonoD"  CssClass="form-control"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
                <td class="text-right">
                <asp:Label ID="Label9" runat="server" Text="Garaje:"></asp:Label>
            </td>
                <td>
                    <asp:DropDownList ID="garajed"  CssClass="form-control" runat="server">
                        <asp:ListItem Value="Si">Si</asp:ListItem>
                        <asp:ListItem Value="No">No</asp:ListItem>
                    </asp:DropDownList>
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


<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Casas.aspx.cs" Inherits="Administracion_Casas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="text-center" colspan="2">CASAS</td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCodigoCasa" runat="server" Width="241px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label2" runat="server" Text="Area:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtArea" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label3" runat="server" Text="Numero de pisos:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPisos" runat="server"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td class="text-right">
                <asp:Label ID="Label5" runat="server" Text="Numero de habitaciones:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtHabitaciones" runat="server"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td class="text-right">
                <asp:Label ID="Label6" runat="server" Text="Numero de baños:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbaños" runat="server"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td class="text-right">
                <asp:Label ID="Label7" runat="server" Text="Numero de pisos:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td class="text-right">
                <asp:Label ID="Label8" runat="server" Text="Telefono:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTelefonoC" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
                <td class="text-right">
                <asp:Label ID="Label9" runat="server" Text="Garaje:"></asp:Label>
            </td>
                <td>
                    <asp:DropDownList ID="garajec"  CssClass="form-control" runat="server">
                        <asp:ListItem Value="1">Si</asp:ListItem>
                        <asp:ListItem Value="2">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
         
        <tr>
            <td class="text-right">
                <asp:Label ID="Label4" runat="server" Text="Foto:"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
                 
        <tr>
            <td class="text-right">
                <asp:Label ID="Label10" runat="server" Text="Codigo Propiedad:"></asp:Label>
            </td>
             <td class="text-right">
                <asp:Label ID="Label11" runat="server" Text="Codigo Propiedad:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="guardarCasa_Click" />
            </td>
        </tr>
    </table>



</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Casas.aspx.cs" Inherits="Administracion_Casas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
<br />
    <br />
    <h1 > <center>CASAS</center></h1>
    <p>
    <br />
     <br />
    <br />
    <br />
    <table class="table table-hover" style="z-index: 100; left: 200px; width: 54%; position: absolute; top: 250px; right: 203px;">
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCodigoCasa" CssClass="form-control"  runat="server" ></asp:TextBox>
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
                <asp:Label ID="Label3" runat="server" Text="Numero de pisos:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPisos" CssClass="form-control"  runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td class="text-right">
                <asp:Label ID="Label5" runat="server" Text="Numero de habitaciones:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtHa" CssClass="form-control"  runat="server" TextMode="Number"></asp:TextBox>
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
                <asp:TextBox ID="txtTelefonoC"  CssClass="form-control"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
                <td class="text-right">
                <asp:Label ID="Label9" runat="server" Text="Garaje:"></asp:Label>
            </td>
                <td>
                    <asp:DropDownList ID="garajec"  CssClass="form-control" runat="server">
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
                <asp:Button ID="btnGuardar" CssClass ="btn btn-primary" runat="server" Text="Guardar" OnClick="guardarCasa_Click" />
            </td>
        </tr>
    </table>



</asp:Content>


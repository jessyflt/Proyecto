<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Terreno.aspx.cs" Inherits="Administracion_Terreno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: right;
            width: 120px;
        }
        .auto-style2 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <br />
    <br />
    <h1 > <center>TERRENOS</center></h1>
    <p>
    <br />
     <br />
    <br />
    <br />
    <table class="table table-hover" style="z-index: 100; left: 200px; width: 54%; position: absolute; top: 250px; right: 203px;">
         <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCodigoTe" CssClass="form-control"  runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Area:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtArea"  CssClass="form-control"  runat="server"></asp:TextBox>
            </td>
        </tr>
          
          <tr>
            <td class="auto-style1">
                <asp:Label ID="Label8" runat="server" Text="Frente:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFrente"  CssClass="form-control"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Fondo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFondo"  CssClass="form-control"  runat="server"></asp:TextBox>
            </td>
        </tr>
                 
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Foto:"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" CssClass="auto-style2"  runat="server" Width="274px" />
            </td>
        </tr>
                 
        
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="btnGuardar" CssClass ="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click"  />
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="RegistroVendedor.aspx.cs" Inherits="Administracion_RegistroVendedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <p>
        Registro de Vendedor<br />
</p>
<p>
&nbsp;&nbsp;&nbsp; Código:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtCod" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;&nbsp;&nbsp;Nombres:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtNomVen" runat="server"></asp:TextBox>
</p>
<p>
&nbsp;&nbsp;&nbsp; Apellidos:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtApelVen" runat="server"></asp:TextBox>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>
    <asp:Button ID="btnGuardar" runat="server" Height="30px" OnClick="btnGuardar_Click" Text="Button" Width="98px" />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
</p>
</asp:Content>
    

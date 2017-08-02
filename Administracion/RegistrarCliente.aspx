<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="RegistrarCliente.aspx.cs" Inherits="Administracion_RegistrarCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <p>
    Registro de Comprador<br />
</p>
<p>
&nbsp;&nbsp;&nbsp; Código:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp; Cédula:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtCedCom" runat="server"></asp:TextBox>
</p>
<p>
&nbsp;&nbsp;&nbsp; Nombres:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtNomCom" runat="server"></asp:TextBox>
</p>
<p>
&nbsp;&nbsp;&nbsp; Apellidos:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtApelCom" runat="server"></asp:TextBox>
</p>
<p>
&nbsp;&nbsp;&nbsp; Telefono:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtTelfCom" runat="server"></asp:TextBox>
</p>
<p>
&nbsp;&nbsp;&nbsp; Direccion:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtDirCom" runat="server"></asp:TextBox>
</p>
<p>
&nbsp;&nbsp;&nbsp; Ciudad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtCiuCom" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;</p>
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


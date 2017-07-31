<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <div class="col-sm-4">

    <asp:Login ID="Login1" runat="server"  FailureText ="Credenciales incorrectas" 
        onauthenticate="Login1_Authenticate" onloggedin="Login1_LoggedIn">
    <LayoutTemplate >
    <div class = "form-group">
        <asp:Label ID="UserNameLabel" runat="server" Text="Usuario"  CssClass="control-label" AssociatedControlID ="UserName"></asp:Label>
        <asp:TextBox ID="UserName" runat="server" placeholder="Usuario" CssClass="form-control" OnTextChanged="UserName_TextChanged"></asp:TextBox>
    </div>
    <div class ="form-group">
        <asp:Label ID="PasswordLabel" runat="server" Text="Contraseña"  CssClass="control-label" AssociatedControlID="Password"></asp:Label>
        <asp:TextBox ID="Password" runat="server" placeholder="Contraseña" 
            CssClass="form-control" TextMode="Password"></asp:TextBox>
    </div>
    <div class ="form-group">
        <asp:Button ID="LogginButton" runat="server" Text="Iniciar" 
            CssClass ="btn btn-primary"  CommandName ="Login" onclick="LogginButton_Click"/>
    </div>
    </LayoutTemplate>
    </asp:Login>
    </div>
    <div class="col-sm-4">
      <h3>Aviso</h3>
      <p>La información personal ingresada en este sitio solo sirve para verificación . </p>
    </div>
</asp:Content>


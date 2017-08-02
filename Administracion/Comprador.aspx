<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Comprador.aspx.cs" Inherits="Administracion_Comprador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <h1> <center>Lista de Clientes </center></h1>
    <br />
<br />
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="codCompr" DataSourceID="SqlDataSource1" GridLines="Horizontal">
    <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:BoundField DataField="codCompr" HeaderText="codCompr" ReadOnly="True" SortExpression="codCompr" />
        <asp:BoundField DataField="ciCompr" HeaderText="ciCompr" SortExpression="ciCompr" />
        <asp:BoundField DataField="nombreCompr" HeaderText="nombreCompr" SortExpression="nombreCompr" />
        <asp:BoundField DataField="apellidoCompr" HeaderText="apellidoCompr" SortExpression="apellidoCompr" />
        <asp:BoundField DataField="tlfCompr" HeaderText="tlfCompr" SortExpression="tlfCompr" />
        <asp:BoundField DataField="DireccionCompr" HeaderText="DireccionCompr" SortExpression="DireccionCompr" />
        <asp:BoundField DataField="CiudadCompr" HeaderText="CiudadCompr" SortExpression="CiudadCompr" />
    </Columns>
    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    <SortedAscendingCellStyle BackColor="#F4F4FD" />
    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
    <SortedDescendingCellStyle BackColor="#D8D8F0" />
    <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InmobiliariaConnectionString %>" SelectCommand="SELECT * FROM [COMPRADOR]"></asp:SqlDataSource>
<br />
<br />
<br />
<br />
&nbsp;
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/Formularios.master" AutoEventWireup="false" CodeFile="Comprador.aspx.vb" Inherits="Administracion_Comprador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    compras<br />
    sdsxxzxxxzcxzcxzczxczxc<br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="codCompr" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="codCompr" HeaderText="codCompr" ReadOnly="True" SortExpression="codCompr" />
            <asp:BoundField DataField="ciCompr" HeaderText="ciCompr" SortExpression="ciCompr" />
            <asp:BoundField DataField="nombreCompr" HeaderText="nombreCompr" SortExpression="nombreCompr" />
            <asp:BoundField DataField="apellidoCompr" HeaderText="apellidoCompr" SortExpression="apellidoCompr" />
            <asp:BoundField DataField="tlfCompr" HeaderText="tlfCompr" SortExpression="tlfCompr" />
            <asp:BoundField DataField="DireccionCompr" HeaderText="DireccionCompr" SortExpression="DireccionCompr" />
            <asp:BoundField DataField="CiudadCompr" HeaderText="CiudadCompr" SortExpression="CiudadCompr" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InmobiliariaConnectionString %>" SelectCommand="SELECT * FROM [COMPRADOR]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;
</asp:Content>


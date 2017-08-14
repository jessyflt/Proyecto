<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="ListarUsuario.aspx.cs" Inherits="Administracion_ListarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">

    <table class="nav-justified">
        <tr>
            <h1><center>USUARIOS</center></h1>
            <td>&nbsp;</td>
            
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            
        </tr>
        <tr>
            <td colspan="2">
                <div class="text-center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered bs-table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="usrid" DataSourceID="SqlDataUsuario">
                    <Columns>
                        <asp:BoundField DataField="usrid" HeaderText="Id" ReadOnly="True" SortExpression="usrid" />
                        <asp:BoundField DataField="usrcedula" HeaderText="Cedula" SortExpression="usrcedula" />
                        <asp:BoundField DataField="usrapellidop" HeaderText="Apellido Paterno" SortExpression="usrapellidop" />
                        <asp:BoundField DataField="usrapellidom" HeaderText="Apellido Materno" SortExpression="usrapellidom" />
                        <asp:BoundField DataField="usrnombrec" HeaderText="Nombres" SortExpression="usrnombrec" />
                        <asp:BoundField DataField="usrmail" HeaderText="Email" SortExpression="usrmail" />
                        <asp:BoundField DataField="usridusuario" HeaderText="User name" SortExpression="usridusuario" />
                        <asp:BoundField DataField="usrclave" HeaderText="Password" SortExpression="usrclave" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True"  />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [usrid], [usrcedula], [usrapellidop], [usrapellidom], [usrnombrec], [usrmail], [usridusuario], [usrclave] FROM [Usuario]" DeleteCommand="DELETE FROM [Usuario] WHERE [usrid] = @usrid" InsertCommand="INSERT INTO [Usuario] ([usrid], [usrcedula], [usrapellidop], [usrapellidom], [usrnombrec], [usrmail], [usridusuario], [usrclave]) VALUES (@usrid, @usrcedula, @usrapellidop, @usrapellidom, @usrnombrec, @usrmail, @usridusuario, @usrclave)" UpdateCommand="UPDATE [Usuario] SET [usrcedula] = @usrcedula, [usrapellidop] = @usrapellidop, [usrapellidom] = @usrapellidom, [usrnombrec] = @usrnombrec, [usrmail] = @usrmail, [usridusuario] = @usridusuario, [usrclave] = @usrclave WHERE [usrid] = @usrid">
                    <DeleteParameters>
                        <asp:Parameter Name="usrid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="usrid" Type="Int32" />
                        <asp:Parameter Name="usrcedula" Type="String" />
                        <asp:Parameter Name="usrapellidop" Type="String" />
                        <asp:Parameter Name="usrapellidom" Type="String" />
                        <asp:Parameter Name="usrnombrec" Type="String" />
                        <asp:Parameter Name="usrmail" Type="String" />
                        <asp:Parameter Name="usridusuario" Type="String" />
                        <asp:Parameter Name="usrclave" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="usrcedula" Type="String" />
                        <asp:Parameter Name="usrapellidop" Type="String" />
                        <asp:Parameter Name="usrapellidom" Type="String" />
                        <asp:Parameter Name="usrnombrec" Type="String" />
                        <asp:Parameter Name="usrmail" Type="String" />
                        <asp:Parameter Name="usridusuario" Type="String" />
                        <asp:Parameter Name="usrclave" Type="String" />
                        <asp:Parameter Name="usrid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
&nbsp;
    
</asp:Content>


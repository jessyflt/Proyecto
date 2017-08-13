<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="ListarDue.aspx.cs" Inherits="Administracion_ListarDue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <table class="nav-justified">
     <tr>
            <td><asp:Label ID="Label1" runat="server" Text="DUEÑOS"></asp:Label></td>
            <td>&nbsp;</td>
            
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="codDue" DataSourceID="SqlDataDue" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="codDue" HeaderText="Id" ReadOnly="True" SortExpression="codDue" />
                        <asp:BoundField DataField="CIdue" HeaderText="Cedula" SortExpression="CIdue" />
                        <asp:BoundField DataField="nombreDue" HeaderText="Nombre" SortExpression="nombreDue" />
                        <asp:BoundField DataField="apellidoDue" HeaderText="Apellido" SortExpression="apellidoDue" />
                        <asp:BoundField DataField="tlfDue" HeaderText="Telefono" SortExpression="tlfDue" />
                        <asp:BoundField DataField="DireccionDue" HeaderText="Direccion" SortExpression="DireccionDue" />
                        <asp:BoundField DataField="CiudadDue" HeaderText="Ciudad" SortExpression="CiudadDue" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataDue" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [DUEÑO] WHERE [codDue] = @codDue" InsertCommand="INSERT INTO [DUEÑO] ([codDue], [CIdue], [nombreDue], [apellidoDue], [tlfDue], [DireccionDue], [CiudadDue]) VALUES (@codDue, @CIdue, @nombreDue, @apellidoDue, @tlfDue, @DireccionDue, @CiudadDue)" SelectCommand="SELECT * FROM [DUEÑO]" UpdateCommand="UPDATE [DUEÑO] SET [CIdue] = @CIdue, [nombreDue] = @nombreDue, [apellidoDue] = @apellidoDue, [tlfDue] = @tlfDue, [DireccionDue] = @DireccionDue, [CiudadDue] = @CiudadDue WHERE [codDue] = @codDue">
                    <DeleteParameters>
                        <asp:Parameter Name="codDue" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="codDue" Type="String" />
                        <asp:Parameter Name="CIdue" Type="String" />
                        <asp:Parameter Name="nombreDue" Type="String" />
                        <asp:Parameter Name="apellidoDue" Type="String" />
                        <asp:Parameter Name="tlfDue" Type="String" />
                        <asp:Parameter Name="DireccionDue" Type="String" />
                        <asp:Parameter Name="CiudadDue" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CIdue" Type="String" />
                        <asp:Parameter Name="nombreDue" Type="String" />
                        <asp:Parameter Name="apellidoDue" Type="String" />
                        <asp:Parameter Name="tlfDue" Type="String" />
                        <asp:Parameter Name="DireccionDue" Type="String" />
                        <asp:Parameter Name="CiudadDue" Type="String" />
                        <asp:Parameter Name="codDue" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            
        </tr>
        <tr>
            <td colspan="2">

                </td>
            </tr>
        </table>
</asp:Content>


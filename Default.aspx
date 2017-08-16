<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">

    CATALOGO
    
    <asp:GridView ID="GridCasas" runat="server" AutoGenerateColumns="False" DataKeyNames="codCasa" DataSourceID="SqlDataCasas">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="codCasa" HeaderText="codCasa" ReadOnly="True" SortExpression="codCasa" />
            <asp:BoundField DataField="fotoCasa" HeaderText="fotoCasa" SortExpression="fotoCasa" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataCasas" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CASA] WHERE [codCasa] = @codCasa" InsertCommand="INSERT INTO [CASA] ([codCasa], [fotoCasa]) VALUES (@codCasa, @fotoCasa)" SelectCommand="SELECT [codCasa], [fotoCasa] FROM [CASA]" UpdateCommand="UPDATE [CASA] SET [fotoCasa] = @fotoCasa WHERE [codCasa] = @codCasa">
        <DeleteParameters>
            <asp:Parameter Name="codCasa" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="codCasa" Type="String" />
            <asp:Parameter Name="fotoCasa" Type="Object" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fotoCasa" Type="Object" />
            <asp:Parameter Name="codCasa" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>



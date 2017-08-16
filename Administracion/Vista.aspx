<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Vista.aspx.cs" Inherits="Vista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
     <h1> <center>CATÁLOGO DE PROPIEDADES</center>&nbsp;Terrenos<br />
     <br />
     <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codPropiedad" DataSourceID="SqlDataSource1">
         <Columns>
             <asp:CommandField ShowSelectButton="True" />
             <asp:BoundField DataField="codPropiedad" HeaderText="codPropiedad" ReadOnly="True" SortExpression="codPropiedad" />
             <asp:ImageField DataImageUrlField="fotoCasa" HeaderText="Imagen">
             </asp:ImageField>
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InmobiliariaConnectionString %>" SelectCommand="SELECT Propiedades.codPropiedad, CASA.fotoCasa FROM CASA INNER JOIN Propiedades ON CASA.codPropiedad = Propiedades.codPropiedad"></asp:SqlDataSource>
     <br />
     <br />
     <br />
     </h1>


</asp:Content>


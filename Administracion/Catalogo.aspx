<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Catalogo.aspx.cs" Inherits="Administracion_Catalogo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    
     <h1> <center>CATÁLOGO DE PROPIEDADES</center>&nbsp;Terrenos</h1>
    
         <div id="owl-example" class="owl-carousel">
            
         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
         <ItemTemplate>
             <div class="Contenido">
                 <img src="<%# DataBinder.Eval(Container.DataItem,"fotoTerreno")%> "/>
                 <div class="Codigo"><strong><%# DataBinder.Eval(Container.DataItem,"codPropiedad")%><strong></div>
                 <div class="Propiedad"><%# DataBinder.Eval(Container.DataItem,"Propiedad")%></div>
                 <div class="Descripcion"><strong><%# DataBinder.Eval(Container.DataItem,"Descripcion")%><strong></div>
                 <div class="Area"><%# DataBinder.Eval(Container.DataItem,"AreaT")%></div>
                 <div class="Estado"><%# DataBinder.Eval(Container.DataItem,"Estado")%></div>
             </div>
         </ItemTemplate>
         </asp:Repeater>
            
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InmobiliariaConnectionString %>" SelectCommand="SELECT TERRENOS.fotoTerreno, Propiedades.codPropiedad, 'Hermoso ' + ' ' + Propiedades.TipoP AS Propiedad, 'Ubicado en el sector  de  ' + Propiedades.SectorT + ' en la ciudad de ' + Propiedades.CiudadT + ' calle ' + Propiedades.DireccionT AS Descripcion, TERRENOS.AreaT, Propiedades.Estado FROM Propiedades INNER JOIN TERRENOS ON Propiedades.codPropiedad = TERRENOS.codPropiedad" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
   
           
         </div>
         <script>
             $(document).ready(function () {
                 $("owl-example").owl-Carousel();
             });
</script>
            
    <br />
     CASAS<br />
     <br />
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:InmobiliariaConnectionString %>" SelectCommand="SELECT CASA.fotoCasa, 'CODIGO' + Propiedades.codPropiedad AS Codigo, 'Hermosa ' + Propiedades.TipoP AS Tipo, 'En la ciudad de ' + Propiedades.CiudadT + ' Ubicada en el sector  de ' + Propiedades.SectorT + ' en la calle ' + Propiedades.DireccionT AS Ubicacion, 'Garage' + CASA.GarajeC AS Garaje, 'Tiene  ' + CASA.NrBañosC + ' baños, ' + CASA.NrHabitacionesC + ' habitaciones y un area de ' + CASA.AreaC AS Descripcion, 'Estado: ' + Propiedades.Estado AS Estado FROM CASA INNER JOIN Propiedades ON CASA.codPropiedad = Propiedades.codPropiedad"></asp:SqlDataSource>
     <br />
     <br />
     <br />
     Departamentos
     <br />
     <br />
     <br />
     <br />
     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:InmobiliariaConnectionString %>" SelectCommand="SELECT DEPARTAMENTO.fotoDepar, 'Codigo: ' + Propiedades.codPropiedad AS Codigo, 'Hermoso ' + Propiedades.TipoP AS Tipo, 'Ubicado en la ' + Propiedades.CiudadT + ' en el sector de ' + Propiedades.SectorT + 'en la calle ' + Propiedades.DireccionT AS Direccion, 'Consta de ' + DEPARTAMENTO.NrHabitacionesD + ' habitaciones, ' + DEPARTAMENTO.NrBanosD + ' baños, con ' + DEPARTAMENTO.AreaD + 'metros' AS Descripcion, 'Estado: ' + Propiedades.Estado AS Estado FROM DEPARTAMENTO INNER JOIN Propiedades ON DEPARTAMENTO.codPropiedad = Propiedades.codPropiedad"></asp:SqlDataSource>
     <br />
<br />   
   
 
</asp:Content>


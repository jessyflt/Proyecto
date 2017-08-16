<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Formulario.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Administracion_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="row">
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
      <li data-target="#carousel-example-generic" data-slide-to="4"></li>
      <li data-target="#carousel-example-generic" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="../slider/1.jpg" alt="..." style="width:100%">
        <div class="carousel-caption">
          <h3>Casa</h3>
        </div>
      </div>
      <div class="item">
        <img src="../slider/6.jpg" alt="..." style="width:100%">
        <div class="carousel-caption">
          <h3>Departamento</h3> 
        </div>
      </div>
      <div class="item">
        <img src="../slider/13.jpg" alt="..." style="width:100%">
        <div class="carousel-caption">
          <h3>Terreno</h3> 
        </div>
      </div>
        <div class="item">
        <img src="../slider/2.jpg" alt="..." style="width:100%">
        <div class="carousel-caption">
          <h3>Casa</h3> 
        </div>
      </div>
      <div class="item">
        <img src="../slider/8.jpg" alt="..." style="width:100%">
        <div class="carousel-caption">
          <h3>Departamento</h3> 
        </div>
      </div>
      <div class="item">
        <img src="../slider/15.jpg" alt="..." style="width:100%">
        <div class="carousel-caption">
          <h3>Terreno</h3>
        </div>
      </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
  </div>
</div>

<!-- Fontawesome -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<!-- Bootstrap -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</asp:Content>


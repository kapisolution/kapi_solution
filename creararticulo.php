<?php session_start();?>
<html>
  <head>
    <!--Cabeceras bootstrap -->
    <script src="js/tabs.js"></script>
    <script src="js/modificarArticulo.js"></script> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!--Cabeceras bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/topbar.css" />
    <link rel="stylesheet" type="text/css" href="css/footer.css" />
    <link rel="stylesheet" type="text/css" href="css/articulo.css" />
    <link rel="stylesheet" type="text/css" href="css/estilos.css" />
  
    <title>Kapi - Nuevo articulo</title>
    <link rel="icon" href="files/icon/logo_v2N.png" type="image/gif" sizes="16x16">
    <meta charset="utf-8">
  </head>
  <body>
    <?php 
     require 'backend/conexion.php';
     include 'frontend/topbar.php';
     include 'frontend/creararticulo.php';
     include 'frontend/footer.php';
     include 'backend/desconexion.php';
    ?>
  </body>
</html>

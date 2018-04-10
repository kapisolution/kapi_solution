<?php session_start();?>
<html>
  <head>
  <!--Cabeceras bootstrap -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!--Cabeceras bootstrap -->
    <title>Kapi - Home</title>
    <link rel="icon" href="files/icon/logo_v2N.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" type="text/css" href="css/estilos.css" />
    <link rel="stylesheet" type="text/css" href="css/index.css" />
    <link rel="stylesheet" type="text/css" href="css/signin.css" />
    <meta charset="utf-8">
  </head>
  <body>
    <?php 
     require 'backend/conexion.php';
     include 'frontend/login.php';
     include 'backend/desconexion.php';
    ?>
  </body>
</html>
<?php session_start();?>
<html>
  <head>
    <title>Kapi - Nuevo articulo</title>
    <link rel="icon" href="files/icon/logo.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" type="text/css" href="css/index.css" />
    <link rel="stylesheet" type="text/css" href="css/topbar.css" />
    <link rel="stylesheet" type="text/css" href="css/creararticulo.css" />
    <meta charset="utf-8">
  </head>
  <body>
    <?php 
     require 'backend/conexion.php';
     include 'frontend/topbar.php';
     include 'frontend/leftbar.php';
     include 'frontend/creararticulo.php';
     include 'frontend/footer.php';
     include 'backend/desconexion.php';
    ?>
  </body>
</html>

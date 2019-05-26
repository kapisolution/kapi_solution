<?php 
  session_start();
  header('X-Frame-Options: SAMEORIGIN');
?>
<html>
  <head>
  <!--Cabeceras bootstrap -->
    <script src="js/tabs.js"></script>
    <script src="js/funciones.js"></script> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
  <!--Cabeceras bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/topbar.css" />
    <link rel="stylesheet" type="text/css" href="css/footer.css" />
    <link rel="stylesheet" type="text/css" href="css/articulo.css" />
    <link rel="stylesheet" type="text/css" href="css/estilos.css" />

    <title>Kapi - Articulo</title>
    <link rel="icon" href="files/icon/logo_v2N.png" type="image/gif" sizes="16x16">
    <meta charset="utf-8">
  </head>
  <body>
    <?php 
     require 'backend/conexion.php';
     include 'frontend/topbar.php';
     include 'frontend/articulo.php';
     include 'frontend/footer.php';
     include 'backend/desconexion.php';
    ?>
  </body>
</html>

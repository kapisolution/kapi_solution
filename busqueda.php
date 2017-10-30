<html>
  <head>
    <title>Kapi - Búsqueda</title>
    <link rel="icon" href="files/icon/logo.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" type="text/css" href="css/index.css" />
    <link rel="stylesheet" type="text/css" href="css/topbar.css" />
    <link rel="stylesheet" type="text/css" href="css/busqueda.css" />
    <meta charset="utf-8">
  </head>
  <body>
    <?php 
     require 'backend/conexion.php';
     include 'frontend/topbar.php';
     include 'frontend/leftbar.php';
     include 'frontend/busqueda.php';
     include 'frontend/footer.php';
     include 'backend/desconexion.php';
    ?>
    <script src="js/tabs.js"></script> 
  </body>
</html>

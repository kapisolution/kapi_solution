<html>
  <head>
    <title>Inicio de sesión</title>
    <link rel="icon" href="files/icon/logo.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" type="text/css" href="css/index.css" />
    <link rel="stylesheet" type="text/css" href="css/topbar.css" />
    <link rel="stylesheet" type="text/css" href="css/login.css" />
    <meta charset="utf-8">
  </head>
  <body>
    <?php 
     require 'backend/conexion.php';
     include 'frontend/topbar.php';
     include 'frontend/leftbar.php';
     include 'frontend/login.php';
     include 'frontend/footer.php';
     include 'backend/desconexion.php';
     if($_GET['login']=='false'){
      echo'<script src="js/sign_in.js"></script>'; 
      echo ("<script>");
      echo ("alertNick()");
      echo ("</script>"); 
     }
    ?>
  </body>
</html>

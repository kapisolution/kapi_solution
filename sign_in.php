<html>
  <head>
    <title>Registro</title>
    <link rel="icon" href="files/icon/logo.png" type="image/gif" sizes="16x16">
    <link rel="stylesheet" type="text/css" href="css/index.css" />
    <link rel="stylesheet" type="text/css" href="css/topbar.css" />
    <link rel="stylesheet" type="text/css" href="css/sign_in.css" />
    <meta charset="utf-8">
  </head>
  <body>
    <?php 
     require 'backend/conexion.php';
     include 'frontend/topbar.php';
     include 'frontend/leftbar.php';
     include 'frontend/sign_in.php';
     include 'frontend/footer.php';
     include 'backend/desconexion.php';
     echo'<script src="js/sign_in.js"></script>';
    if($_GET['signin'] == 'ko'){
      echo ("<script>");
      echo ("alertSignIn()");
      echo ("</script>");
    }
    ?>
  </body>
</html>

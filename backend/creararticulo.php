<?php
    session_start();
    require("conexion.php");
    if(isset($_SESSION['login'])){
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $id=0;
            require("recogeDatosArticulo.php");
            require("insertaArticulo.php");
            require("subeImgArticulo.php");
        }
    }
    $_SESSION['creacion']=true;
    require("desconexion.php");
    header('Location:/');
 ?>

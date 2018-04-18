<?php
    session_start();
    require("conexion.php");
    if(isset($_SESSION['login'])){
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $id=$_POST["id"];
            require("recogeDatosArticulo.php");
            require("insertaArticulo.php");
            require("subeImgArticulo.php");
        }
    }
    require("desconexion.php");
    header('Location:/');
 ?>

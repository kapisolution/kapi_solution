<?php
    session_start();
    require("conexion.php");
    if(isset($_SESSION['login'])){
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $id=0;
            require("recogeDatosArticulo.php");
            require("insertaArticulo.php");
            $total = count($_FILES['imagen']['name']);
            require("subeImgArticulo.php");
        }
    }
    require("desconexion.php");
    header('Location:/');
 ?>
 

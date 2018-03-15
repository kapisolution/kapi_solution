<?php
    session_start();
    require("conexion.php");
    if(isset($_SESSION['login'])){
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $nivel=$_POST["nivel"];
            $rol=$_POST["rol"];
            $titulo=$_POST["titulo"];
            $contenido=$_POST["contenido"];
            $creador= $_SESSION['nick'];
            $id=$_POST["id"];
            echo $id.$rol.$nivel.$titulo.$contenido.$creador;
            $sql = "INSERT INTO Modificacion_articulo (id, rol, nivel, titulo, contenido, creador) VALUES ('$id', '$rol', '$nivel', '$titulo', '$contenido', '$creador');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar el articulo");    
        }
    }
    require("desconexion.php");
    header('Location:/');
 ?>

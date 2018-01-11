<?php
    session_start();
    $_SESSION['login']=true;
    $_SESSION['nick']="ja";
    require("conexion.php");
    if(isset($_SESSION['login'])){
        if ($_SERVER["REQUEST_METHOD"] == "POST") {

            
            $nivel=$_POST["nivel"];
            $rol=$_POST["rol"];
            $titulo=$_POST["titulo"];
            $contenido=$_POST["contenido"];
            $img=$_POST["img"];
            $creador=$_SESSION['nick'];
            $sql = "INSERT INTO Articulos (nivel, rol, titulo, contenido, img) VALUES ('$nivel', '$rol', '$titulo', '$contenido', '$img' );";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar el articulo");
            
        }
    }
    require("desconexion.php");
    header('Location:/');
 ?>

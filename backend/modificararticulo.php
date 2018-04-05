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
            $pregunta1=$_POST["pregunta1"];
            $pregunta2=$_POST["pregunta2"];
            $pregunta3=$_POST["pregunta3"];
            echo $id.$rol.$nivel.$titulo.$contenido.$creador;
            $sql = "INSERT INTO Modificacion_articulo (id, rol, nivel, titulo, contenido, creador) VALUES ('$id', '$rol', '$nivel', '$titulo', '$contenido', '$creador');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar el articulo");    
            
            $id_mod = mysqli_insert_id($con);
            $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta1', 'A', 'B', 'C', 'D', 'A', '$id');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta"); 
            $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta2', 'A', 'B', 'C', 'D', 'A', '$id');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta"); 
            $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta3', 'A', 'B', 'C', 'D', 'A', '$id');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta"); 
            
        }
    }
    require("desconexion.php");
    header('Location:/');
 ?>

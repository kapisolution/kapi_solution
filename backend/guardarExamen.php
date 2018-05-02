<?php
    session_start();
    require("conexion.php");
    if(isset($_SESSION['login'])){
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $nick =$_SESSION['nick'];
            $nivel=$_POST['nivel'];
            $rol=$_POST['rol'];
            $nota=$_POST['nota'];

            $sql = "INSERT INTO Examenes (nivel, rol) VALUES ('$nivel','$rol');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar el rol y el nivel");    

            $id_ex = mysqli_insert_id($con);
            $sql = "INSERT INTO Realiza_Examen (nick, id_ex, nota) VALUES ('$nick', '$id_ex', '$nota');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la nota del examen");    
        }
    }
require("desconexion.php");
header('Location:/');
?>
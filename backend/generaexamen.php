<?php
    session_start();
    require("conexion.php");
    if(isset($_SESSION['login'])){
        $nivel=$_GET["nivel"];
        $rol=$_GET["rol"];
        $sql ='SELECT * FROM Preguntas WHERE nivel = '.$nivel.' AND rol = "'.$rol.'" ORDER BY RAND() LIMIT 10;';
        $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla articulos");
        $examen = array();
        while($fila = mysqli_fetch_array($consulta)){
            $examen[] = $fila;
        }
        // echo json_encode($examen);
    }
    require("desconexion.php");
    ?>
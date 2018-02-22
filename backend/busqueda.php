<?php
if(isset($_GET["search"])&&$_GET["search"]!=""){ 
    $sql ='SELECT * FROM Articulos WHERE titulo LIKE "%'.$_GET["search"] .'%" OR contenido LIKE "%'.$_GET["search"] .'%" ORDER BY nivel, rol;';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla articulos");
    $busquedaArticulos = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaArticulos[] = $fila;
    }

    $sql ='SELECT * FROM Usuarios WHERE nick LIKE "%'.$_GET["search"] .'%";';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla usuarios");
    $busquedaUsuarios = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaUsuarios[] = $fila;
    }

    $sql ='SELECT * FROM Preguntas WHERE texto LIKE "%'.$_GET["search"] .'%";';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla preguntas");
    $busquedaPreguntas = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaPreguntas[] = $fila;
    }
}
?>
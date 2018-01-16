<?php
    $sql ='SELECT * FROM Articulos ORDER BY nivel, rol LIMIT 5;';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla articulos");
    $busquedaArticulos = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaArticulos[] = $fila;
    }

    $sql ='SELECT * FROM Usuarios LIMIT 5;';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla usuarios");
    $busquedaUsuarios = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaUsuarios[] = $fila;
    }

    $sql ='SELECT * FROM Ejercicios LIMIT 5;';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla ejercicios");
    $busquedaEjercicios = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaEjercicios[] = $fila;
    }

?>
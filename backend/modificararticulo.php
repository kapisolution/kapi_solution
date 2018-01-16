<?php
if(isset($_GET["id"])&&$_GET["id"]!=""){ 
    $sql ='SELECT * FROM Articulos WHERE id = '.$_GET["id"] .';';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla articulos");
    $busquedaArticulos = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaArticulos[] = $fila;
    }
}
?>
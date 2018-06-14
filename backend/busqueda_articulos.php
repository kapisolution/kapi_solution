<?php
if(isset($_GET["search"])&&$_GET["search"]!=""){ 
    $sql ='SELECT * FROM Articulos WHERE titulo LIKE "%'.$_GET["search"] .'%" AND contenido LIKE "%'.$_GET["search"] .'%" ORDER BY nivel, rol;';
    $consulta = mysqli_query($con, $sql) or header('Location:/busqueda.php');
    $busquedaArticulos = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaArticulos[] = $fila;
    }
}
?>
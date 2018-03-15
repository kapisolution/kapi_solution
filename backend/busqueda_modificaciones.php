<?php
if(isset($_GET["search"])&&$_GET["search"]!=""){ 
    $sql ='SELECT * FROM Modificacion_articulo WHERE id IS NOT NULL AND titulo LIKE "%'.$_GET["search"] .'%" OR contenido LIKE "%'.$_GET["search"] .'%" ORDER BY nivel, rol;';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla modificaciones de articulos");
    $busquedaModificaciones = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaModificaciones[] = $fila;
    }
}
?>
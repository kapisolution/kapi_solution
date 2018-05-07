<?php
if(isset($_GET["search"])&&$_GET["search"]!=""){ 
    $sql ='SELECT * FROM Modificacion_articulo  a, Modificaciones m WHERE a.id <> 0 AND a.id_mod = m.id_modificacion AND a.titulo LIKE "%'.$_GET["search"] .'%" AND a.contenido LIKE "%'.$_GET["search"] .'%" ORDER BY a.nivel, a.rol;';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla modificaciones de articulos");
    $busquedaModificaciones = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaModificaciones[] = $fila;
    }
}
?>
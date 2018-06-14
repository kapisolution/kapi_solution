<?php
if(isset($_GET["search"])&&$_GET["search"]!=""){ 
    $sql ='SELECT * FROM Usuarios WHERE nick LIKE "%'.$_GET["search"].'%";';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla usuarios");
    $busquedaUsuarios = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaUsuarios[] = $fila;
    }
}
?>
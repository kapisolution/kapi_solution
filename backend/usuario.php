<?php
if(isset($_GET["id"])&&$_GET["id"]!=""){
    $sql ='SELECT * FROM Usuarios WHERE nick = "'. $_GET["id"] .'";';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla Usuarios");
    $usuario = mysqli_fetch_array($consulta);

    $sql ='SELECT * FROM Modificacion_articulo WHERE creador = "'. $_GET["id"] .'" ORDER BY fecha DESC;';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla contribuciones usuario");
    $contribucionesUsuarioNoPublicadas = array();
    while($fila = mysqli_fetch_array($consulta)){
        $contribucionesUsuarioNoPublicadas[] = $fila;
    }
    
    $sql ='SELECT * FROM Articulos WHERE creador = "'. $_GET["id"] .'" ORDER BY fecha DESC;';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla articulos de usuario");
    $contribucionesUsuario = array();
    while($fila = mysqli_fetch_array($consulta)){
        $contribucionesUsuario[] = $fila;
    }

}
?>
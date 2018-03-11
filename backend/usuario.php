<?php
if(isset($_GET["id"])&&$_GET["id"]!=""){
    $sql ='SELECT * FROM Usuarios WHERE nick = "'. $_GET["id"] .'";';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla Usuarios");
    $usuario = mysqli_fetch_array($consulta);
}
?>
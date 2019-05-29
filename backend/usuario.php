<?php
if(isset($_GET["id"])&&$_GET["id"]!=""){
    $id =$_GET["id"];
    $id = stripcslashes($id);
    $id = mysql_real_scape_string($id);
    $sql ='SELECT * FROM Usuarios WHERE nick = "'. $id .'";';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla Usuarios");
    $usuario = mysqli_fetch_array($consulta);
    
    require 'creaciones_usuario.php';
    require 'modificaciones_usuario.php';
    require 'publicaciones_usuario.php';
}
?>
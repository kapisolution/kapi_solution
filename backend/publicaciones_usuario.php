<?php
if(isset($_GET["id"])&&$_GET["id"]!=""){
	$sql ='SELECT * FROM Articulos WHERE creador = "'. $_GET["id"] .'" ORDER BY fecha DESC;';
	$consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla articulos de usuario");
	$publicaciones_usuario = array();
	while($fila = mysqli_fetch_array($consulta)){
		$publicaciones_usuario[] = $fila;
    }
    // echo $publicaciones_usuario[0]["creador"];
}
?>
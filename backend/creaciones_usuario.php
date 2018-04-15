<?php
if(isset($_GET["id"])&&$_GET["id"]!=""){
	$sql ='SELECT * FROM Modificacion_articulo a, Modificaciones m WHERE a.id = 0 AND a.id_mod = m.id_modificacion AND a.creador = "'. $_GET["id"] .'" ORDER BY fecha DESC;';
	$consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla creaciones usuario");
	$creaciones_usuario = array();
	while($fila = mysqli_fetch_array($consulta)){
		$creaciones_usuario[] = $fila;
    }
    // echo $creaciones_usuario[0]["creador"];
}
?>
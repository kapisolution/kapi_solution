<?php
	$sql ="SELECT * FROM Articulos ORDER BY fecha DESC;";
	$consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla articulos");
	$articulos = array();
	while($fila = mysqli_fetch_array($consulta)){
		$articulos[] = $fila;
	}
?>
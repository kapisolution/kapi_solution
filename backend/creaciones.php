<?php
	$sql ="SELECT * FROM Modificacion_articulo a, Modificaciones m WHERE a.id = 0 AND a.id_mod = m.id_modificacion ORDER BY fecha DESC;";
	$consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla articulos");
	$articulos = array();
	while($fila = mysqli_fetch_array($consulta)){
		$articulos[] = $fila;
    }
    echo $articulos[0]["votos_positivos"] . $articulos[0]["nivel"];
?>
<?php
        $sql ="SELECT * FROM Articulos;";
	    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla usuarios");
	    $articulos = array();
	    while($fila = mysqli_fetch_array($consulta)){
		    $articulos[] = $fila;
	    }
?>
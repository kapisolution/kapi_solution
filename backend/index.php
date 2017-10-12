<?php
        $sql ="SELECT * FROM Usuarios;";
	    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla usuarios");
	    $resultados = array();
	    while($fila = mysqli_fetch_array($consulta)){
		    $resultados[] = $fila;
	    }
?>
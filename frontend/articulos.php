<?php
    include 'backend/articulos.php';
		for ($i = 0; $i < sizeof($articulos) ; $i++){
			echo  '<p>' . $articulos[$i]['nivel']. $articulos[$i]['id']. $articulos[$i]['Nombre']. $articulos[$i]['rol']. $articulos[$i]['titulo']. $articulos[$i]['contenido'] . '</p>';

        }
?>

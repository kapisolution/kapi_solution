<div id="content">
	<h3> Bloque de contenido: </h3>
<?php
		 
		 for ($i = 0; $i < sizeof($resultados) ; $i++){
			echo  '<p>' . $resultados[$i]['nick']. $resultados[$i]['Nombre']. $resultados[$i]['Apellidos']. $resultados[$i]['rol'] . '</p>';
		}
?>
</div>
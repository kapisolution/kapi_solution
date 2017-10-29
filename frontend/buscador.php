<form class="form-wrapper cf" action="busqueda.php">
		<input name="search" type="text" placeholder=
			<?php 
			echo (isset($_GET["search"])&&$_GET["search"]!="")?'"'.$_GET["search"].'"':'"'.'Busqueda...'.'"';
			?>
		>
	  <button type="submit">Buscar</button>
</form>
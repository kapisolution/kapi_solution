<form class="form-wrapper cf" action="busqueda.php">
		<input name="search" type="text" placeholder=
			<?php 
		
				if(isset($_GET["search"])&&$_GET["search"]!=""){
						echo '"'.$_GET["search"].'"';
					}else{
						echo '"'.'Busqueda...'.'"';
					}
			?>
		>
	  <button type="submit">Buscar</button>
</form>
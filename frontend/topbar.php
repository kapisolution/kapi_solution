<div id="topbar" class="primario">
<a id="topbartitulo"  href="/">KAPI</a>
<?php
	include ('buscador.php');
?>
	<ul id="topbarbuttonlist">
		<li>
		<div class="botonmenu">
			<a href="https://github.com/kapisolution/kapi_solution" target="_blank"><img src="files/icon/svg/upload-to-cloud.svg" title="Github"></a>
			</div>
		</li>
        
        <li>
			<div class="botonmenu">
			<a href="/phpmyadmin" target="_blank"><img src="files/icon/svg/browser-visualization.svg" title="phpMyamin"></a>
			</div>
		</li>
        
        <li>
		<div class="botonmenu">
			<a href="/"><img src="files/icon/svg/apps.svg" title="Inicio"></a>
			</div>
		</li>
		<?php
		if(isset($_SESSION["login"])){
		?>
		<li>
		<div class="botonmenu">
			<a href="/backend/logout.php"><img src="files/icon/svg/close.svg" title="Salir"></a>
			</div>
		</li>
		<?php
		}else{
		?>
		<li>
		<div class="botonmenu">
			<a href="/login.php"><img src="files/icon/svg/user.svg" title="Registro"></a>
			</div>
		</li>
		<?php
		}
		?>
        </ul>
</div>
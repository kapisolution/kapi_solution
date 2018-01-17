<?php
     require 'backend/articulo.php';
?>
<div id="content">
  <div id="formularioarticulo">
<h2>Modificar artículo: <?php echo $busquedaArticulos[0]['id']; ?></h2>

<form id="formularioArticulo" enctype="multipart/form-data" action="backend/modificararticulo.php" method="POST" onsubmit="return updateValue()">

  Rol:
  <select name="rol" value="<?php echo $busquedaArticulos[0]['rol']; ?>">
    <option <?php if( $busquedaArticulos[0]['rol'] == 'informatico'){echo("selected");}?> value="informatico">Informático</option>
    <option <?php if( $busquedaArticulos[0]['rol'] == 'periodista'){echo("selected");}?> value="periodista">Periodista</option>
    <option <?php if( $busquedaArticulos[0]['rol'] == 'abogado'){echo("selected");}?> value="abogado">Abogado</option>

  </select>
  Nivel:
  <input id="nivel" value="<?php echo $busquedaArticulos[0]['nivel']; ?>" type="range" name="nivel" min="1" max="10"><br>

  Título<br>
  <input id="titulo" value="<?php echo $busquedaArticulos[0]['titulo']; ?>" type="text" name="titulo"><br> 

  Contenido<br>
  <textarea value="<?php echo $busquedaArticulos[0]['contenido']; ?>" class="input-block-level" id="summernote" name="contenido"><?php echo $busquedaArticulos[0]['contenido']; ?></textarea>
 <!-- <textarea id="contenido" name="contenido" form="formularioArticulo"></textarea><br>-->
 <div id="bloquecontenido"></div>

  <button type="submit">Enviar modificación</button>

</form> 
</div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>

<script>
  $('#summernote').summernote({
    placeholder: 'Escribe el contenido de tu articulo.',
    tabsize: 2,
    height: 400
  });

  var updateValue = function() {
	var contenido = $('textarea[name="contenido"]').html($('#summernote').code());
}
</script>

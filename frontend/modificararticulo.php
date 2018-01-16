<?php
     require 'backend/articulo.php';
?>
<div id="content">
  <div id="formularioarticulo">
<h2>Modificar artículo: <?php echo $busquedaArticulos[$i]['creador']; ?></h2>

<form id="formularioArticulo" enctype="multipart/form-data" action="backend/creararticulo.php" method="POST" onsubmit="return updateValue()">

  Rol:
  <select name="rol">
    <option value="informatico">Informático</option>
    <option value="periodista">Periodista</option>
    <option value="abogado">Abogado</option>
  </select>
  Nivel:
  <input id="nivel" type="range" name="nivel" min="1" max="10"><br>

  Título<br>
  <input id="titulo" value="<?php echo $busquedaArticulos[0]['titulo']; ?>" type="text" name="titulo"><br> 

  Contenido<br>
  <textarea class="input-block-level" id="summernote" name="contenido"></textarea>
 <!-- <textarea id="contenido" name="contenido" form="formularioArticulo"></textarea><br>-->
 <div id="bloquecontenido"></div>
  Imágen
  <input type="file" id="img" name="img"><br>

  <button type="submit">Crear articulo</button>

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

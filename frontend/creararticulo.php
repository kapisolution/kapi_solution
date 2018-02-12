<div id="content">
  <div id="formularioarticulo">
  <?php
    if(isset($_SESSION['login'])){
  ?>
<h2>Nuevo artículo:</h2>

<form id="formularioArticulo" enctype="multipart/form-data" action="backend/creararticulo.php" method="POST" onsubmit="return updateValue()">

  Rol:
  <select name="rol" required>
    <option value="informatico">Informático</option>
    <option value="periodista">Periodista</option>
    <option value="abogado">Abogado</option>
  </select>
  Nivel:
  <input id="nivel" type="range" name="nivel" min="1" max="10" required><br>

  Título<br>
  <input id="titulo" type="text" name="titulo" required><br> 

  Contenido<br>
  <textarea class="input-block-level" id="summernote" name="contenido" required></textarea>
 <!-- <textarea id="contenido" name="contenido" form="formularioArticulo"></textarea><br>-->
 <div id="bloquecontenido"></div>
  Imágen
  <input type="file" id="img" name="img" required><br>

  <button type="submit">Crear articulo</button>

</form> 
<?php
    }else{
    echo "Acceso restringido";
    }
  ?>
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

<div id="content">
  <div id="formularioarticulo">
<h2>Nuevo artículo:</h2>

<form id="formularioArticulo" enctype="multipart/form-data" action="backend/creararticulo.php" method="POST">

  Rol:
  <select name="rol">
    <option value="informatico">Informático</option>
    <option value="periodista">Periodista</option>
    <option value="abogado">Abogado</option>
  </select>
  Nivel:
  <input id="nivel" type="range" name="nivel" min="1" max="10"><br>

  Título<br>
  <input id="titulo" type="text" name="titulo"><br> 

  Contenido<br>
  <textarea id="contenido" name="contenido" form="formularioArticulo"></textarea><br>
  Imágen
  <input type="file" id="img" name="img"><br>

  <button type="submit">Crear articulo</button>

</form> 
</div>
</div>
<!--
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
<div id="summernote"></div>
<script>
  $('#contenido').summernote({
    placeholder: 'Escribe el contenido de tu articulo.',
    tabsize: 2,
    height: 200
  });
</script>

-->
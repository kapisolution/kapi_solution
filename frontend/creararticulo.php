<div id="content">
<h2>Nuevo artículo:</h2>

<form id="formularioArticulo" enctype="multipart/form-data" action="backend/creararticulo.php" method="POST">
 
  Rol:
  <select name="rol">
    <option value="informatico">Informático</option>
    <option value="periodista">Periodista</option>
    <option value="abogado">Abogado</option>
  </select><br>
  Nivel:
  <input type="range" name="nivel" min="1" max="10"> <br>
  Título<br>
  <input type="text" name="titulo"><br>
  Contenido<br>
  <textarea name="contenido" form="formularioArticulo"></textarea>
  Imágen<br>
  <input type="file" id="img" name="img"><br>
  <button type="submit">Crear articulo</button>
</form> 
</div>

<div class="container">
<div class="contentArticulo">
<div class="jumbotron" style="background-image: url(/files/img/rol/<?php echo $busquedaArticulos[$i]['rol'].'.jpg';?>);background-size:100% 200%;background-repeat:no-repeat;">
</div>
<?php
    if(isset($_SESSION['login'])){
  ?>
    <hr>
    <h1 class="display-3"><center>Crear artículo</center></h1>
    <!--Opciones elegir rol y nivel  
    
    -->
    <hr>
    <form id="formularioArticulo" enctype="multipart/form-data" action="backend/creararticulo.php" method="POST" onsubmit="return updateValue()">
    Título<br>
      <input id="titulo" class="form-control" type="text" name="titulo"><br> 
      <hr>
    Contenido<br>
      <textarea class="form-control" class="input-block-level" id="summernote" name="contenido"><?php echo $busquedaArticulos[0]['contenido']; ?></textarea>
      <hr>
      <div class="panel-group" id="accordion">
        <div class="panel panel-warning">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Pregunta 1</a>
                </h4>
            </div>
            <div id="collapse1" class="panel-collapse collapse">
                <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
                minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                commodo consequat.
            </div>
        </div>
      </div>
      <hr>
      <center>
        <button class="btn btn-success" type="submit">Enviar modificación</button>
      </center>
    </form>
    <?php
    }else{
    echo '<center><span class="label label-aviso">ACCESO RESTRINGIDO</span></center><br>';
    echo '<hr><center>Para poder crear contenido, debes estar registrado</center><br>';
    echo '<center><a href="/"><span class="label label-volver">VOLVER</span></a></center>';             
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

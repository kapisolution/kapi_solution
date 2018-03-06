<?php
require 'backend/articulo.php';
$titulo=$articulo['titulo'];
$contenido=$articulo['contenido'];
$creador=$articulo['creador'];
$rol=$articulo['rol'];
$nivel=$articulo['nivel'];

  if($rol=='informatico'){
    $color='red';
  }else if($rol=='abogado'){
    $color='black';
  }else   $color='blue';
?>
<div class="container containerArticulos">
  <div style="height:20px;background-color:<?php echo $color ?>;"></div>
  <hr>
<?php
    if(isset($_SESSION['login'])){
  ?>
      <div class="row text-center">
        <span class="label label-warning">Nivel <?php echo $nivel?></span>
        <span class="label label-danger"><?php echo $rol?></span>
      </div>
      <form id="formularioArticulo" enctype="multipart/form-data" action="backend/modificararticulo.php" method="POST" onsubmit="return updateValue()">
        <hr>
        <div class="form-group">
          <div class="panel-group">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a>Titulo</a>
                  <a href="javascript:void(0);"><span id="editarTitulo" onclick="editarTitulo()" class="label label-success pull-right">Editar
                    <span class="glyphicon glyphicon-pencil"></span>
                  </span></a>
                </h4>
              </div>
              <div id="titulo" class="panel-body">
                <?php echo $titulo?>
              </div>
              </div>
            </div>  
        </div>
        <hr>
        <div class="form-group">
          <div class="panel-group">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h4 class="panel-title">
                <a>Contenido</a>
                <a href="javascript:void(0);"><span onclick="editarContenido()" class="label label-success pull-right">Editar
                    <span class="glyphicon glyphicon-pencil"></span>
                  </span></a>
                </h4>
              </div>
                <div id="contenido" class="panel-body"><?php echo $contenido?></div>
              </div>
            </div>  
          </div>
          <hr>
        <div class="form-group">
          <div class="panel-group">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a>Preguntas</a>
                  
                </h4>
              </div>
              <div class="panel-body">
                <div class="panel-group" id="accordion">
                <?php
                    for($i=0; $i<$n_preguntas; $i++){?>
                        <div class="panel panel-warning">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                <a href="javascript:void(0);"><span onclick="editarPregunta(<?php echo $i?>)" class="label label-success pull-right">Editar
                    <span class="glyphicon glyphicon-pencil"></span></a>
                  </span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $i?>">Pregunta <?php echo $i+1?></a>
                                </h4>
                            </div>
                            <div id="collapse<?php echo $i ?>" class="panel-collapse collapse">
                                <div id="pregunta<?php echo $i?>" class="panel-body"><?php echo $preguntas[$i]['texto']?></div>
                            </div>
                        </div>
                    <?php
                }
                ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr>
        <div class="form-group">
          <label for="imagen">Añade una imagen</label>
          <input type="file" class="form-control-file" id="imagen">
          <small id="fileHelp" class="form-text text-muted">
        </div>
      </div>
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






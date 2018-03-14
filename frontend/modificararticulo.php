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
<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
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
                  Titulo
                  <a class="editar"><span id="editarTitulo" class="label label-success pull-right">Editar
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
                Contenido
                <a class="editar"><span id="editarContenido" class="label label-success pull-right">Editar
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
                Preguntas
                </h4>
              </div>
              <div class="panel-body">
                <div class="panel-group" id="accordion">
                <?php
                    for($i=0; $i<3; $i++){?>
                        <div class="panel panel-warning">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                <a class="editar"><span onclick="editarPregunta(<?php echo $i?>)" class="label label-success pull-right">Editar
                                  <span class="glyphicon glyphicon-pencil"></span></a>
                                </span>
                                    Pregunta <?php echo $i+1?>
                                </h4>
                            </div>
                            <div>
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
          <input type="file" class="form-control-file" id="imagen" name="imagen[]" multiple="multiple">
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

<script>
var titulo = document.getElementById("editarTitulo");
var contenido = document.getElementById("editarContenido");
titulo.addEventListener("click", editarTitulo);
contenido.addEventListener("click", editarContenido);
</script>

<script type="text/javascript">
  var updateValue = function() {

    $('#formularioArticulo').append("<input type='hidden' name='titulo' value='"+$('#titulo').html()+"'>");
    $('#formularioArticulo').append("<input type='hidden' name='contenido' value='"+$('#contenido').html()+"'>");
    $('#formularioArticulo').append("<input type='hidden' name='pregunta0' value='"+$('#pregunta0').html()+"'>");
    $('#formularioArticulo').append("<input type='hidden' name='pregunta1' value='"+$('#pregunta1').html()+"'>");
    $('#formularioArticulo').append("<input type='hidden' name='pregunta2' value='"+$('#pregunta2').html()+"'>");
    $('#formularioArticulo').append("<input type='hidden' name='id' value='"+<?php echo "'".$_GET['id']."'"?>+"'>");
    $('#formularioArticulo').append("<input type='hidden' name='rol' value='"+<?php echo "'".$articulo['rol']."'"?>+"'>");
    $('#formularioArticulo').append("<input type='hidden' name='nivel' value='"+<?php echo "'".$articulo['nivel']."'"?>+"'>");
    $('#formularioArticulo').append("<input type='hidden' name='creador' value='"+<?php echo "'".$articulo['creador']."'"?>+"'>");
    $.ajax({
      url:"backend/modificararticulo.php",
      type:"POST",
      data: $('#formularioArticulo')
    });
  }
  
</script>







<?php
session_start();

  if($_SESSION["rol"]=='informatico'){
    $color='#008080';
  }else if($_SESSION["rol"]=='abogado'){
    $color='#FF6347';
  }else   $color='#FFA500';
?>
<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
<div class="container containerArticulos">
  <div style="height:20px;background-color:<?php echo $color ?>;"></div>
  <ol class="breadcrumb">
    <li><a href="/comunidad.php">Comunidad</a></li>
    <li class="active">crear contenido</a></li>
  </ol>
<?php
    if(isset($_SESSION['login'])){
  ?>
      <div class="row text-center">
        <span class="label label-danger"><?php echo $_SESSION["rol"]?></span>
      </div>
      <form id="formularioArticulo" enctype="multipart/form-data"  method="POST" onsubmit="return updateValue()">
        <hr>
        <div class="form-group">
          <div class="panel-group">
            <div class="panel panel-default">
              <div class="panel-heading">
                <a class="editar"><span id="guardarTitulo" class="label label-success pull-right">Guardar
                  <span class="glyphicon glyphicon-save"></span>
                </span></a>
                <a class="editar"><span id="editarTitulo" class="label label-success pull-right">Editar
                  <span class="glyphicon glyphicon-pencil"></span>
                </span></a>
                <h4 class="panel-title">
                Crea el titulo de tu artículo 
                </h4>
              </div>
              <div id="titulo" class="panel-body" >
              </div>
              </div>
              <div class="alert alert-danger" role="alert" <?php if($_GET['enviar']=='emptyT'){ ?> style="display:block" <?php }else{ ?> style="display:none" <?php } ?> >El título es un campo obligatorio</div>
            </div>  
        </div>
        <hr>
        <div class="form-group">
          <div class="panel-group">
            <div class="panel panel-default">
              <div class="panel-heading">
                <a class="editar"><span id="guardarContenido" class="label label-success pull-right">Guardar
                    <span class="glyphicon glyphicon-save"></span>
                </span></a>
                <a class="editar"><span id="editarContenido" class="label label-success pull-right">Editar
                  <span class="glyphicon glyphicon-pencil"></span>
                </span></a>
                <h4 class="panel-title">
                Crea el contenido de tu artículo
                </h4>
              </div>
                <div id="contenido" class="panel-body"></div>
              </div>
              <div  class="alert alert-danger" role="alert" <?php if($_GET['enviar']=='emptyC'){ ?> style="display:block" <?php }else{ ?> style="display:none" <?php } ?> >El contenido es un campo obligatorio</div>
            </div>  
          </div>
          <hr>
        <div class="form-group">
          <div class="panel-group">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                Preguntas<small> Máximo 3 preguntas</small>
                </h4>
              </div>
              <div class="panel-body">
                <div class="panel-group" id="accordion">
                <?php
                    for($i=0; $i<3; $i++){?>
                      <label for="textoPregunta<?php echo $i?>">Introduce el texto de tu pregunta (Pregunta <?php echo $i+1?>)</label>
                      <input type="text" id="textoPregunta<?php echo $i?>" class="form-control" name="textoPregunta<?php echo $i?>">
                      <label for="respuestaA<?php echo $i?>">Respuesta A</label>
                      <input type="text" id="respuestaA<?php echo $i?>" class="form-control respuesta" name="respuestaA<?php echo $i?>">
                      <label for="respuestaB<?php echo $i?>">Respuesta B</label>
                      <input type="text" id="respuestaB<?php echo $i?>" class="form-control respuesta" name="respuestaB<?php echo $i?>">
                      <label for="respuestaC<?php echo $i?>">Respuesta C</label>
                      <input type="text" id="respuestaC<?php echo $i?>" class="form-control respuesta" name="respuestaC<?php echo $i?>">
                      <label for="respuestaD<?php echo $i?>">Respuesta D</label>
                      <input type="text" id="respuestaD<?php echo $i?>" class="form-control respuesta" name="respuestaD<?php echo $i?>">
                      <label>Marca la respuesta correcta</label><br>
                      <div class="correcta">
                        <input type="radio" value="A" class="elegirCorrecta" name="correcta<?php echo $i ?>" id="correctaA<?php echo $i ?>" >
                        <label for="correctaA<?php echo $i ?>"><span class="label label-default">A</span></label>
                        <input type="radio" value="B" class="elegirCorrecta" name="correcta<?php echo $i ?>" id="correctaB<?php echo $i ?>" >
                        <label for="correctaB<?php echo $i ?>"><span class="label label-default">B</span></label>
                        <input type="radio" value="C" class="elegirCorrecta"  name="correcta<?php echo $i ?>" id="correctaC<?php echo $i ?>">
                        <label for="correctaC<?php echo $i ?>"><span class="label label-default">C</span></label>
                        <input type="radio" value="D" class="elegirCorrecta"  name="correcta<?php echo $i ?>" id="correctaD<?php echo $i ?>" >
                        <label for="correctaD<?php echo $i ?>"><span class="label label-default">D</span></label>
                      </div>
                      <hr>
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
          <label for="seleccionNivel">Elige el nivel de tu artículo</label>
          <select class="form-control" id="nivel" name="nivel">
            <?php 
            for($i=1; $i<=$_SESSION["nivel"];$i++){?>
              <option><?php echo $i ?></option>
            <?php } ?>
          </select>
        </div>
        <hr>
        <div class="form-group">
          <label for="imagen">Añade una imagen</label>
          <input type="file" class="form-control-file" id="imagen" name="imagen[]" multiple="multiple">
          <small id="fileHelp" class="form-text text-muted">
        </div>
      <center>
        <button class="btn btn-success">Enviar modificación</button>
      </center>
    </form> 
<?php
  }else{
    require 'accesoRestringido.php';             
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
    var titulo = $('#titulo').html();
    var contenido = $('#contenido').html();
    if( $.trim(titulo) == ""){
      $('#formularioArticulo').attr("action","creararticulo.php?enviar=emptyT");
    }else if($.trim(contenido) == ""){
      $('#formularioArticulo').attr("action","creararticulo.php?enviar=emptyC");
    }else{
      $('#enviar').attr("type","submit");
      $('#formularioArticulo').attr("action","backend/creararticulo.php");
      $('#formularioArticulo').append("<input type='hidden' name='titulo' value='"+$('#titulo').html()+"'>");
      $('#formularioArticulo').append("<input type='hidden' name='contenido' value='"+$('#contenido').html()+"'>");
    }
  }
  
</script>






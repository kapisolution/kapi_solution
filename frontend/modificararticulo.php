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
            <div class="panel panel-default">
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
            <div class="panel panel-default">
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
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                Añade como máximo 3 preguntas a tu artículo
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







<?php 
include 'backend/articulos.php';
session_start();
$jsonText = file_get_contents("doc/preguntasTestNivel.json");
$preguntas = json_decode($jsonText, true);

$puntos =0;

?>
<div class="container containerIndex">
  <!-- <div class="jumbotron"> -->
    <div class="row">
    <?php 
     $logedIn=isset($_SESSION['login']);
     $sNivel=isset($_SESSION['formularioNivel']);
     if($_SESSION['nivel']==0){
      $_SESSION['formularioNivel']=0;
     }else{
      $_SESSION['formularioNivel']=1; 
     }
    if($logedIn){
      if(trim($_SESSION['formularioNivel'])==1){
        header('Location:/articulos.php');
      }
      else{ 
        ?>
        <script>
        $('body').removeClass().addClass('modal-open');
        $('body').attr("style","padding-right: 15px;");
        $('nav').hide();
        $('#footerBS.container-fluid.text-center.footerBS').hide();
        </script>
        <form id="testNivel" method="POST" action="backend/testNivel.php"> 
          <div class="modal fade in" role="dialog" id="myModal" tabindex="-1" aria-labelledby="myModalLabel" style="display: block;"> 
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Responde a 5 preguntas para determinar tu nivel</h4>
                </div>
                  <div class="modal-body"><?php
                    foreach($preguntas as $key => $pregunta) { ?>
                      <div class="panel panel-default">
                          <div class="panel-heading">
                              <h4 class="panel-title">
                                  Pregunta
                              </h4>
                          </div>
                          <div class="panel-body"><?php echo $pregunta['texto']?><br>
                              <div class="thumbnail">
                                  <div class="caption">
                                      <ul class="list-group">
                                        <?php foreach($pregunta['respuestas'] as $respuesta){ ?>
                                          <li class="list-group-item"><?php echo $respuesta['texto']?></li>
                                        <?php } ?>
                                      </ul>
                                      <div class="list-group text-center">
                                          <?php foreach($pregunta['respuestas'] as $i => $respuesta){?>

                                          <input type="radio" id="<?php echo $key.$i ?>" name="<?php echo $key ?>" value="<?php echo $respuesta['valor'] ?>">
                                          <label for="<?php echo $key.$i ?>" ><span class="label label-default"><?php echo $respuesta['valor'] ?></span></label>
                                          <?php } ?>
                                      
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                          <br>
                      <?php
                      }
                      ?>
                  </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn btn-default" >Enviar</button>
                  </div>
                </div>
              </div>
          </div>
          <form>
        <?php
        }
      }
      else{ ?>
        <div class="col-xs-12 col-sm-12 col-md-5 col-md-offset-1 col-lg-5 col-lg-offset-1">
          <center><img id="imgLogo" src="/files/icon/logoIndex_v2.png"></center>
          <h2>Conoce nuestra herramienta de autodefensa digital</h2>
          <h4>Con Kapi podrás aprender a protegerte digitalmente y a ayudar al resto de usuarios contribuyendo con tus artículos</h4>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
          <form class="form" action="/backend/signin.php"method="post"onsubmit="return validarSignIn()">
              <label for="inputNick">Nick</label>
              <input type="text" id="inputNick" class="form-control" name="alias" required autofocus>
              <label for="inputEmail">Email</label>
              <input type="email" id="correo" class="form-control" name="email" required autofocus>
              <label for="inputPassword">Contraseña</label>
              <input type="password" id="psw" class="form-control" name="pass" required>
              <label for="inputCheckPsw">Repite tu contraseña</label>
              <input type="password" id="inputCheckPsw" class="form-control" name="pass-repeat" onkeyup="return checkPass()"required>
              <div id="alert false" class="alert alert-danger" role="alert" style="display:none">Las contraseñas deben ser iguales</div>
              <div id="alert success" class="alert alert-success" role="alert" style="display:none">Las contraseñas son iguales</div>
              <hr>
              <center><label><center>ELIGE TU ROL</center></label></center>
              <div id="ElegirRol" class="rol">    
                  <input type="radio"  name="elegirRol" id="abogado" value="abogado">
                  <label for="abogado"><span class="label label-default">ABOGADO</span></label>
                  <input type="radio" name="elegirRol" id="informatico" value="informatico">
                  <label for="informatico"><span class="label label-default">INFORMATICO</span></label>
                  <input type="radio"  name="elegirRol" id="periodista" value="periodista">
                  <label for="periodista"><span class="label label-default">PERIODISTA</span></label>
              </div>
              <hr>
              <center><button id="bRegistro"class="btn btn-lg btn-success" type="submit">Regístrate</button></center>
            </form>
        </div>
      </div>
      <br>
      <div class="row">
        <div id="indexArticulos" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <h3>Visita nuestros artículos</h3><hr>
          <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
            <h4>En ellos encontrarás la información necesaria para<strong> protegerte digitalmente.</strong> 
            Estamos en un mundo donde la tecnología ocupa gran parte de nuestro día a día. En <strong>KapiSolution</strong> brindamos a las personas
            la oportunidad de aprender a defenderse mediante una herramienta comunitaria, donde el objetivo no es otro que repartir el conocimiento y hacer de la 
          tecnología un mundo mas seguro.</h4>
          <br>
          </div>
          <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
          <?php
                for ($i = 0; $i < 2 ; $i++){
            ?> 
                <div class="panel-group">
                  <div id="panel<?php echo $i?>" class="panel panel-default">
                      <div class="panel-heading">
                          <h4 class="panel-title">
                              <a id="creador<?php echo $i ?>"><?php echo "  ".$articulos[$i]['creador']?></a>
                              <small id="creador<?php echo $i ?>"><?php echo "  ".$articulos[$i]['fecha']?></small>                
                              <div class="pull-right">
                              <span id="rol<?php echo $i ?>" class="label label-warning"><?php echo $articulos[$i]['rol']?></span>
                              <span id="nivel<?php echo $i ?>"class="label label-danger"><?php echo "Nivel ".$articulos[$i]['nivel']?></span>
                              </div>
                          </h4>
                      </div>
                      <div class="panel-body">
                          <div class="pull-left">
                              <img id="imagen<?php echo $i ?>" class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $articulos[$i]['creador'].'.jpg'?>">
                          </div>
                          <div id="titulo<?php echo $i ?>" class="tituloBody text-center">
                              <?php echo $articulos[$i]['titulo'];?>
                          </div>    
                      </div>
                      <div class="accion pull-right">
                          <ul class="dropdown">
                          <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                          <ul class="dropdown-menu">
                          <li><a id="verArt<?php echo $i ?>" class="dropdown-item" href="/articulo.php?id=<?php echo $articulos[$i]['id']?>">Ver</a></li>
                          <li class="divider"></li>
                          <li><a id="editarArt<?php echo $i?>" <?php if((!isset($_SESSION['login'])||($articulos[$i]['rol']!= $_SESSION["rol"]) ||($articulos[$i]['nivel']> $_SESSION["nivel"]))){?>class="dropdown-item disabled"<?php } else{ ?> class="dropdown-item" href="/modificararticulo.php?id=<?php echo $articulos[$i]['id']?>" <?php } ?>>Editar</a></li>
                          </ul>
                      </div>
                  </div>
                </div>
                <br>
            <?php } ?>
          </div>
        </div>
      </div>
      <br>
      <div class="row">
        <div id="indexArticulos" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <h3>La comunidad es lo primero</h3><hr>
          <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
            <h4>Regístrate para disfrutar de toda la potencia de la aplicación</h4>
          <br>
          <h4>Podrás <strong>sugerir modificaciones de los artículos, crear nuevo contenido y realizar pruebas de nivel</strong> para certificarte como un experto 
          en la comunidad</h4>
          </div>
          <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
            <div class="panel-group">
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h4 class="panel-title text-center">
                        Como usuario registrado podrás
                      </h4>
                  </div>
                  <div class="panel-body">
                      <div class="pull-left">
                        <span class="glyphicon glyphicon-thumbs-up"></span>
                      </div>
                      <div id="cuerpoCajaRegistro" class="tituloBody pull-right">
                          <li>Crear nuevos artículos</li>
                          <li>Sugerir modificaciones</li>
                          <li>Realizar pruebas de nivel</li>
                      </div>    
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    <?php }
       ?>
    </div>
</div>
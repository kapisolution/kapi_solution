<?php 
$niv=$_SESSION['nivel']+1;
$jsonText = file_get_contents("doc/examenNivel".$niv.".json");
$preguntas = json_decode($jsonText, true);
$today = getdate();
?>
<div class="container containerExamenes">
<?php if($_SESSION['login']){ ?>
    <div class="datosExamenes">
        <center><img src="/files/icon/logoPruebasNivel.png" class="img-rounded imgExm">
        <h5><?php echo $today['weekday']?>, <?php echo $today['mday']?>-<?php echo $today['month']?>-<?php echo $today['year']?></h5>
        <h2>Prueba de nivel <?php echo $_SESSION['nivel']+1?></h2>
        <h4>
            <span class="label label-warning"><?php echo $_SESSION['rol']?></span>
            <span class="label label-primary">Nivel <?php echo $_SESSION['nivel']?></span>
        </h4></center>
    </div>
        <hr>
    <div>
        <form id="examen" method="POST" action="backend/examen.php"> 
                <?php
                $j=0;
                  foreach($preguntas as $key => $pregunta) {
                 ?>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                Pregunta <?php echo $j+=1 ?>
                            </h4>
                        </div>
                        <div class="panel-body"><h4><?php echo $pregunta['texto']?></h4>
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
                  <button type="submit" class="btn btn-default pull-right" >Enviar</button>
        <form>
    </div>
        <?php }else{ 
                require 'accesoRestringido.php';
            }
        ?>
</div>
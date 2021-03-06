<?php
    session_start();
    include '/backend/conexion.php';
    $id=$_GET["id"];
    $sql ='SELECT * FROM Votaciones_Contribuciones WHERE nick LIKE "'.$_SESSION['nick'].'" AND contribucion LIKE "'.$id.'";';
    $result=mysqli_query($con, $sql);
    if ($result){
        $fila = mysqli_fetch_array($result);
        $votaciones[] = $fila;
        $numRegistros = mysqli_num_rows($result);
    }else{
        echo ('La consulta de votaciones usuario ha fallado');
    }
    $sqlComentarios ='SELECT * FROM Votaciones_Contribuciones WHERE contribucion LIKE "'.$id.'";';
    $resultComentarios = mysqli_query($con, $sqlComentarios);
    if ($resultComentarios){
        $filaComentarios = mysqli_fetch_array($resultComentarios);
        $comentarios[] = $filaComentarios;
        $numComentarios = mysqli_num_rows($resultComentarios);
    }else{
        echo ('La consulta de votaciones comentarios ha fallado');
    }
    include '/backend/desconexion.php';
    require 'backend/modificacion.php';
    $articulo=$modificacionArticulo;
    $titulo=$articulo['titulo'];
    $contenido=$articulo['contenido'];
    $creador=$articulo['creador'];
    $rol=$articulo['rol'];
    $nivel=$articulo['nivel'];
    $imagen=1;

    if($rol=='informatico'){
        $color='#008080';
    }else if($rol=='abogado'){
        $color='#FF6347';
    }else   $color='#FFA500';
?>
<div class="container containerArticulos">
    <div style="height:20px;background-color:<?php echo $color ?>;"></div>
        <ol class="breadcrumb">
            <li><a href="/comunidad.php">Comunidad</a></li>
            <li><a href="/modificaciones.php">modificaciones</a></li>
            <li class="active"><?php echo $titulo ?></a></li>
        </ol>
    <?php if($_SESSION['login']){ ?>
        <h1><center><?php echo $titulo?></center></h1>
        <div class="row text-center">
            <span class="label label-primary"><?php echo $creador?></span>
            <span class="label label-warning">Nivel <?php echo $nivel?></span>
            <span class="label label-danger"><?php echo $rol?></span>
        </div>
        <hr>
        <?php
        if(file_exists(__DIR__.'/../files/img/articulos/'.$articulo['id_mod'])){
            $total_imagenes = count(glob(__DIR__.'/../files/img/articulos/'.$articulo['id_mod'].'/{*.jpg,*.gif,*.png}',GLOB_BRACE));
        ?>
            <div class="row">
                
                <div id="imagenesArticulo" class="carousel slide col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4 col-lg-4 col-lg-offset-4 imgArticulo" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="/files/img/articulos/<?php echo $articulo['id_mod'] ?>/1.jpg">
                        </div>
                    <?php
                        for($j=2; $j<=$total_imagenes ;$j++){?>
                            <div class="item">
                                <img src="/files/img/articulos/<?php echo $articulo['id_mod'] ?>/<?php echo $j?>.jpg">
                            </div>
                    <?php
                    }
                    ?>
                    </div>
                    <a class="left carousel-control" href="#imagenesArticulo" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#imagenesArticulo" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        <?php } ?>
        
        <div class="caja">
            <p><?php echo $contenido ?></p>
            <div class="panel-group" id="accordion">
        <?php
            for($i=0; $i<$n_preguntas; $i++){?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $i?>">Pregunta <?php echo $i+1?></a>
                        </h4>
                    </div>
                    <div id="collapse<?php echo $i ?>" class="panel-collapse collapse">
                        <div class="panel-body"><?php echo $preguntas[$i]['texto']?><br>
                            <div class="thumbnail">
                                <div class="caption">
                                    <ul class="list-group">
                                        <li class="list-group-item"><?php echo $preguntas[$i]['A']?></li>
                                        <li class="list-group-item"><?php echo $preguntas[$i]['B']?></li>
                                        <li class="list-group-item"><?php echo $preguntas[$i]['C']?></li>
                                        <li class="list-group-item"><?php echo $preguntas[$i]['D']?></li>
                                    </ul>
                                    <div class="list-group text-center" id="filtro">
                                        <input type="radio" id="respuestaA<?php echo $i ?>" onclick="comprobarRespuesta('A','<?php echo $preguntas[$i]['correcta']?>','opcionA<?php echo $i ?>')";>
                                        <label for="respuestaA<?php echo $i ?>"><span id="opcionA<?php echo $i ?>" class="label label-default">A</span></label>
                                        <input type="radio" id="respuestaB<?php echo $i ?>" onclick="comprobarRespuesta('B','<?php echo $preguntas[$i]['correcta']?>','opcionB<?php echo $i ?>')">
                                        <label for="respuestaB<?php echo $i ?>"><span id="opcionB<?php echo $i ?>" class="label label-default">B</span></label>
                                        <input type="radio" id="respuestaC<?php echo $i ?>" onclick="comprobarRespuesta('C','<?php echo $preguntas[$i]['correcta']?>','opcionC<?php echo $i ?>')">
                                        <label for="respuestaC<?php echo $i ?>"><span id="opcionC<?php echo $i ?>" class="label label-default">C</span></label>
                                        <input type="radio" id="respuestaD<?php echo $i ?>" onclick="comprobarRespuesta('D','<?php echo $preguntas[$i]['correcta']?>','opcionD<?php echo $i ?>')">
                                        <label for="respuestaD<?php echo $i ?>"><span id="opcionD<?php echo $i ?>" class="label label-default">D</span></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>
            </div>
        </div>
        <?php
        if(isset($_SESSION['login']) && $_SESSION['rol']==$rol && $_SESSION['nivel'] > $nivel && $numRegistros==0){
        ?>
        <div class="cajaVotos col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
            <form id="votarContribucion" method="POST" action="/backend/votos.php" onsubmit="return completarDatos()">
                <div id="votacion" class="form-group">
                    <div class="pull-left">
                        <input type="radio" class="votaciones" id="neg" value="negativo" name="voto" required>
                        <label for="neg"><h4><span class="label label-danger votos"><span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>Mejorable</span></h4></label>
                    </div>
                    <div class="pull-right">
                        <input type="radio" class="votaciones" id="pos" value="positivo" name="voto" required>
                        <label for="pos"><h4><span class="label label-success votos"><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span> Me gusta</span></h4></label>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="comentarios">Escribe tu comentario: Max 150 caracteres</label>
                    <textarea class="form-control"  rows="3" id="comentarios" name="comentario" onKeyUp="return limitar(event,this.value,100)" onKeyDown="return limitar(event,this.value,100)"></textarea>
                </div>
                <button class="btn btn-primary pull-right" type="submit" onclick="return comprobarVotos()">Enviar votos</button>
                <br><br>
                <div id="alertVotos" class="alert alert-danger" role="alert" style="display:none">Debes seleccionar una valoración</div>
            </form>
        </div>
        <?php } 
        else{ 
           if($votaciones[0]['voto']=="positivo"){ ?>
              <div id="alert success" class="alert alert-success" role="alert">Te ha gustado esta contribución</div>
           <?php } 
           else if($votaciones[0]['voto']=="negativo"){ ?>
            <div id="alert false" class="alert alert-danger" role="alert">No te ha gustado esta contribución</div>
        <?php }else{ ?>
            <div id="alert false" class="alert alert-warning" role="alert">Para poder votar debes tener mismo rol y nivel superior a la contribución.</div>
        <?php } } ?>
        <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
        </div>
        <div class="row ultimaFila">
            <div class="cajaComentarios col-xs-12 col-sm-5 col-sm-offset-2 col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2 pull-right">      
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">Comentarios de otros usuarios</div>
                <hr>
                <?php
                if($numComentarios == 0){ ?>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div id="alert false" class="alert alert-info" role="alert">Aún no existen comentarios</div>
                        </div>
                    </div>
                <?php }
                else{
                    for($i=0;$i<$numComentarios;$i++){?>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <li><a><?php echo $comentarios[$i]['nick'] ?> -- "<?php echo $comentarios[$i]['comentario']?>"</a></li>
                        </div>
                    </div>
                    <?php
                    }
                }
                ?>
            </div>
        </div>
        <?php }else{ 
                require 'accesoRestringido.php';
            }
        ?>
</div>
<script>
    function completarDatos(){
        $('#votarContribucion').append("<input type='hidden' name='usuario' value='<?php echo $_SESSION['nick'] ?>'>");
        $('#votarContribucion').append("<input type='hidden' name='contribucion' value='<?php echo $_GET['id'] ?>'>");
    }
</script>

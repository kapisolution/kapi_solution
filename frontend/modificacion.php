<?php
    
    require 'backend/modificacion.php';
    $articulo=$modificacionArticulo;
    $titulo=$articulo['titulo'];
    $contenido=$articulo['contenido'];
    $creador=$articulo['creador'];
    $rol=$articulo['rol'];
    $nivel=$articulo['nivel'];
    $imagen=1;

    if($rol=='informatico'){
        $color='red';
    }else if($rol=='abogado'){
        $color='black';
    }else   $color='blue';
?>
<div class="container containerArticulos">
    <div style="height:20px;background-color:<?php echo $color ?>;"></div>
    <hr>
    <?php if($_SESSION['login']){ ?>
        <h1><center><?php echo $titulo?></center></h1>
        <hr>
        <div class="row text-center">
            <span class="label label-primary"><?php echo $creador?></span>
            <span class="label label-warning">Nivel <?php echo $nivel?></span>
            <span class="label label-danger"><?php echo $rol?></span>
        </div>
        <hr>

        <div class="row">
            <div id="imagenesArticulo" class="carousel slide col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3 imgArticulo" data-ride="carousel">
                <?php
                    for($j=1; $j<4 ;$j++){?>
                        <ol class="carousel-indicators">
                            <li data-target="#imagenesArticulo" data-slide-to="<?php echo $j?>" class="active"></li>
                            <li data-target="#imagenesArticulo" data-slide-to="<?php echo $j?>"></li>
                            <li data-target="#imagenesArticulo" data-slide-to="<?php echo $j?>"></li>
                        </ol>
                <?php
                    }
                ?>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="/files/img/articulos/1.jpg">
                    </div>
                <?php
                    for($j=2; $j<4 ;$j++){?>
                        <div class="item">
                            <img src="/files/img/articulos/<?php echo $j?>.jpg">
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
        <hr>
        <div class="caja">
            <p><?php echo $contenido ?></p>
        <hr>
            <div class="panel-group" id="accordion">
        <?php
            for($i=0; $i<$n_preguntas; $i++){?>
                <div class="panel panel-warning">
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
        <hr>
        <?php
        if(isset($_SESSION['login']) && $_SESSION['rol']==$rol && $_SESSION['nivel'] > $nivel){
        ?>
        <div class="caja votos col-xs-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
            <div class="pull-left">
                <h4><span class="label label-danger votos" onclick="votar('negativo')"><span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span> No me gusta</span></h4>
            </div>
            <div class="pull-right">
                <h4><span class="label label-success votos" onclick="votar('positivo')"><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span> Me gusta</span></h4>
            </div>
        </div>
        <?php } ?>
        <div class="row ultimaFila">
            <div id="relacionados" class="caja col-xs-12 col-sm-5 col-md-5 col-lg-5">      
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">Articulos relacionados</div>
                <br>
                <hr>
                <?php
                for($i=0;$i<$n_relacionados;$i++){?>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <li><a href="articulo.php?id=<?php echo $relacionados[$i]['id']?>"><?php echo $relacionados[$i]['titulo']?></a></li>
                    </div>
                </div>
                <?php
                }
                ?>
            </div>
            <!--<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2"></div>-->
            <div class="caja col-xs-12 col-sm-5 col-sm-offset-2 col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2">      
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">Examenes nivel <?php echo $nivel?></div>
                <br>
                <hr>
                <?php
                for($i=0;$i<2;$i++){?>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">Examen <?php echo $i?></div>
                </div>
                <?php
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
    function comprobarRespuesta(opcion,correcta,elemento){
        x = document.getElementsByClassName("label label-success respuesta");
        for (i = 0; i < x.length; i++) {
            x[i].className='label label-default';
        }
        y = document.getElementsByClassName("label label-danger respuesta");
        for (i = 0; i < y.length; i++) {
            y[i].className='label label-default';
        }
        if(opcion==correcta){
            $("#"+elemento).removeClass().addClass('label label-success respuesta');
        }else   $("#"+elemento).removeClass().addClass('label label-danger respuesta');
    }
</script>
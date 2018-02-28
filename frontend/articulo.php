<?php
     require 'backend/articulo.php';

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
    <h1><center><?php echo $titulo?></center></h1>
    <hr>
    <div class="row text-center">
        <span class="label label-primary"><?php echo $creador?></span>
        <span class="label label-warning">Nivel <?php echo $nivel?></span>
        <span class="label label-danger"><?php echo $rol?></span>
    </div>
    <hr>

    <div class="row">
        <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3"></div>
        <div id="imagenesArticulo" class="carousel slide col-xs-10 col-sm-8 col-md-6 col-lg-6 imgArticulo" data-ride="carousel">
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
        <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3"></div>
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
                    <div class="panel-body"><?php echo $preguntas[$i]['texto']?></div>
                </div>
            </div>
        <?php
        }
        ?>
        </div>
    </div>
    <hr>
    <div class="row ultimaFila">
        <div class="caja col-xs-5 col-sm-5 col-md-5 col-lg-5">      
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">Articulos relacionados</div>
            <br>
            <hr>
            <?php
            for($i=0;$i<$n_relacionados;$i++){?>
            <div class="row">
                <div id="relacionados" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <li><a href="articulo.php?id=<?php echo $relacionados[$i]['id']?>"><?php echo $relacionados[$i]['titulo']?></a></li>
                </div>
            </div>
            <?php
            }
            ?>
        </div>
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2"></div>
        <div class="caja col-xs-5 col-sm-5 col-md-5 col-lg-5">      
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
</div>
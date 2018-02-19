<?php
     require 'backend/articulo.php';

    $i=0;
    $titulo=$busquedaArticulos[$i]['titulo'];
    $contenido=$busquedaArticulos[$i]['contenido'];
    $creador=$busquedaArticulos[$i]['creador'];
    $rol=$busquedaArticulos[$i]['rol'];
    $nivel=$busquedaArticulos[$i]['nivel'];
?>

<div class="jumbotron" style="background-image: url(/files/img/rol/<?php echo $busquedaArticulos[$i]['rol'].'.jpg';?>);background-size:100% 200%;background-repeat:no-repeat;">
</div>
<div class="container">
    <hr>
    <h1 class="display-3"><center><?php echo $titulo?></center></h1>
    <hr>
    <span class="label label-primary"><?php echo $creador?></span>
    <span class="label label-warning">Nivel <?php echo $nivel?></span>
    <span class="label label-danger"><?php echo $rol?></span>
    <hr>
    <div class="row" id="contenidoArticulo">
        <p><?php echo $contenido ?></p>
    
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
    </div>
</div>
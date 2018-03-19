<?php
    include 'backend/articulos.php';
?>
<div class="container">
  <div class="row">
  <hr>
    <div class="album py-5 bg-light">
      <?php
          for ($i = 0; $i < sizeof($articulos) ; $i++){
      ?> 
          <div class="panel-group">
              <div class="panel panel-primary">
                  <div class="panel-heading">
                      <h4 class="panel-title">
                        <small><?php echo "  ".$articulos[$i]['creador']?></small>                
                        <div class="pull-right">
                          <span class="label label-warning"><?php echo $articulos[$i]['rol']?></span>
                          <span class="label label-danger"><?php echo "Nivel ".$articulos[$i]['nivel']?></span>
                        </div>
                      </h4>
                  </div>
                  <div class="panel-body">
                      <div class="pull-left">
                        <img class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $articulos[$i]['creador'].'.jpg'?>">
                      </div>
                      <div class="tituloBody text-center">
                        <?php echo $articulos[$i]['titulo'];?>
                      </div>    
                  </div>
                  <div class="accion pull-right">
                    <ul class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/articulo.php?id=<?php echo $articulos[$i]['id']?>">Ver</a></li>
                        <li class="divider"></li>
                        <li><a class="dropdown-item" href="/modificararticulo.php?id=<?php echo $articulos[$i]['id']?>">Editar</a></li>
                    </ul>
                  </div>
              </div>
          </div>
          <hr>
      <?php } ?>
      </div>
    </div>
</div>

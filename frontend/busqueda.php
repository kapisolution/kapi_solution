<?php
     require 'backend/busqueda.php';
?>

<div class="container">
    <hr>
    <h3><center>Resultados de: <?php echo $_GET["search"] ?></center> </h3>
    <br>
        <div class="btn-group">
            <button type="button" class="btn btn-primary" onclick="mostrarTarjetas(event, 'usuarios')">Usuarios</button>
            <button type="button" class="btn btn-primary" onclick="mostrarTarjetas(event, 'articulos')">Artículos</button>
            <!--<button type="button" class="btn btn-primary" onclick="mostrarTarjetas(event, 'ejercicios')">Ejercicios</button>-->
        </div>
    <br>
    <!--BusquedaUsuarios-->
    <div class="album py-5 bg-light" id="usuarios">
    <hr>
    <?php
        for ($i = 0; $i < sizeof($busquedaUsuarios) ; $i++){
    ?> 
        <div class="panel-group">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <div>
                            <?php echo $busquedaUsuarios[$i]['nick'];?><small><?php echo "  ".$busquedaUsuarios[$i]['email']?></small>                
                        </div>
                    </h4>
                </div>
                <div class="panel-body">
                    <div class="pull-left">
                        <img class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $busquedaUsuarios[$i]['nick'].'.jpg'?>">
                    </div>
                    <div class="text-center">
                        <span class="label label-warning"><?php echo $busquedaUsuarios[$i]['rol']?></span>
                        <span class="label label-danger"><?php echo "Nivel ".$busquedaUsuarios[$i]['nivel']?></span>
                    </div> 
                </div>
                <a href="usuario.php?id=<?php echo $busquedaUsuarios[$i]['nick']?>"><span id="verPerfil" class="accion label label-success pull-right">Ver Perfil</span></a>
            </div>
        </div>
        <hr>
    <?php } ?>
    </div>
    <!--BusquedaArticulos-->
    <div class="album py-5 bg-light" id="articulos" style="display:none">
    <hr>
    <?php
        for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
    ?> 
        <div class="panel-group">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <div class="pull-right">
                            <span class="label label-warning"><?php echo $busquedaArticulos[$i]['rol']?></span>
                            <span class="label label-danger"><?php echo "Nivel ".$busquedaArticulos[$i]['nivel']?></span>
                        </div>
                    </h4>
                </div>
                <div class="panel-body">
                    <div class="pull-left">
                        <img class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $busquedaArticulos[$i]['creador'].'.jpg'?>">
                    </div>
                    <div class="tituloBody text-center">
                        <?php echo $busquedaArticulos[$i]['titulo'];?><small><?php echo "  ".$busquedaArticulos[$i]['creador']?></small>                
                    </div>    
                </div>
                <div class="accion pull-right">
                    <ul class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/articulo.php?id=<?php echo $busquedaArticulos[$i]['id']?>">Ver</a></li>
                        <li class="divider"></li>
                        <li><a class="dropdown-item" href="/modificararticulo.php?id=<?php echo $busquedaArticulos[$i]['id']?>">Editar</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <hr>
    <?php } ?>
</div>



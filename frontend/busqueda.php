<?php
     require 'backend/busqueda.php';
?>
<div class="container">
    <hr>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
            <div class="list-group">
                <button id="usr" type="button"  class="list-group-item disabled" onclick="mostrarTarjetas(event, 'usuarios', 'usr')">
                    Usuarios
                </button>
                <button id="art" type="button" class="list-group-item" onclick="mostrarTarjetas(event, 'articulos', 'art')">Articulos</button>
                <button id="crea" type="button" class="list-group-item" onclick="mostrarTarjetas(event, 'creaciones', 'crea')">Creaciones</button>
                <button id="mod" type="button" class="list-group-item" onclick="mostrarTarjetas(event, 'modificaciones', 'mod')">Modificaciones</button>
            </div>
                 
        </div>
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
            <!--BusquedaUsuarios-->
            <div class="album py-5 bg-light" id="usuarios">
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
            <?php
                for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
            ?> 
                <div class="panel-group">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <small><?php echo "  ".$busquedaArticulos[$i]['creador']?></small>
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
                                <?php echo $busquedaArticulos[$i]['titulo'];?>                
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
            <!--BusquedaCreaciones-->
            <div class="album py-5 bg-light" id="creaciones" style="display:none">
            <?php
                for ($i = 0; $i < sizeof($busquedaCreaciones) ; $i++){
            ?> 
                <div class="panel-group">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <small><?php echo "  ".$busquedaCreaciones[$i]['creador']?></small>
                                <div class="pull-right">
                                    <span class="label label-warning"><?php echo $busquedaCreaciones[$i]['rol']?></span>
                                    <span class="label label-danger"><?php echo "Nivel ".$busquedaCreaciones[$i]['nivel']?></span>
                                </div>
                            </h4>
                        </div>
                        <div class="panel-body">
                            <div class="pull-left">
                                <img class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $busquedaCreaciones[$i]['creador'].'.jpg'?>">
                            </div>
                            <div class="tituloBody text-center">
                                <?php echo $busquedaCreaciones[$i]['titulo'];?>
                            </div>    
                        </div>
                        <div class="accion pull-right">
                            <ul class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/articulo.php?id=<?php echo $busquedaCreaciones[$i]['id']?>">Ver</a></li>
                                <li class="divider"></li>
                                <li><a class="dropdown-item" href="/modificararticulo.php?id=<?php echo $busquedaCreaciones[$i]['id']?>">Editar</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <hr>
            <?php } ?>
            </div>
            <!--BusquedaModificaciones-->
            <div class="album py-5 bg-light" id="modificaciones" style="display:none">
            <?php
                for ($i = 0; $i < sizeof($busquedaModificaciones) ; $i++){
            ?> 
                <div class="panel-group">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <small><?php echo "  ".$busquedaModificaciones[$i]['creador']?></small>                
                                <div class="pull-right">
                                    <span class="label label-warning"><?php echo $busquedaModificaciones[$i]['rol']?></span>
                                    <span class="label label-danger"><?php echo "Nivel ".$busquedaModificaciones[$i]['nivel']?></span>
                                </div>
                            </h4>
                        </div>
                        <div class="panel-body">
                            <div class="pull-left">
                                <img class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $busquedaModificaciones[$i]['creador'].'.jpg'?>">
                            </div>
                            <div class="tituloBody text-center">
                                <?php echo $busquedaModificaciones[$i]['titulo'];?>
                            </div>    
                        </div>
                        <div class="accion pull-right">
                            <ul class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/articulo.php?id=<?php echo $busquedaModificaciones[$i]['id']?>">Ver</a></li>
                                <li class="divider"></li>
                                <li><a class="dropdown-item" href="/modificararticulo.php?id=<?php echo $busquedaModificaciones[$i]['id']?>">Editar</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <hr>
            <?php } ?>
            </div>
        </div>
    </div>
</div>



<?php
     require 'backend/busqueda.php';
     $contador=0;
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
                    <div id="panelUsuarios<?php echo $i?>" class="panel panel-default" <?php if($i>4){?>style="display:none"<?php } ?>>
                        <div class="panel-heading">
                            <h4 class="panel-title">                
                                <div class="pull-left">
                                    <span class="label label-warning"><?php echo $busquedaUsuarios[$i]['rol']?></span>
                                    <span class="label label-danger"><?php echo "Nivel ".$busquedaUsuarios[$i]['nivel']?></span>
                                </div>
                            </h4>
                        </div>
                        <div class="panel-body">
                            <div class="pull-left">
                                <img class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $busquedaUsuarios[$i]['nick'].'.jpg'?>">
                            </div>
                            <div class="text-center">
                                <h4><?php echo $busquedaUsuarios[$i]['nick'];?><small><?php echo "  ".$busquedaUsuarios[$i]['email']?></small></h4>
                            </div> 
                        </div>
                        <h4><a href="usuario.php?id=<?php echo $busquedaUsuarios[$i]['nick']?>"><span id="verPerfil" class="accion label label-success pull-right">Ver Perfil</span></a></h4>
                    </div>
                </div>
                <hr>
            <?php } ?>
            <br>
            <center><span class="label label-default" onclick="cargarUsuarios(<?php echo $contador+5?>,<?php echo sizeof($busquedaUsuarios)?>)">Cargar Mas</span></center>  
            </div>
            <!--BusquedaArticulos-->
            <div class="album py-5 bg-light" id="articulos" style="display:none">
            <?php
                for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
            ?> 
                <div class="panel-group">
                    <div id="panelArticulos<?php echo $i?>" class="panel panel-default" <?php if($i>4){?>style="display:none"<?php } ?>>
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <?php echo "  ".$busquedaArticulos[$i]['creador']?>
                                <small><?php echo "  ".$busquedaArticulos[$i]['fecha']?></small>
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
                                <li><a id="editarArt<?php echo $i?>" <?php if((!isset($_SESSION['login'])||($busquedaArticulos[$i]['rol']!= $_SESSION["rol"]) ||($busquedaArticulos[$i]['nivel']> $_SESSION["nivel"]))){?>class="dropdown-item disabled"<?php } else{ ?> class="dropdown-item" href="/modificararticulo.php?id=<?php echo $busquedaArticulos[$i]['id']?>" <?php } ?>>Editar</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <br>
            <center><span class="label label-default" onclick="cargarArticulos(<?php echo $contador+5?>, <?php echo sizeof($busquedaArticulos)?>)">Cargar Mas</span></center>  
            </div>
            <!--busquedaModificaciones-->
            <div class="album py-5 bg-light" id="creaciones" style="display:none">
            <?php
                for ($i = 0; $i < sizeof($busquedaModificaciones) ; $i++){
            ?> 
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <?php echo "  ".$busquedaArticulos[$i]['creador']?>
                                <small><?php echo "  ".$busquedaArticulos[$i]['fecha']?></small>
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
                                <li><a <?php if(!isset($_SESSION['login'])) { ?> class="dropdown-item disabled"<?php } else{ ?> class="dropdown-item" href="/creacion.php?id=<?php echo $busquedaModificaciones[$i]['id']?>" <?php } ?>>Ver</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <?php 
                    $positivos=($busquedaModificaciones[$i]['votos_positivos']*100)/($busquedaModificaciones[$i]['votos_positivos']+$busquedaModificaciones[$i]['votos_negativos']);
                    $negativos=($busquedaModificaciones[$i]['votos_negativos']*100)/($busquedaModificaciones[$i]['votos_positivos']+$busquedaModificaciones[$i]['votos_negativos']);
                ?>
                <!-- Progress bar con votos positivos, negativos de las modificaciones -->
                <div class="progress" id="barra<?php echo $i?>" <?php if($i>4){?>style="display:none"<?php } ?>>
                    <div class="progress-bar progress-bar-success progress-bar-striped" style="width: <?php echo $positivos?>%">
                        <span class="glyphicon glyphicon-thumbs-up"><?php echo round($positivos, 0, PHP_ROUND_HALF_UP);?>%</span>
                    </div>
                    <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: <?php echo $negativos?>%">
                        <span class="glyphicon glyphicon-thumbs-down"><?php echo round($negativos, 0, PHP_ROUND_HALF_UP);?>%</span>
                    </div>
                </div>
            <?php } ?>
            </div>
            <!--BusquedaModificaciones-->
            <div class="album py-5 bg-light" id="modificaciones" style="display:none">
            <?php
                for ($i = 0; $i < sizeof($busquedaModificaciones) ; $i++){
            ?> 
                <div class="panel-group">
                    <div id="panelModificaciones<?php echo $i?>" class="panel panel-default" <?php if($i>4){?>style="display:none"<?php } ?>>
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <?php echo "  ".$busquedaArticulos[$i]['creador']?>
                                <small><?php echo "  ".$busquedaArticulos[$i]['fecha']?></small>                
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
                                <li><a <?php if(!isset($_SESSION['login'])) { ?> class="dropdown-item disabled"<?php } else{ ?> class="dropdown-item" href="/creacion.php?id=<?php echo $busquedaModificaciones[$i]['id']?>" <?php } ?>>Ver</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <?php 
                    $positivos=($busquedaModificaciones[$i]['votos_positivos']*100)/($busquedaModificaciones[$i]['votos_positivos']+$busquedaModificaciones[$i]['votos_negativos']);
                    $negativos=($busquedaModificaciones[$i]['votos_negativos']*100)/($busquedaModificaciones[$i]['votos_positivos']+$busquedaModificaciones[$i]['votos_negativos']);
                ?>
                <!-- Progress bar con votos positivos, negativos de las modificaciones -->
                <div class="progress" id="barra<?php echo $i?>" <?php if($i>4){?>style="display:none"<?php } ?>>
                    <div class="progress-bar progress-bar-success progress-bar-striped" style="width: <?php echo $positivos?>%">
                        <span class="glyphicon glyphicon-thumbs-up"><?php echo round($positivos, 0, PHP_ROUND_HALF_UP);?>%</span>
                    </div>
                    <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: <?php echo $negativos?>%">
                        <span class="glyphicon glyphicon-thumbs-down"><?php echo round($negativos, 0, PHP_ROUND_HALF_UP);?>%</span>
                    </div>
                </div>
            <?php } ?>
            <br>
            <center><span class="label label-default" onclick="cargarModificaciones(<?php echo $contador+5?>, <?php echo sizeof($busquedaModificaciones)?>)">Cargar Mas</span></center>  
            </div>
        </div>
    </div>
</div>



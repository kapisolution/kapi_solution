<?php
     require 'backend/busqueda.php';
     $contador=0;
?>
<div class="container">
    <hr>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
            <div class="list-group">
                <button id="usr" type="button"  class="list-group-item disabled" onclick="mostrarTarjetas(event, 'albumUsuarios', 'usr')">
                    Usuarios
                </button>
                <button id="art" type="button" class="list-group-item" onclick="mostrarTarjetas(event, 'articulos', 'art')">Articulos</button>
                <button id="crea" type="button" class="list-group-item" onclick="mostrarTarjetas(event, 'creaciones', 'crea')">Creaciones</button>
                <button id="mod" type="button" class="list-group-item" onclick="mostrarTarjetas(event, 'modificaciones', 'mod')">Modificaciones</button>
            </div>         
        </div>
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
            <!--BusquedaUsuarios-->
            <div id="albumUsuarios" class="album py-5 bg-light">
            <?php
                if(sizeof($busquedaUsuarios)==0){?>
                    <div  class='alert alert-info' role='alert'>No hay resultados</div>
            <?php }else{
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
                                    <a id="refUsr<?php echo $i ?>" href="usuario.php?id=<?php echo $busquedaUsuarios[$i]['nick'];?>"><h4><?php echo $busquedaUsuarios[$i]['nick'];?><small><?php echo "  ".$busquedaUsuarios[$i]['email']?></small></h4></a>
                                </div> 
                            </div>
                            <h4><a href="usuario.php?id=<?php echo $busquedaUsuarios[$i]['nick']?>"><span id="verPerfil" class="accion label label-success pull-right">Ver</span></a></h4>
                        </div>
                    </div>
                    <?php } ?>
                    <hr>
                
                <center><span id="cargarUsr" class="label label-default cargar" onclick="cargarUsuarios(<?php echo $contador+5?>,<?php echo sizeof($busquedaUsuarios)?>)">Cargar Mas</span></center>  
            <?php } ?>
            </div>
            <!--BusquedaArticulos-->
            <div class="album py-5 bg-light" id="articulos" style="display:none">
            <?php
                if(sizeof($busquedaArticulos)==0){?>
                    <div  class='alert alert-info' role='alert'>No hay resultados</div>
                <?php }else{
                    for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
                ?> 
                    <div class="panel-group">
                        <div id="panelArticulos<?php echo $i?>" class="panel panel-default" <?php if($i>4){?>style="display:none"<?php } ?>>
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <?php echo "  ".$busquedaArticulos[$i]['creador']?>
                                    <div class="pull-right">
                                        <span class="label label-warning"><?php echo $busquedaArticulos[$i]['rol']?></span>
                                        <span class="label label-danger"><?php echo "Nivel ".$busquedaArticulos[$i]['nivel']?></span>  
                                    </div><br>
                                    <small><?php echo "  ".$busquedaArticulos[$i]['fecha']?></small>
                                </h4>
                            </div>
                            <div class="panel-body">
                                <div class="pull-left">
                                    <img class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $busquedaArticulos[$i]['creador'].'.jpg'?>">
                                </div>
                                <div class="tituloBody text-center">
                                        <a id="refArt<?php echo $i ?>" href="articulo.php?id=<?php echo $busquedaArticulos[$i]['id'];?>"><?php echo $busquedaArticulos[$i]['titulo'];?></a>                
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
                <hr>
                <center><span id="cargarArt" class="label label-default cargar" onclick="cargarArticulos(<?php echo $contador+5?>, <?php echo sizeof($busquedaArticulos)?>)">Cargar Mas</span></center>  
            <?php } ?>
            </div>
            <!--busquedaCreaciones-->
            <div class="album py-5 bg-light" id="creaciones" style="display:none">
            <?php
                if(sizeof($busquedaCreaciones)==0){?>
                    <div  class='alert alert-info' role='alert'>No hay resultados</div>
                <?php }else{
                    for ($i = 0; $i < sizeof($busquedaCreaciones) ; $i++){
                ?> 
                    <div class="panel-group">
                        <div id="panelCreaciones<?php echo $i?>" class="panel panel-default" <?php if($i>4){?>style="display:none"<?php } ?>>
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <?php echo "  ".$busquedaCreaciones[$i]['creador']?>
                                    
                                    <div class="pull-right">
                                        <span class="label label-warning"><?php echo $busquedaCreaciones[$i]['rol']?></span>
                                        <span class="label label-danger"><?php echo "Nivel ".$busquedaCreaciones[$i]['nivel']?></span>
                                    </div><br>
                                    <small><?php echo "  ".$busquedaCreaciones[$i]['fecha']?></small>                
                                </h4>
                            </div>
                            <div class="panel-body">
                                <div class="pull-left">
                                    <img class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $busquedaCreaciones[$i]['creador'].'.jpg'?>">
                                </div>
                                <div class="tituloBody text-center">
                                    <a id="refArt<?php echo $i ?>" href="creacion.php?id=<?php echo $busquedaCreaciones[$i]['id_mod'];?>"><?php echo $busquedaCreaciones[$i]['titulo'];?></a>                
                                </div>    
                            </div>
                            <div class="accion pull-right">
                                <ul class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a <?php if(!isset($_SESSION['login'])) { ?> class="dropdown-item disabled"<?php } else{ ?> class="dropdown-item" href="/creacion.php?id=<?php echo $busquedaCreaciones[$i]['id']?>" <?php } ?>>Ver</a></li>
                                </ul>
                            </div>
                        </div>
                        <?php
                        if($articulos[$i]['votos_positivos'] == 0 && $articulos[$i]['votos_negativos'] == 0){
                            $positivos=50;
                            $negativos=50;
                        }
                        else{
                            $positivos=($articulos[$i]['votos_positivos']*100)/($articulos[$i]['votos_positivos']+$articulos[$i]['votos_negativos']);
                            $negativos=($articulos[$i]['votos_negativos']*100)/($articulos[$i]['votos_positivos']+$articulos[$i]['votos_negativos']);
                        }
                        ?>
                        <!-- Progress bar con votos positivos, negativos de las modificaciones -->
                        <div class="progress" id="barra<?php echo $i?>" <?php if($i>4){?>style="display:none"<?php } ?>>
                            <div class="progress-bar progress-bar-success progress-bar-striped" style="width: <?php echo $positivos?>%">
                            <?php if($positivos >=1) { ?> <span class="glyphicon glyphicon-thumbs-up"><?php echo round($positivos, 0, PHP_ROUND_HALF_UP);?>% <?php }?></span>
                            </div>
                            <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: <?php echo $negativos?>%">
                            <?php if($negativos >=1) { ?> <span class="glyphicon glyphicon-thumbs-down"><?php echo round($negativos, 0, PHP_ROUND_HALF_UP);?>% <?php }?></span>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                <hr>
                <center><span id="cargarCreaciones" class="label label-default cargar" onclick="cargarCreaciones(<?php echo $contador+5?>, <?php echo sizeof($busquedaCreaciones)?>)">Cargar Mas</span></center>  
              
            <?php } ?>
            </div>
            <!--BusquedaModificaciones-->
            <div class="album py-5 bg-light" id="modificaciones" style="display:none">
            <?php
                if(sizeof($busquedaModificaciones)==0){?>
                    <div  class='alert alert-info' role='alert'>No hay resultados</div>
                <?php }else{
                    for ($i = 0; $i < sizeof($busquedaModificaciones) ; $i++){
                ?> 
                    <div class="panel-group">
                        <div id="panelModificaciones<?php echo $i?>" class="panel panel-default" <?php if($i>4){?>style="display:none"<?php } ?>>
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <?php echo "  ".$busquedaModificaciones[$i]['creador']?>
                                    
                                    <div class="pull-right">
                                        <span class="label label-warning"><?php echo $busquedaModificaciones[$i]['rol']?></span>
                                        <span class="label label-danger"><?php echo "Nivel ".$busquedaModificaciones[$i]['nivel']?></span>
                                    </div><br>
                                    <small><?php echo "  ".$busquedaModificaciones[$i]['fecha']?></small>                
                                </h4>
                            </div>
                            <div class="panel-body">
                                <div class="pull-left">
                                    <img class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $busquedaModificaciones[$i]['creador'].'.jpg'?>">
                                </div>
                                <div class="tituloBody text-center">
                                    <a id="refArt<?php echo $i ?>" href="modificacion.php?id=<?php echo $busquedaModificaciones[$i]['id_mod'];?>"><?php echo $busquedaModificaciones[$i]['titulo'];?></a>                
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
                        <?php
                        if($articulos[$i]['votos_positivos'] == 0 && $articulos[$i]['votos_negativos'] == 0){
                            $positivos=50;
                            $negativos=50;
                        }
                        else{
                            $positivos=($articulos[$i]['votos_positivos']*100)/($articulos[$i]['votos_positivos']+$articulos[$i]['votos_negativos']);
                            $negativos=($articulos[$i]['votos_negativos']*100)/($articulos[$i]['votos_positivos']+$articulos[$i]['votos_negativos']);
                        }
                        ?>
                        <!-- Progress bar con votos positivos, negativos de las modificaciones -->
                        <div class="progress" id="barra<?php echo $i?>" <?php if($i>4){?>style="display:none"<?php } ?>>
                            <div class="progress-bar progress-bar-success progress-bar-striped" style="width: <?php echo $positivos?>%">
                            <?php if($positivos >=1) { ?> <span class="glyphicon glyphicon-thumbs-up"><?php echo round($positivos, 0, PHP_ROUND_HALF_UP);?>% <?php }?></span>
                            </div>
                            <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: <?php echo $negativos?>%">
                            <?php if($negativos >=1) { ?> <span class="glyphicon glyphicon-thumbs-down"><?php echo round($negativos, 0, PHP_ROUND_HALF_UP);?>% <?php }?></span>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                <hr>
                <center><span id="cargarModificaciones" class="label label-default cargar" onclick="cargarModificaciones(<?php echo $contador+5?>, <?php echo sizeof($busquedaModificaciones)?>)">Cargar Mas</span></center>  
            </div>   
            <?php } ?>
            </div>  
        </div>
    </div>
</div>



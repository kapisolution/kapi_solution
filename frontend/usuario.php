<!-- creaciones_usuario, modificaciones_usuario, publicaciones_usuario -->
<?php include 'backend/usuario.php';
include 'backend/creaciones_usuario.php';
include 'backend/modificaciones_usuario.php';
include 'backend/publicaciones_usuario.php';
$nick = $usuario['nick'];
$rol = $usuario['rol'];
$nivel = $usuario['nivel'];
$email = $usuario['email'];
?>
<div class="container containerUsuario">
    <ol class="breadcrumb">
        <li><a href="#">usuario</a></li>
        <li class="active"><?php echo $nick ?></a></li>
    </ol>
    <div clas="row">
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
        <!-- Imagen, nombre, email, insignias-->
            <center><img src="/files/img/usuario/<?php echo $nick ?>.jpg" class="img-rounded imgUsr">
            <h3><?php echo $nick ?></h3>
            <h5><?php echo $email?></h5>
            <hr>
            <h4><span class="label label-warning"><?php echo $rol?></span></h4>
            <h4><span class="label label-danger">Nivel <?php echo $nivel?></span></h4>
            <hr>
            <?php 
            if($nick==$_SESSION['nick']){?>
            <center><h4><a class="editar" href="/editarusuario.php"><span class="label label-default">Editar Perfil</span></a></h4></center>
            <hr>
            <?php } ?>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
            <ul class="nav nav-tabs">
                <li id="modi" role="presentation" onclick="mostrarContribuciones('event', 'modificaciones', 'modi')" class="active"><a class="separador"><span class="glyphicon glyphicon-erase"></span>Modificaciones</a></li>
                <li id="crea" role="presentation" onclick="mostrarContribuciones('event', 'creaciones', 'crea')"><a class="separador"><span class="glyphicon glyphicon-floppy-open"></span>Creaciones</a></li>
                <li id="publ" role="presentation" onclick="mostrarContribuciones('event', 'publicaciones', 'publ')"><a class="separador"><span class="glyphicon glyphicon-floppy-saved"></span>Publicaciones</a></li>
            </ul>
        <!-- Contribuciones populares, grafico contribuciones, x contribuciones/año-->
            <!--Necesitamos backend para consulta de modificaciones, creaciones articulo ordenadas por votos,
            de momento nos creamos nosotros los datos-->
            <div id="modificaciones" class="row myClass">
            <br>
                <?php if(sizeof($modificaciones_usuario) == 0){?>
                    <div  class='alert alert-info' role='alert'>El usuario aún no ha sugerido ninguna modificación</div>
                <?php }else{
                    for($i=0;$i<sizeof($modificaciones_usuario);$i++){?>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="panel-group publicaciones">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a id="creador<?php echo $i ?>"><?php echo "  ".$modificaciones_usuario[$i]['creador']?></a>
                                        <div class="pull-right">
                                        <span id="rol<?php echo $i ?>" class="label label-warning"><?php echo $modificaciones_usuario[$i]['rol']?></span>
                                        <span id="nivel<?php echo $i ?>"class="label label-danger"><?php echo "Nivel ".$modificaciones_usuario[$i]['nivel']?></span>
                                        </div><br>
                                        <small id="creador<?php echo $i ?>"><?php echo "  ".$modificaciones_usuario[$i]['fecha']?></small>                
                                    </h4>
                                </div>
                                <div class="panel-body">
                                    <div class="tituloBody">
                                        <a href="modificacion.php?id=<?php echo $modificaciones_usuario[$i]['id_mod']?>"><center><?php echo $modificaciones_usuario[$i]['titulo']?></center></a>              
                                    </div>    
                                </div>
                                <div class="accion pull-right">
                                    <ul class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="modificacion.php?id=<?php echo $modificaciones_usuario[$i]['id_mod']?>">Ver</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <?php
                        if($modificaciones_usuario[$i]['votos_positivos'] == 0 && $modificaciones_usuario[$i]['votos_negativos'] == 0){
                            $positivos=50;
                            $negativos=50;
                        }
                        else{
                            $positivos=($modificaciones_usuario[$i]['votos_positivos']*100)/($modificaciones_usuario[$i]['votos_positivos']+$modificaciones_usuario[$i]['votos_negativos']);
                            $negativos=($modificaciones_usuario[$i]['votos_negativos']*100)/($modificaciones_usuario[$i]['votos_positivos']+$modificaciones_usuario[$i]['votos_negativos']);
                        }
                        ?>
                        <!-- Progress bar con votos positivos, negativos de las modificaciones -->
                        <div class="progress" id="barra<?php echo $i?>">
                            <div class="progress-bar progress-bar-success progress-bar-striped" style="width: <?php echo $positivos?>%">
                            <?php if($positivos >=1) { ?> <span class="glyphicon glyphicon-thumbs-up"><?php echo round($positivos, 0, PHP_ROUND_HALF_UP);?>% <?php }?></span>
                            </div>
                            <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: <?php echo $negativos?>%">
                            <?php if($negativos >=1) { ?> <span class="glyphicon glyphicon-thumbs-down"><?php echo round($negativos, 0, PHP_ROUND_HALF_UP);?>% <?php }?></span>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            <?php } ?>
            </div>
            <div id="creaciones" class="row myClass" style="display:none">
            <br>
                <?php if(sizeof($creaciones_usuario) == 0){?>
                    <div  class='alert alert-info' role='alert'>El usuario aún no ha creado ningún artículo</div>
                <?php }else{
                        for($i=0;$i<sizeof($creaciones_usuario);$i++){?>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="panel-group publicaciones">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a id="creador<?php echo $i ?>"><?php echo "  ".$creaciones_usuario[$i]['creador']?></a>
                                            <div class="pull-right">
                                            <span id="rol<?php echo $i ?>" class="label label-warning"><?php echo $creaciones_usuario[$i]['rol']?></span>
                                            <span id="nivel<?php echo $i ?>"class="label label-danger"><?php echo "Nivel ".$creaciones_usuario[$i]['nivel']?></span>
                                            </div><br>
                                            <small id="creador<?php echo $i ?>"><?php echo "  ".$creaciones_usuario[$i]['fecha']?></small>                
                                        </h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="tituloBody">
                                            <a href="creacion.php?id=<?php echo $creaciones_usuario[$i]['id_mod']?>"><center><?php echo $creaciones_usuario[$i]['titulo']?></center></a>              
                                        </div>    
                                    </div>
                                    <div class="accion pull-right">
                                        <ul class="dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="creacion.php?id=<?php echo $creaciones_usuario[$i]['id_mod']?>">Ver</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <?php
                            if($creaciones_usuario[$i]['votos_positivos'] == 0 && $creaciones_usuario[$i]['votos_negativos'] == 0){
                                $positivos=50;
                                $negativos=50;
                            }
                            else{
                                $positivos=($creaciones_usuario[$i]['votos_positivos']*100)/($creaciones_usuario[$i]['votos_positivos']+$creaciones_usuario[$i]['votos_negativos']);
                                $negativos=($creaciones_usuario[$i]['votos_negativos']*100)/($creaciones_usuario[$i]['votos_positivos']+$creaciones_usuario[$i]['votos_negativos']);
                            }
                            ?>
                            <!-- Progress bar con votos positivos, negativos de las modificaciones -->
                            <div class="progress" id="barra<?php echo $i?>">
                                <div class="progress-bar progress-bar-success progress-bar-striped" style="width: <?php echo $positivos?>%">
                                <?php if($positivos >=1) { ?> <span class="glyphicon glyphicon-thumbs-up"><?php echo round($positivos, 0, PHP_ROUND_HALF_UP);?>% <?php }?></span>
                                </div>
                                <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: <?php echo $negativos?>%">
                                <?php if($negativos >=1) { ?> <span class="glyphicon glyphicon-thumbs-down"><?php echo round($negativos, 0, PHP_ROUND_HALF_UP);?>% <?php }?></span>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                <?php } ?>
            </div>
            <div id="publicaciones" class="row myClass" style="display:none">
            <br>
                <?php if(sizeof($publicaciones_usuario) == 0){?>
                    <div  class='alert alert-info' role='alert'>El usuario aún no tiene contribuciones</div>
                <?php }else{
                        for($i=0;$i<sizeof($publicaciones_usuario);$i++){?>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="panel-group publicaciones">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a id="creador<?php echo $i ?>"><?php echo "  ".$publicaciones_usuario[$i]['creador']?></a>
                                            <div class="pull-right">
                                            <span id="rol<?php echo $i ?>" class="label label-warning"><?php echo $publicaciones_usuario[$i]['rol']?></span>
                                            <span id="nivel<?php echo $i ?>"class="label label-danger"><?php echo "Nivel ".$publicaciones_usuario[$i]['nivel']?></span>
                                            </div><br>
                                            <small id="creador<?php echo $i ?>"><?php echo "  ".$publicaciones_usuario[$i]['fecha']?></small>                
                                        </h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="tituloBody">
                                            <a href="articulo.php?id=<?php echo $publicaciones_usuario[$i]['id']?>"><center><?php echo $publicaciones_usuario[$i]['titulo']?></center></a>              
                                        </div>    
                                    </div>
                                    <div class="accion pull-right">
                                        <ul class="dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="/articulo.php?id=<?php echo $publicaciones_usuario[$i]['id']?>">Ver</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
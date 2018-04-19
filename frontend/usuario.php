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
    
    <br>
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
            <center><h4><a href="/editarusuario.php"><span class="label label-default">Editar Perfil</span></a></h4></center>
            <hr>
            <?php } ?>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
            <ul class="nav nav-tabs">
                <li id="modi" role="presentation" onclick="mostrarContribuciones('event', 'modificaciones', 'modi')" class="active"><a class="separador">Modificaciones</a></li>
                <li id="crea" role="presentation" onclick="mostrarContribuciones('event', 'creaciones', 'crea')"><a class="separador">Creaciones</a></li>
                <li id="publ" role="presentation" onclick="mostrarContribuciones('event', 'publicaciones', 'publ')"><a class="separador">Publicaciones</a></li>
            </ul>
        <!-- Contribuciones populares, grafico contribuciones, x contribuciones/año-->
            <!--Necesitamos backend para consulta de modificaciones, creaciones articulo ordenadas por votos,
            de momento nos creamos nosotros los datos-->
            <div id="modificaciones" class="row myClass">
            <br>
            <?php for($i=0;$i<sizeof($modificaciones_usuario);$i++){?>
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <div class="panel-group">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                <?php echo $modificaciones_usuario[$i]['creador']?><small> <?php echo $modificaciones_usuario[$i]['fecha']?></small>
                                    <div class="pull-right">
                                        <span class="label label-warning"><?php echo $modificaciones_usuario[$i]['rol']?></span>
                                        <span class="label label-danger">Nivel <?php echo $modificaciones_usuario[$i]['nivel']?></span>
                                    </div>
                                </h4>
                            </div>
                            <div class="panel-body">
                                <div class="tituloBody">
                                    <center><?php echo $modificaciones_usuario[$i]['titulo']?></center>              
                                </div>    
                            </div>
                            <div class="accion pull-right">
                                <ul class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Ver</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php 
                    $positivos=($modificaciones_usuario[$i]['votos_positivos']*100)/($modificaciones_usuario[$i]['votos_positivos']+$modificaciones_usuario[$i]['votos_negativos']);
                    $negativos=($modificaciones_usuario[$i]['votos_negativos']*100)/($modificaciones_usuario[$i]['votos_positivos']+$modificaciones_usuario[$i]['votos_negativos']);
                    ?>
                    <!-- Progress bar con votos positivos, negativos de las modificaciones -->
                    <div class="progress" id="barra<?php echo $i?>">
                        <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: <?php echo $negativos?>%">
                            <span class="glyphicon glyphicon-thumbs-up"><?php echo round($negativos, 0, PHP_ROUND_HALF_UP);?>%</span>
                        </div>
                        <div class="progress-bar progress-bar-success progress-bar-striped" style="width: <?php echo $positivos?>%">
                            <span class="glyphicon glyphicon-thumbs-down"><?php echo round($positivos, 0, PHP_ROUND_HALF_UP);?>%</span>
                        </div>
                    </div>
                </div>
            <?php } ?>
            </div>
            <div id="creaciones" class="row myClass" style="display:none">
            <br>
                <?php for($i=0;$i<sizeof($creaciones_usuario);$i++){?>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                    <?php echo $creaciones_usuario[$i]['creador']?><small> <?php echo $creaciones_usuario[$i]['fecha']?></small>
                                        <div class="pull-right">
                                            <span class="label label-warning"><?php echo $creaciones_usuario[$i]['rol']?></span>
                                            <span class="label label-danger">Nivel <?php echo $creaciones_usuario[$i]['nivel']?></span>
                                        </div>
                                    </h4>
                                </div>
                                <div class="panel-body">
                                    <div class="tituloBody">
                                        <center><?php echo $creaciones_usuario[$i]['titulo']?></center>              
                                    </div>    
                                </div>
                                <div class="accion pull-right">
                                    <ul class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Ver</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <?php 
                        $positivos=($creaciones_usuario[$i]['votos_positivos']*100)/($creaciones_usuario[$i]['votos_positivos']+$creaciones_usuario[$i]['votos_negativos']);
                        $negativos=($creaciones_usuario[$i]['votos_negativos']*100)/($creaciones_usuario[$i]['votos_positivos']+$creaciones_usuario[$i]['votos_negativos']);
                        ?>
                        <!-- Progress bar con votos positivos, negativos de las modificaciones -->
                        <div class="progress" id="barra<?php echo $i?>">
                            <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: <?php echo $negativos?>%">
                                <span class="glyphicon glyphicon-thumbs-up"><?php echo round($negativos, 0, PHP_ROUND_HALF_UP);?>%</span>
                            </div>
                            <div class="progress-bar progress-bar-success progress-bar-striped" style="width: <?php echo $positivos?>%">
                                <span class="glyphicon glyphicon-thumbs-down"><?php echo round($positivos, 0, PHP_ROUND_HALF_UP);?>%</span>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
            <div id="publicaciones" class="row myClass" style="display:none">
            <br>
                <?php for($i=0;$i<sizeof($publicaciones_usuario);$i++){?>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="panel-group publicaciones">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                    <?php echo $publicaciones_usuario[$i]['creador']?><small> <?php echo $publicaciones_usuario[$i]['fecha']?></small>
                                        <div class="pull-right">
                                            <span class="label label-warning"><?php echo $publicaciones_usuario[$i]['rol']?></span>
                                            <span class="label label-danger">Nivel <?php echo $publicaciones_usuario[$i]['nivel']?></span>
                                        </div>
                                    </h4>
                                </div>
                                <div class="panel-body">
                                    <div class="tituloBody">
                                        <center><?php echo $publicaciones_usuario[$i]['titulo']?></center>              
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
            </div>
        </div>
    </div>
</div>
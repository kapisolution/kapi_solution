<!-- creaciones_usuario, modificaciones_usuario, publicaciones_usuario -->
<?php include 'backend/usuario.php';
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
                <li id="modi" role="presentation" onclick="mostrarContribuciones('event', 'modificaciones', 'modi')" class="active"><a class="separador">Contribuciones</a></li>
                <li id="crea" role="presentation" onclick="mostrarContribuciones('event', 'creaciones', 'crea')"><a class="separador">Modificaciones</a></li>
            </ul>
        <!-- Contribuciones populares, grafico contribuciones, x contribuciones/año-->
            <!--Necesitamos backend para consulta de modificaciones, creaciones articulo ordenadas por votos,
            de momento nos creamos nosotros los datos-->
            <div id="modificaciones" class="row myClass">
            <br>
                <?php for($i=0;$i<4;$i++){?>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        Fecha<small> creador</small>
                                        <div class="pull-right">
                                            <span class="label label-warning">Rol</span>
                                            <span class="label label-danger">Nivel</span>
                                        </div>
                                    </h4>
                                </div>
                                <div class="panel-body">
                                    <div class="tituloBody">
                                        <center>Titulo</center>                
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
                        <!-- Progress bar con votos positivos, negativos de las modificaciones -->
                        <div class="progress">
                            <div class="progress-bar progress-bar-success progress-bar-striped" style="width: 50%">
                                <span class="glyphicon glyphicon-thumbs-up">50%</span>
                            </div>
                            <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: 50%">
                                <span class="glyphicon glyphicon-thumbs-down">50%</span>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
            <div id="creaciones" class="row myClass" style="display:none">
            <br>
                <?php for($i=0;$i<2;$i++){?>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        Fecha<small> creador</small>
                                        <div class="pull-right">
                                            <span class="label label-warning">Rol</span>
                                            <span class="label label-danger">Nivel</span>
                                        </div>
                                    </h4>
                                </div>
                                <div class="panel-body">
                                    <div class="tituloBody">
                                        <center>Titulo</center>              
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
                        <!-- Progress bar con votos positivos, negativos de las modificaciones -->
                        <div class="progress">
                            <div class="progress-bar progress-bar-success progress-bar-striped" style="width: 50%">
                                <span class="glyphicon glyphicon-thumbs-up">50%</span>
                            </div>
                            <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: 50%">
                                <span class="glyphicon glyphicon-thumbs-down">50%</span>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
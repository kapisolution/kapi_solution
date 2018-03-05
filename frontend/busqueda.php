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
            <button type="button" class="btn btn-primary" onclick="mostrarTarjetas(event, 'ejercicios')">Ejercicios</button>
        </div>
    <br>
    <!--BusquedaUsuarios-->
    <div class="album py-5 bg-light" id="usuarios"> 
            <hr>
        <?php 
            for ($i = 0; $i < sizeof($busquedaUsuarios) ; $i++){
        ?>       
                <div class="row filaUsuario">
                    <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
                        <img class="imgUsr" class="img-rounded" src="/files/img/usuario/<?php echo $busquedaUsuarios[$i]['nick'].'.jpg'?>">
                    </div>
                    <div class="col-xs-6 col-sm-8 col-md-8 col-lg-8">
                        <div class="datosUsr">
                        <h6><?php echo $busquedaUsuarios[$i]['nick']?> <small><i><?php echo $busquedaUsuarios[$i]['email']?></i></small></h6>
                        <h6><span class="label label-warning">Nivel <?php echo $busquedaUsuarios[$i]['nivel']?></span></h6>
                        <h6><span class="label label-danger"><?php echo $busquedaUsuarios[$i]['rol']?></span><h6>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2 text-center">
                    <div class="infoRol">
                           <img class="imgRol" width="40px" height="40px" src="/files/img/rol/<?php echo $busquedaUsuarios[$i]['rol'].'.jpg'?>">

                           <h6><a href="#"><span class="label label-primary">Ver Perfil</span></a></h6>
                    </div>
                    </div>
                </div>
                <hr>
        <?php
        }
        ?>
    </div>
    <!--BusquedaArticulos-->
    <div class="album py-5 bg-light" id="articulos" style="display:none"> 
            <hr>
        <?php
            for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
        ?>       
                <div class="row filaArticulo">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-1">
                    <img class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $busquedaArticulos[$i]['creador'].'.jpg'?>">
                </div>
                <div class="col-xs-7 col-sm-8 col-md-8 col-lg-9">
                    <div class="datosUsr">
                    <h6><?php echo $busquedaArticulos[$i]['titulo']?> <small><i><?php echo $busquedaArticulos[$i]['creador']?></i></small>
                        <div class="row">
                            <div class="col-xs-12">
                                <h6><span class="label label-warning">Nivel <?php echo $busquedaArticulos[$i]['nivel']?></span>
                                <span class="label label-danger"><?php echo $busquedaArticulos[$i]['rol']?></span></h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-3 col-sm-2 col-md-2 col-lg-2 text-center">
                    <div class="infoRol">
                        <img class="imgRolArticulos" width="30px" height="30px" margin-bottom="30px" src="/files/img/rol/<?php echo $busquedaArticulos[$i]['rol'].'.jpg'?>">

                        <div class="row">
                            <a href="articulo.php?id=<?php echo $busquedaArticulos[$i]['id']?>"><span class="label label-primary col-xs-12">Ver</span></a>
                            <a href="modificararticulo.php?id=<?php echo $busquedaArticulos[$i]['id']?>"><span class="label label-primary col-xs-12">Editar</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
        <?php
        }
        ?>
        </div>    
</div>



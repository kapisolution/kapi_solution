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
                <div class="row" id="filaUsuario">
                    <div class="col-xs-3 col-sm-2 col-md-3 text-center">
                        <img id="imgUsr" class="img-rounded" src="/files/img/usuario/<?php echo $busquedaUsuarios[$i]['nick'].'.jpg'?>">
                    </div>
                    <div class="col-xs-6 col-sm-7 col-md-6 text-center" id="bodyUsuario">
                        <h4 class="text-center"><?php echo $busquedaUsuarios[$i]['nick']?> <small><i><?php echo $busquedaUsuarios[$i]['email']?></i></small></h4>
                        <span class="label label-warning">Nivel <?php echo $busquedaUsuarios[$i]['nivel']?></span>
                        <span class="label label-danger"><?php echo $busquedaUsuarios[$i]['rol']?></span>
                    </div>
                    <div class="col-xs-3 col-sm-3 col-md-3 text-center" id="media-right-usr">
                           <img id="imgRol" class="img-circle" src="/files/img/rol/<?php echo $busquedaUsuarios[$i]['rol'].'.jpg'?>">
                        <br>
                            <a href="#"><span class="label label-primary">Ver Perfil</span></a>
                    </div>
                </div>
                <hr>
        <?php
        }
        ?>
    </div>
    <!--BusquedaArticulos-->
    <div class="album py-5 bg-light" id="articulos" style="display:none"> 
            <div class="row">
            <hr>
        <?php
        
            for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
        ?>       
                <div class="media row" id="filaArticulo">
                <div class="media-left col-xs-4 col-sm-3 col-md-8" style="width: 30%;">
                    <img id="imgUsr" src="/files/img/usuario/javimv36.jpg" class="media-object">
                </div>
                <div class="media-body col-xs-8 col-sm-5" id="bodyArticulo" style="">
                    <h4 class="media-heading">lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed <small><i>javimv36</i></small></h4>
                    <span class="label label-warning">Nivel 1</span>
                    <span class="label label-danger">abogado</span>
                </div>
                <div class="media-right col-xs-12 col-sm-4" id="media-right-articulo" style="">
                    <div class="media-top">
                        <center><img id="imgRol" src="/files/img/rol/abogado.jpg" class="media-object"></center>
                    </div>
                    <br>
                    <div class="btn-group" id="btn-articulo">
                        <center><a href="/articulo.php?id=827"><button type="button" id="btnIrArticulo" class="btn btn-primary">Ver</button></a>
                        <a href="/modificararticulo.php?id=827"><button type="button" class="btn btn-primary" id="btnIrArticulo">Modificar</button></a></center>
                    </div>
                </div>
            </div>
                <hr>
        <?php
        }
        ?>
            </div>
        </div>    
</div>



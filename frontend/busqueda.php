<?php
     require 'backend/busqueda.php';
?>
<div class="contentBusqueda">
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
        <div class="container" >
            <div class="row">
            <hr>
        <?php
        
            for ($i = 0; $i < sizeof($busquedaUsuarios) ; $i++){
        ?>       
                <div class="media" id="filaUsuario">
                    <div class="media-left">
                        <img id="imgUsr" src="/files/img/usuario/<?php echo $busquedaUsuarios[$i]['nick'].'.jpg'?>" class="media-object">
                    </div>
                    <div class="media-body" id="bodyUsuario">
                        <h4 class="media-heading"><?php echo $busquedaUsuarios[$i]['nick']?> <small><i><?php echo $busquedaUsuarios[$i]['email']?></i></small></h4>
                        <span class="label label-warning">Nivel <?php echo $busquedaUsuarios[$i]['nivel']?></span>
                        <span class="label label-danger"><?php echo $busquedaUsuarios[$i]['rol']?></span>
                    </div>
                    <div class="media-right" id="media-right-usr">
                        <div class="media-top">
                            <center><img id="imgRol" src="/files/img/rol/<?php echo $busquedaUsuarios[$i]['rol'].'.jpg'?>" class="media-object"></center>
                        </div>
                        <br>
                        <div class="media-bottom">
                            <center><button type="button" class="btn btn-primary" href=#>Ver Perfil</button></center>
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
    <!--BusquedaArticulos-->
    <div class="album py-5 bg-light" id="articulos" style="display:none"> 
        <div class="container" >
            <div class="row">
            <hr>
        <?php
        
            for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
        ?>       
                <div class="media" id="filaArticulo">
                    <div class="media-left">
                        <img id="imgUsr" src="/files/img/usuario/<?php echo $busquedaArticulos[$i]['creador'].'.jpg'?>" class="media-object">
                    </div>
                    <div class="media-body" id="bodyArticulo">
                        <h4 class="media-heading"><?php echo $busquedaArticulos[$i]['titulo']?> <small><i><?php echo $busquedaArticulos[$i]['creador']?></i></small></h4>
                        <span class="label label-warning">Nivel <?php echo $busquedaArticulos[$i]['nivel']?></span>
                        <span class="label label-danger"><?php echo $busquedaArticulos[$i]['rol']?></span>
                    </div>
                    <div class="media-right" id="media-right-articulo">
                        <div class="media-top">
                            <center><img id="imgRol" src="/files/img/rol/<?php echo $busquedaArticulos[$i]['rol'].'.jpg'?>" class="media-object"></center>
                        </div>
                        <br>
                        <div class="btn-group" id="btn-articulo">
                            <center><a href="/articulo.php?id=<?php echo $busquedaArticulos[$i]['id']?>"><button type="button" id="btnIrArticulo" class="btn btn-primary">Ver</button></a>
                            <button type="button" class="btn btn-primary" id="btnIrArticulo" href="/modificararticulo.php?id=<?php echo $busquedaArticulos[$i]['id']?>">Modificar</button></center>
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
    
</div>



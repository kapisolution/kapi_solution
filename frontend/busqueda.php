<?php
     require 'backend/busqueda.php';
?>
<div class="content">
    <h3><center>Resultados de: <?php echo $_GET["search"] ?></center> </h3>
    <br>
    <div class="btn-group">
        <button type="button" class="btn btn-primary" onclick="mostrarTarjetas(event, 'usuarios')">Usuarios</button>
        <button type="button" class="btn btn-primary" onclick="mostrarTarjetas(event, 'articulos')">Artículos</button>
        <button type="button" class="btn btn-primary" onclick="mostrarTarjetas(event, 'ejercicios')">Ejercicios</button>
    </div>
    <!--BusquedaUsuarios-->
    <div class="album py-5 bg-light" id="usuarios"> 
        <div class="container" >
            <div class="row">
            <hr>
        <?php
        
            for ($i = 0; $i < sizeof($busquedaUsuarios) ; $i++){
        ?>       
                <div class="media">
                    <div class="media-left">
                        <img id="imgUsr" src="/files/img/usuario/<?php echo $busquedaUsuarios[$i]['nick'].'.jpg'?>" class="media-object">
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading"><?php echo $busquedaUsuarios[$i]['nick']?> <small><i><?php echo $busquedaUsuarios[$i]['email']?></i></small></h4>
                        <p>Nivel: <?php echo $busquedaUsuarios[$i]['nivel']?></p>
                    </div>
                    <div class="media-right media-top">
                        <img id="imgRol" src="/files/img/rol/<?php echo $busquedaUsuarios[$i]['rol'].'.jpg'?>" class="media-object">
                    </div>
                    <div class="media-right media-bottom">
                        <button type="button" class="btn btn-primary" href=#>Ver Perfil</button>
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
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" text="NICK" style="height: 150px; width: 100%; display: block;" src="/files/img/articulos/<?php echo $busquedaArticulos[$i]['img'].'.jpg';?>" data-holder-rendered="true">
                            <div class="card-body">
                                <ul class="list-unstyled mt-3 mb-4">
                                    <p><center><?php echo $busquedaArticulos[$i]['titulo']?></center></p>
                                    <p><center><?php echo $busquedaArticulos[$i]['creador']?></center></p>
                                </ul>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-lg btn-block btn-outline-primary">Visitar</button>
                                    </div>
                                    <img class="card-img-bottom" text="ROL" style="height: 50px; width: 50px; display: block;" src="/files/img/rol/<?php echo $busquedaArticulos[$i]['rol'].'.jpg';?>" data-holder-rendered="true">
                                </div>
                            </div>
                        </div>
                    </div>
                <?php
        }
        ?>
            </div>
        </div>
    </div>

</div>



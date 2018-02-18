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
    <br>
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
                    <div class="media-right">
                        <div class="media-top">
                            <center><img id="imgRol" src="/files/img/rol/<?php echo $busquedaUsuarios[$i]['rol'].'.jpg'?>" class="media-object"></center>
                        </div>
                        <br>
                        <div class="media-bottom">
                            <button type="button" class="btn btn-primary" href=#>Ver Perfil</button>
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
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" text="NICK" style="height: 150px; width: 100%; display: block;" src="/files/img/articulos/<?php echo $busquedaArticulos[$i]['img'].'.jpg';?>" data-holder-rendered="true">
                            <div class="card-body">
                                <div class="card-block">
                                    <h4 class="card title"><titulo><?php echo $busquedaArticulos[$i]['titulo']?><titulo></center></h4>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item" style="background-image: url(/files/img/rol/<?php echo $busquedaArticulos[$i]['rol'].'.jpg';?>);background-size:100% 200%;background-repeat:no-repeat;text-transform: uppercase;"><rol><center><?php echo $busquedaArticulos[$i]['rol']?></center></rol></li>
                                        <li class="list-group-item"><center>Nivel: <?php echo $busquedaArticulos[$i]['nivel']?><center></li>  
                                    </ul>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <a href="/articulo.php?id='<?php echo $busquedaArticulos[$i]['id']."'"?>"><button type="button" class="btn btn-sm btn-outline-secondary">View</button><a>
                                            <a href="/modificararticulo.php?id='<?php echo $busquedaArticulos[$i]['id']."'"?>"><button type="button" class="btn btn-sm btn-outline-secondary">Edit</button><a>
                                        </div>
                                        <img id="imgUsr" src="/files/img/usuario/<?php echo $busquedaArticulos[$i]['creador'].'.jpg';?>" class="media-object">
                                    </div>
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



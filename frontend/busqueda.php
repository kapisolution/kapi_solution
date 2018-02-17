<?php
     require 'backend/busqueda.php';
?>
<div class="content">
    <div class="album py-5 bg-light">
        <h3><center>Resultados de: <?php echo $_GET["search"] ?></center> </h3>
        <br>
        <div class="container">
            <div class="row">
        <?php
            for ($i = 0; $i < sizeof($busquedaUsuarios) ; $i++){
        ?>       
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" text="NICK" style="height: 150px; width: 100%; display: block;" src="/files/img/usuario/<?php echo $busquedaUsuarios[$i]['nick'].'.jpg';?>" data-holder-rendered="true">
                            <div class="card-body">
                                <ul class="list-unstyled mt-3 mb-4">
                                    <p><center><?php echo $busquedaUsuarios[$i]['nick']?></center></p>
                                    <p><center><?php echo $busquedaUsuarios[$i]['nivel']?></center></p>
                                </ul>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-lg btn-block btn-outline-primary">Visitar</button>
                                    </div>
                                    <img class="card-img-bottom" text="ROL" style="height: 50px; width: 50px; display: block;" src="/files/img/rol/<?php echo $busquedaUsuarios[$i]['rol'].'.jpg';?>" data-holder-rendered="true">
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



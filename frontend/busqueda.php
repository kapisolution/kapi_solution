<?php
     require 'backend/busqueda.php';
?>
<div class="content">
<div class="album py-5 bg-light">
    <h3> Resultados de: <?php echo $_GET["search"] ?> </h3>
    <div class="container">
         <div class="row">
    <?php
        for ($i = 0; $i < sizeof($busquedaUsuarios) ; $i++){
    ?>       
                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img class="card-img-top" text="ROL" style="height: 225px; width: 100%; display: block;" src="/files/img/rol/<?php echo $busquedaUsuarios[$i]['rol'].'.jpg';?>" data-holder-rendered="true">
                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer..</p>
                        
                        <div class="botonera">   
                            <div class="col-sm-6">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                            </div>
                            <div class="col-sm-6" id="botonera">
                                <small class="text-muted">9 mins</small>
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


<div class="container containerExamenes">
    <h2>Pruebas para subir de nivel</h2>
    <hr>
    <h4>Accediendo a cada prueba podrás subir tu nivel. Recuerda que sólo puedes realizar pruebas de tu rol.
        Cuanto mas nivel tengas como usuario, podrás crear artículos de mayor nivel. <strong>Entra para probar tu nivel de autodefensa.</strong>
    </h4>
    <br> 
    <div class="row">
    <?php for($i=1;$i<=$_SESSION['nivel']+1;$i++){ ?>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
            <div class="list-group">
                <a  <?php if(!isset($_SESSION['login'])){?> class="list-group-item disabled" <?php }else{ ?> class="list-group-item <?php if($i<=$_SESSION['nivel']) { ?> list-group-item-success"<?php } else { ?> list-group-item-info" href="/examen.php?id=<?php echo $i ?>"<?php } }?>>
                    <h4 class="list-group-item-heading">Prueba de nivel <?php echo $i ?></h4>
                    <!-- <p class="list-group-item-text">...</p> -->
                    <h4><span class="label label-warning"><?php echo $_SESSION['rol']?></span>
                    <span class="label label-primary">Nivel <?php echo $i?></span>
                    </h4>
                </a>
            </div>
        </div>
    <?php } ?>
    </div>
</div>
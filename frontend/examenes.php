<div class="container containerExamenes">
    <h2>Pruebas para subir de nivel</h2>
    <hr>
    <?php for($i=0;$i<=$_SESSION['nivel'];$i++){ ?>
    <div class="list-group">
            <a href="/examen.php?id=<?php echo $i ?>" class="list-group-item" style=<?php if($i<$_SESSION['nivel']) { ?>"background-color:#dff0d8;"<?php } else { ?> "background-color:#f2dede;" <?php } ?>>
                <h4 class="list-group-item-heading">Prueba de nivel <?php echo $i ?></h4>
                <p class="list-group-item-text">...</p>
            </a>
        </div>
    <?php } ?>
</div>
<?php require 'backend/generaexamen.php';
//array examen
?>
<div class="container containerExamenes">
    <?php echo json_encode($examen);?>
    <?php if($_SESSION['login']){ ?>
        <center><h2>Prueba de nivel  <?php echo $_GET['id']?></h2><br>
        <h4>
            <span class="label label-warning"><?php echo $_SESSION['rol']?></span>
            <span class="label label-primary">Nivel <?php echo $_GET['id']?></span>
        </h4></center>
        <hr>
        <div class="panel-group" id="accordion">
        <?php
            for($i=0; $i<5; $i++){?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            Pregunta <?php echo $i+1?>
                        </h4>
                    </div>
                    <div class="panel-body"><?php echo $preguntas[$i]['texto']?><br>
                        <div class="thumbnail">
                            <div class="caption">
                                <ul class="list-group">
                                    <li class="list-group-item"><?php echo $preguntas[$i]['A']?><strong>A   </strong></li>
                                    <li class="list-group-item"><?php echo $preguntas[$i]['B']?><strong>B   </strong></li>
                                    <li class="list-group-item"><?php echo $preguntas[$i]['C']?><strong>C   </strong></li>
                                    <li class="list-group-item"><?php echo $preguntas[$i]['D']?><strong>D   </strong></li>
                                </ul>
                                <div class="list-group text-center" id="filtro<?php echo $i?>">
                                    <input type="radio" id="respuestaA<?php echo $i ?>" onclick="respuestaExamen('filtro<?php echo $i?>','A','<?php echo $preguntas[$i]['correcta']?>','opcionA<?php echo $i ?>')";>
                                    <label for="respuestaA<?php echo $i ?>"><span id="opcionA<?php echo $i ?>" class="label label-default">A</span></label>
                                    <input type="radio" id="respuestaB<?php echo $i ?>" onclick="respuestaExamen('filtro<?php echo $i?>','B','<?php echo $preguntas[$i]['correcta']?>','opcionB<?php echo $i ?>')">
                                    <label for="respuestaB<?php echo $i ?>"><span id="opcionB<?php echo $i ?>" class="label label-default">B</span></label>
                                    <input type="radio" id="respuestaC<?php echo $i ?>" onclick="respuestaExamen('filtro<?php echo $i?>','C','<?php echo $preguntas[$i]['correcta']?>','opcionC<?php echo $i ?>')">
                                    <label for="respuestaC<?php echo $i ?>"><span id="opcionC<?php echo $i ?>" class="label label-default">C</span></label>
                                    <input type="radio" id="respuestaD<?php echo $i ?>" onclick="respuestaExamen('filtro<?php echo $i?>','D','<?php echo $preguntas[$i]['correcta']?>','opcionD<?php echo $i ?>')">
                                    <label for="respuestaD<?php echo $i ?>"><span id="opcionD<?php echo $i ?>" class="label label-default">D</span></label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
            <?php
            }
            ?>
        </div>
        <center>
            <button class="btn btn-primary" onclick="comprobarNota()">Enviar resultados</button>
        </center>
        <?php }else{ 
                require 'accesoRestringido.php';
            }
        ?>
</div>
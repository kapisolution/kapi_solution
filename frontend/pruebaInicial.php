<script>
$('body').removeClass().addClass('modal-open');
$('body').attr("style","padding-right: 15px;");
$('nav').hide();
$('#footerBS.container-fluid.text-center.footerBS').hide();
</script>
<form id="testNivel" method="POST" action="backend/testNivel.php"> 
<div class="modal fade in" role="dialog" id="myModal" tabindex="-1" aria-labelledby="myModalLabel" style="display: block;"> 
<div class="modal-dialog" role="document">
    <div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title">Responde a 5 preguntas para determinar tu nivel</h4>
    </div>
        <div class="modal-body"><?php
        foreach($preguntas as $key => $pregunta) { ?>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        Pregunta
                    </h4>
                </div>
                <div class="panel-body"><?php echo $pregunta['texto']?><br>
                    <div class="thumbnail">
                        <div class="caption">
                            <ul class="list-group">
                            <?php foreach($pregunta['respuestas'] as $respuesta){ ?>
                                <li class="list-group-item"><?php echo $respuesta['texto']?></li>
                            <?php } ?>
                            </ul>
                            <div class="list-group text-center">
                                <?php foreach($pregunta['respuestas'] as $i => $respuesta){?>

                                <input type="radio" id="<?php echo $key.$i ?>" name="<?php echo $key ?>" value="<?php echo $respuesta['valor'] ?>">
                                <label for="<?php echo $key.$i ?>" ><span class="label label-default"><?php echo $respuesta['valor'] ?></span></label>
                                <?php } ?>
                            
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
        <div class="modal-footer">
        <button type="submit" class="btn btn-default" >Enviar</button>
        </div>
    </div>
    </div>
</div>
<form>
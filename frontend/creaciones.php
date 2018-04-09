<?php
    include 'backend/articulos.php';
    $array=$articulos;
    $contador=0;
    if(isset($_SESSION['login'])){
        $nivel=$_SESSION['nivel'];
        $rol=$_SESSION['rol'];
    }else{
        $nivel=0;
        $rol='informatico';
    }
?>
<div class="container">
    <div class="row">
    <hr>
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
            <div class="thumbnail">
                <center><h4>Filtrar<h4></center><br>
                <div class="caption">
                    <div class="list-group" id="filtro">
                        <input type="radio" id="ordFecha" onclick="ordenar('<?php echo $array ?>','fecha', <?php echo $nivel?>, '<?php echo $rol?>', <?php echo $_SESSION['login']?>)";>
                        <label for="ordFecha"><span class="label label-default">Fecha</span></label>
                        <input type="radio" id="ordNivelMay" onclick="ordenar('<?php echo $array ?>','nivelMay', <?php echo $nivel?>, '<?php echo $rol?>', <?php echo $_SESSION['login']?>)">
                        <label for="ordNivelMay"><span class="label label-default">Mayor Nivel</span></label>
                        <input type="radio" id="ordNivelMen" onclick="ordenar('<?php echo $array ?>','nivelMen', <?php echo $nivel?>, '<?php echo $rol?>', <?php echo $_SESSION['login']?>)">
                        <label for="ordNivelMen"><span class="label label-default">Menor Nivel</span></label>
                    </div>
                </div>
            </div> 
        </div>
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
            <div id="album" class="album py-5 bg-light">
            <?php
                for ($i = 0; $i < sizeof($articulos) ; $i++){
            ?> 
                <div class="panel-group">
                    <div id="panel<?php echo $i?>" class="panel panel-default" <?php if($i>4){?>style="display:none"<?php } ?>>
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a id="creador<?php echo $i ?>"><?php echo "  ".$articulos[$i]['creador']?></a>
                                <small id="creador<?php echo $i ?>"><?php echo "  ".$articulos[$i]['fecha']?></small>
                                <div class="pull-right">
                                <span id="rol<?php echo $i ?>" class="label label-warning"><?php echo $articulos[$i]['rol']?></span>
                                <span id="nivel<?php echo $i ?>"class="label label-danger"><?php echo "Nivel ".$articulos[$i]['nivel']?></span>
                                </div>
                            </h4>
                        </div>
                        <div class="panel-body">
                            <div class="pull-left">
                                <img id="imagen<?php echo $i ?>" class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $articulos[$i]['creador'].'.jpg'?>">
                            </div>
                            <div id="titulo<?php echo $i ?>" class="tituloBody text-center">
                                <?php echo $articulos[$i]['titulo'];?>
                            </div>    
                        </div>
                        <div class="accion pull-right">
                            <ul class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                            <ul class="dropdown-menu">
                                <li><a id="verArt<?php echo $i ?>" <?php if((!isset($_SESSION['login']))){?>class="dropdown-item disabled"<?php } else{ ?> class="dropdown-item" href="/creacion.php?id=<?php echo $articulos[$i]['id']?>" <?php } ?>>Ver</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Progress bar con votos positivos, negativos de las modificaciones -->
                <div class="progress" id="barra<?php echo $i?>" <?php if($i>4){?>style="display:none"<?php } ?>>
                    <div class="progress-bar progress-bar-success progress-bar-striped" style="width: 50%">
                        <span class="glyphicon glyphicon-thumbs-up">50%</span>
                    </div>
                    <div class="progress-bar progress-bar-danger progress-bar-striped" style="width: 50%">
                        <span class="glyphicon glyphicon-thumbs-down">50%</span>
                    </div>
                </div>
            <?php } ?>
            </div>
            <br>
            <center><span class="label label-default" onclick=<?php $contador+=5 ?>"cargar(<?php echo $contador?>,<?php echo sizeof($articulos)?>)">Cargar Mas</span></center>
        </div>
    </div>
</div>
<script type="text/javascript">
    var cont=0;
    function comparatorFecha(a,b){
        if (a.fecha < b.fecha) return -1;
        if (a.fecha > b.fecha) return 1;
        return 0;
    }
    function comparatorNivelMen(a,b){
        if (a.nivel < b.nivel) return -1;
        if (a.nivel > b.nivel) return 1;
        return 0;
    }
    function comparatorNivelMay(a,b){
        if (a.nivel < b.nivel) return 1;
        if (a.nivel > b.nivel) return -1;
        return 0;
    }
    function ordenar(array,criterio,nivel,rol,login){
        var stringArray = <?php echo json_encode($array); ?>;
        if(criterio=="fecha"){
            $("#ordNivelMen").prop("checked", false);
            $("#ordNivelMay").prop("checked", false);
            stringArray=stringArray.sort(comparatorFecha);
        }else if(criterio=="nivelMen"){
            $("#ordFecha").prop("checked", false);
            $("#ordNivelMay").prop("checked", false);            
            stringArray=stringArray.sort(comparatorNivelMen);
        }else{
            $("#ordNivelMen").prop("checked", false);
            $("#ordFecha").prop("checked", false);
            stringArray=stringArray.sort(comparatorNivelMay);
        }
        
        for(var i=0; i<stringArray.length; i++){
            $("#rol"+i).html(stringArray[i].rol);
            $("#nivel"+i).html("Nivel "+stringArray[i].nivel);
            $("#titulo"+i).html(stringArray[i].titulo);
            $("#imagen"+i).attr("src","/files/img/usuario/"+stringArray[i].creador+".jpg");
            $("#creador"+i).html(stringArray[i].creador);
            if(login){
                $("#verArt"+i).attr("href","/creacion.php?id="+stringArray[i].id);
            }
            if(stringArray[i].nivel > nivel || stringArray[i].rol != rol){
                $("#editarArt"+i).attr("class","dropdown-item disabled");
            }else{
                $("#editarArt"+i).removeClass().addClass('dropdown-item');
                $("#editarArt"+i).attr("href","/modificararticulo.php?id="+stringArray[i].id); 
            }
        }  
    }
</script>
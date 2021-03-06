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
        <?php if($_SESSION['examen']=='aprobado'){?>
                <div  class='alert alert-success' role='alert'>Aumentas de nivel</div>
                <?php $_SESSION['examen'] ='';
             }else if($_SESSION['examen']=='suspenso'){?>
                <div  class='alert alert-danger' role='alert'>No has conseguido aumentar tu nivel</div>
                <?php $_SESSION['examen'] ='';
            }
            if($_SESSION['creacion']=='si'){?>
                <div  class='alert alert-success' role='alert'>Artículo creado con éxito</div>
                <?php $_SESSION['creacion']=false;
            }else if($_SESSION['creacion']=='no'){?>
                <div  class='alert alert-danger' role='alert'>No se ha podido insertar el artículo</div>
                <?php $_SESSION['creacion']=false;
            }
            ?> 
        <ol class="breadcrumb">
            <li class="active">Artículos</a></li>
        </ol>
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
            <div class="list-group">
                <button id="last" type="button"  class="list-group-item disabled" onclick="ordenar('<?php echo $array ?>','fecha', <?php echo $nivel?>, '<?php echo $rol?>', 'last')";>
                    Últimos añadidos
                </button>
                <button id="mayor" type="button" class="list-group-item" onclick="ordenar('<?php echo $array ?>','nivelMay', <?php echo $nivel?>, '<?php echo $rol?>', 'mayor')";>
                    Mayor nivel
                </button>
                <button id="minor" type="button" class="list-group-item" onclick="ordenar('<?php echo $array ?>','nivelMen', <?php echo $nivel?>, '<?php echo $rol?>', 'minor')">
                    Menor nivel
                </button>
            </div>         
        </div>
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
            <div id="album" class="album py-5 bg-light">
            <?php
            if(sizeof($articulos)==0){?>
                <div  class='alert alert-info' role='alert'>No hay resultados</div>
            <?php }else{
                for ($i = 0; $i < sizeof($articulos) ; $i++){
            ?> 
                <div class="panel-group">
                <div id="panel<?php echo $i?>" class="panel panel-default" <?php if($i>4){?>style="display:none"<?php } ?>>
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a href="usuario.php?id=<?php echo $articulos[$i]['creador']?>" id="creador<?php echo $i ?>"><?php echo "  ".$articulos[$i]['creador']?></a>
                                <div class="pull-right">
                                <span id="rol<?php echo $i ?>" class="label label-warning"><?php echo $articulos[$i]['rol']?></span>
                                <span id="nivel<?php echo $i ?>"class="label label-danger"><?php echo "Nivel ".$articulos[$i]['nivel']?></span>
                                </div><br>
                                <small id="creador<?php echo $i ?>"><?php echo "  ".$articulos[$i]['fecha']?></small>                
                            </h4>
                        </div>
                        <div class="panel-body">
                            <div class="pull-left">
                                <img id="imagen<?php echo $i ?>" class="imgUsrArticulo" class="img-rounded" src="/files/img/usuario/<?php echo $articulos[$i]['creador'].'.jpg'?>">
                            </div>
                            <div id="titulo<?php echo $i ?>" class="tituloBody text-center">
                                <a id="refArt<?php echo $i ?>" href="articulo.php?id=<?php echo $articulos[$i]['id'];?>"><?php echo $articulos[$i]['titulo'];?></a>
                            </div>    
                        </div>
                        <div class="accion pull-right">
                            <ul class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span></a>
                            <ul class="dropdown-menu">
                            <li><a id="verArt<?php echo $i ?>" class="dropdown-item" href="/articulo.php?id=<?php echo $articulos[$i]['id']?>">Ver</a></li>
                            <li class="divider"></li>
                            <li><a id="editarArt<?php echo $i?>" <?php if((!isset($_SESSION['login'])||($articulos[$i]['rol']!= $_SESSION["rol"]) ||($articulos[$i]['nivel']> $_SESSION["nivel"]))){?>class="dropdown-item disabled"<?php } else{ ?> class="dropdown-item" href="/modificararticulo.php?id=<?php echo $articulos[$i]['id']?>" <?php } ?>>Editar</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            <?php } ?>
            </div>
            <br>
            <center><span class="label label-default cargar" onclick=<?php $contador+=5 ?>"cargar(<?php echo $contador?>,<?php echo sizeof($articulos)?>)">Cargar Mas</span></center>
        </div>
        <?php }?>
    </div>
</div>
<script type="text/javascript">
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
    function ordenar(array,criterio,nivel,rol, btn){
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
            $("#refArt"+i).attr("href","/articulo.php?id="+stringArray[i].id);
            $("#refArt"+i).html(stringArray[i].titulo);
            $("#imagen"+i).attr("src","/files/img/usuario/"+stringArray[i].creador+".jpg");
            $("#creador"+i).html(stringArray[i].creador);
            $("#creador"+i).attr("href","/usuario.php?id="+stringArray[i].creador);
            $("#verArt"+i).attr("href","/articulo.php?id="+stringArray[i].id);
            if(stringArray[i].nivel > nivel || stringArray[i].rol != rol){
                $("#editarArt"+i).attr("class","dropdown-item disabled");
            }else{
                $("#editarArt"+i).removeClass().addClass('dropdown-item');
                $("#editarArt"+i).attr("href","/modificararticulo.php?id="+stringArray[i].id); 
            }
        }
        x = document.getElementsByClassName("list-group-item disabled");
        for (i = 0; i < x.length; i++) {
            x[i].className='list-group-item';
        } 
        $("#"+btn).removeClass('list-group-item').addClass('list-group-item disabled');  
    }
</script>
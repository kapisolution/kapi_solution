<?php
     require 'backend/articulo.php';
?>
<div id="content">
<div id="bloque">    
<div id="articulo">
    <?php
    $i=0;
     //   for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
            ?>
            <div id="infoArticulo">
            <div>
            <?php
            echo  '<h2> Lvl:' . $busquedaArticulos[$i]['nivel']. '</h2>';
           // echo  '<h2> Ch: ' . $busquedaArticulos[$i]['capitulo']. '</h2>';
            ?>
            </div>
            <div>
            <a class="sinSub" href="/usuario.php?id=<?php echo $busquedaArticulos[$i]['creador']; ?>">
            <img class="imgInfoArticulo" src="/files/img/usuario/<?php echo $busquedaArticulos[$i]['creador'].'.jpg';?>">
            </a>
            <a class="sinSub" href="/usuario.php?id=<?php echo $busquedaArticulos[$i]['creador']; ?>">
     
            <?php
            echo  '<p>' . $busquedaArticulos[$i]['creador']. '</p>';
            ?>
            <a/>
            </div>
            <div>
            <a class="sinSub" href="/rol.php?rol=<?php echo $busquedaArticulos[$i]['rol']; ?>">
            <img class="imgInfoArticulo" src="/files/img/rol/<?php echo $busquedaArticulos[$i]['rol']. '.jpg'?>">
            </a>
            <a class="sinSub" href="/rol.php?rol=<?php echo $busquedaArticulos[$i]['rol']; ?>">
           
           <?php
            echo  '<p>' . $busquedaArticulos[$i]['rol'] . '</p>';
            ?>
            </a>
            </div>
            </div>
            <?php
            echo  '<h2> ' . $busquedaArticulos[$i]['titulo']. '</h1>';
            ?>
            <img class="imgArticulo" src="/files/img/articulos/<?php echo $busquedaArticulos[$i]['img']?>">
            <?php
            echo  '<p> Img: ' . $busquedaArticulos[$i]['img'] . '</p>';
            echo  '<p> ' . $busquedaArticulos[$i]['contenido'] . '</p>';
        //}

?>
<input onclick='responsiveVoice.speak("<?php echo $busquedaArticulos[$i]['contenido']?>", "Spanish Female");' type='button' value='🔊 Leer artículo' />
<div id="ejercicios">
<h2>Ejercicios:</h2>
</div>
<script src='https://code.responsivevoice.org/responsivevoice.js'></script>
</div>
<div id="articulosRelacionados">
<div id="modificacion">
<h2>Crear modificación:</h2>
</div>
    <p>Articulos relacionados</p>
    </div>
</div>
</div>

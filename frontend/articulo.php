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
            echo  '<h2> Lvl:' . $busquedaArticulos[$i]['Nivel_articulo']. '</h2>';
           // echo  '<h2> Ch: ' . $busquedaArticulos[$i]['capitulo']. '</h2>';
            ?>
            </div>
            <div>
            <a class="sinSub" href="/usuario.php?id=<?php echo $busquedaArticulos[$i]['id_creador']; ?>">
            <img class="imgInfoArticulo" src="/files/img/usuario/<?php echo $busquedaArticulos[$i]['id_creador'].'.jpg';?>">
            </a>
            <a class="sinSub" href="/usuario.php?id=<?php echo $busquedaArticulos[$i]['id_creador']; ?>">
     
            <?php
            echo  '<p>' . $busquedaArticulos[$i]['id_creador']. '</p>';
            ?>
            <a/>
            </div>
            <div>
            <a class="sinSub" href="/rol.php?rol=<?php echo $busquedaArticulos[$i]['rol_articulo']; ?>">
            <img class="imgInfoArticulo" src="/files/img/rol/<?php echo $busquedaArticulos[$i]['rol_articulo']. '.jpg'?>">
            </a>
            <a class="sinSub" href="/rol.php?rol=<?php echo $busquedaArticulos[$i]['rol_articulo']; ?>">
           
           <?php
            echo  '<p>' . $busquedaArticulos[$i]['rol_articulo'] . '</p>';
            ?>
            </a>
            </div>
            </div>
            <?php
            echo  '<h2> ' . $busquedaArticulos[$i]['titulo']. '</h1>';
            ?>
            <img class="imgArticulo" src="/files/img/articulos/<?php echo $busquedaArticulos[$i]['Imagen']. '.jpg'?>">
            <?php
            echo  '<p> Img: ' . $busquedaArticulos[$i]['Imagen'] . '.jpg</p>';
            echo  '<p> ' . $busquedaArticulos[$i]['contenido'] . '</p>';
        //}

?>
<input onclick='responsiveVoice.speak("<?php echo $busquedaArticulos[0]['contenido']?>", "Spanish Female");' type='button' value='🔊 Leer artículo' />
<script src='https://code.responsivevoice.org/responsivevoice.js'></script>
</div>
<div id="articulosRelacionados">
    <p>Articulos relacionados</p>
    </div>
</div>
</div>

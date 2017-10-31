<?php
     require 'backend/articulo.php';
?>
<div id="content">
    <?php
        for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
            ?>
            <div id="infoArticulo">
            <?php
            echo  '<h1> Lvl:' . $busquedaArticulos[$i]['Nivel_articulo']. '</h1>';
            echo  '<h1> Ch: ' . $busquedaArticulos[$i]['capitulo']. '</h1>';
            ?>
            <img class="imgInfoArticulo" src="/files/img/usuario/<?php echo $busquedaArticulos[$i]['id_creador'].'.jpg';?>">
            <?php
            echo  '<p>' . $busquedaArticulos[$i]['id_creador']. '</p>';
            ?>
            <img class="imgInfoArticulo" src="/files/img/rol/<?php echo $busquedaArticulos[$i]['rol_articulo']. '.jpg'?>">
           <?php
            echo  '<p>' . $busquedaArticulos[$i]['rol_articulo'] . '</p>';
            ?>
            </div>
            <?php
            echo  '<h2> ' . $busquedaArticulos[$i]['titulo']. '</h1>';
            ?>
            <img class="imgArticulo" src="/files/img/articulos/<?php echo $busquedaArticulos[$i]['Imagen']. '.jpg'?>">
           <?php
            echo  '<p> Img: ' . $busquedaArticulos[$i]['Imagen'] . '.jpg</p>';
            echo  '<p> ' . $busquedaArticulos[$i]['contenido'] . '</p>';
        }
    ?>
</div>
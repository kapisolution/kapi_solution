<?php
     require 'backend/articulo.php';
?>
<div id="content">
    <?php
        for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
            echo  '<h1> Lvl:' . $busquedaArticulos[$i]['Nivel_articulo']. '</h1>';
            echo  '<h1> Ch: ' . $busquedaArticulos[$i]['capitulo']. '</h1>';
            echo  '<p> Auth: ' . $busquedaArticulos[$i]['id_creador']. '</p>';
            echo  '<p> Rol: ' . $busquedaArticulos[$i]['rol_articulo'] . '</p>';
            echo  '<p> Img: ' . $busquedaArticulos[$i]['Imagen'] . '</p>';
            echo  '<h2> ' . $busquedaArticulos[$i]['titulo']. '</h1>';
            echo  '<p> ' . $busquedaArticulos[$i]['contenido'] . '</p>';
        }
    ?>
</div>
<?php
     require 'backend/busqueda.php';
?>
<div id="content">
    <h3> Resultados de: <?php echo $_GET["search"] ?> </h3>

    <h4>Articulos:</h4>
    <div class="articulos">
    <?php
        for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
            echo '<div class="articulo primario-light">';
                echo '<a href="/articulo.php?id='.$busquedaArticulos[$i]['Nivel_articulo'].'">';
                    echo '<div class="infoArticulo">';
                        echo  '<p> ' . $busquedaArticulos[$i]['Nivel_articulo']. '</p>';
                        echo  '<p> ' . $busquedaArticulos[$i]['capitulo']. '</p>';
                        echo  '<p> ' . $busquedaArticulos[$i]['id_creador']. '</p>';
                        echo  '<p> ' . $busquedaArticulos[$i]['Imagen'] . '</p>';
                        echo  '<p> ' . $busquedaArticulos[$i]['rol_articulo'] . '</p>';
                    echo '</div>';
                    echo '<div class="contenidoArticulo">';
                        echo  '<p> ' . $busquedaArticulos[$i]['titulo']. '</p>';
                    // echo  '<p> ' . $busquedaArticulos[$i]['contenido'] . '</p>';
                    echo '</div>';
                echo '</a>'; 
            echo '</div>';
        }
    ?>
    </div>
    <?php
        if (isset($_SESSION["login"])){
    ?>
    <h4>Usuarios:</h4>
    <div class="usuarios">
    <?php
        for ($i = 0; $i < sizeof($busquedaUsuarios) ; $i++){
            echo '<div class="usuario">';
                echo '<p>' . $busquedaUsuarios[$i]['nick'] . '</p>';
                echo '<p>' . $busquedaUsuarios[$i]['nombre'] . '</p>';
                echo '<p>' . $busquedaUsuarios[$i]['apellidos'] . '</p>';
            echo '</div>';
        }
    ?>
    </div>

    <h4>Ejercicios:</h4>
    <div class="ejercicios">
    <?php
        for ($i = 0; $i < sizeof($busquedaEjercicios) ; $i++){
            echo '<div class="ejercicio">';
                echo  '<p>' . $busquedaEjercicios[$i]['enunciado'] . '</p>';
            echo '</div>';
        }
    ?>
    </div>
    <?php
       }
    ?>
</div>
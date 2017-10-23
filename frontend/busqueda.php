<?php
     require 'backend/busqueda.php';
?>
<div id="content">
    <h3> Resultados de: <?php echo $_GET["search"] ?> </h3>
    <?php
        echo '<h4>Usuarios:</h4>';
        for ($i = 0; $i < sizeof($busquedaUsuarios) ; $i++){
            echo  '<p>' . $busquedaUsuarios[$i]['nick'] . $busquedaUsuarios[$i]['nombre']. $busquedaUsuarios[$i]['apellidos'] . '</p>';
        }
        echo '<h4>Ejercicios:</h4>';
        for ($i = 0; $i < sizeof($busquedaEjercicios) ; $i++){
            echo  '<p>' . $busquedaEjercicios[$i]['enunciado'] . '</p>';
        }
        echo '<h4>Articulos:</h4>';
        for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
                echo  '<p>' . $busquedaArticulos[$i]['nivel']. $busquedaArticulos[$i]['id']. $busquedaArticulos[$i]['Nombre']. $busquedaArticulos[$i]['rol']. $busquedaArticulos[$i]['titulo']. $busquedaArticulos[$i]['contenido'] . '</p>';
        }
    ?>
</div>
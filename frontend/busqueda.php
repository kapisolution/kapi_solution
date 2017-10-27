<?php
     require 'backend/busqueda.php';
?>
<div id="content">
    <h3> Resultados de: <?php echo $_GET["search"] ?> </h3>

    <h4>Articulos:</h4>
    <div class="articulos">
    <?php
        for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
            echo '<div class="articulo">';
                echo '<a class="sinSub" href="/articulo.php?id='.$busquedaArticulos[$i]['Nivel_articulo'].'">';
                    echo '<div class="infoArticulo">';
                        echo  '<p> ' . $busquedaArticulos[$i]['Nivel_articulo']. '</p>';
                        echo  '<p> ' . $busquedaArticulos[$i]['capitulo']. '</p>';
                        //echo  '<p> ' . $busquedaArticulos[$i]['Imagen'] . '</p>';
                        ?>
                        <svg class="SVGsecundario iconoArticulo" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                        viewBox="0 0 294.156 294.156" style="enable-background:new 0 0 294.156 294.156;" xml:space="preserve">
                        <g>
                        <path d="M227.002,108.256c-2.755-41.751-37.6-74.878-80.036-74.878c-42.447,0-77.298,33.141-80.038,74.907
                            C28.978,113.059,0,145.39,0,184.184c0,42.234,34.36,76.595,76.595,76.595h116.483c3.313,0,6-2.687,6-6s-2.687-6-6-6H76.595
                            C40.977,248.778,12,219.801,12,184.184c0-34.275,26.833-62.568,61.087-64.411c3.184-0.171,5.678-2.803,5.678-5.991
                            c0-0.119-0.003-0.236-0.01-0.355c0.09-37.536,30.654-68.049,68.211-68.049c37.563,0,68.132,30.518,68.211,68.063
                            c-0.005,0.116-0.009,0.238-0.009,0.329c0,3.196,2.505,5.831,5.696,5.992c34.37,1.741,61.292,30.038,61.292,64.421
                            c0,19.526-8.698,37.801-23.864,50.138c-2.571,2.091-2.959,5.87-0.868,8.44c2.091,2.571,5.87,2.959,8.44,0.868
                            c17.98-14.626,28.292-36.293,28.292-59.447C294.156,145.269,265.08,112.926,227.002,108.256z"/>
                        <path d="M140.966,141.078v76.511c0,3.313,2.687,6,6,6s6-2.687,6-6v-76.511c0-3.313-2.687-6-6-6S140.966,137.765,140.966,141.078z"
                            />
                        <path d="M181.283,152.204c1.536,0,3.071-0.586,4.243-1.757c2.343-2.343,2.343-6.142,0-8.485l-34.317-34.317
                            c-2.343-2.343-6.143-2.343-8.485,0l-34.317,34.317c-2.343,2.343-2.343,6.142,0,8.485c2.343,2.343,6.143,2.343,8.485,0
                            l30.074-30.074l30.074,30.074C178.212,151.618,179.748,152.204,181.283,152.204z"/>
                        </g>
                        </svg>
                        <?php
                    echo '</div>';
                    echo '<div class="contenidoArticulo">';
                        echo  '<p> ' . $busquedaArticulos[$i]['titulo']. '</p>';
                        echo  '<p> ' . $busquedaArticulos[$i]['id_creador']. '</p>';
                        echo  '<p> ' . $busquedaArticulos[$i]['rol_articulo'] . '</p>';
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
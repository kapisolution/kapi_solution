<?php
     require 'backend/busqueda.php';
?>
<div id="content">
    <h3> Resultados de: <?php echo $_GET["search"] ?> </h3>
    
    <div class="tabs">
        <button class="tablink tab-selected" onclick="mostrarTarjetas(event, 'usuarios')">Usuarios</button>
        <button class="tablink" onclick="mostrarTarjetas(event, 'articulos')">Artículos</button>
        <button class="tablink" onclick="mostrarTarjetas(event, 'ejercicios')">Ejercicios</button>
    </div> 

    <div class="tarjetas" id="usuarios">
    <?php
        for ($i = 0; $i < sizeof($busquedaUsuarios) ; $i++){
            echo '<div class="tarjeta">';            
                echo '<div class="infoTarjeta" style="background-image: url(&quot;/files/img/rol/' . $busquedaUsuarios[$i]['rol']. '.jpg&quot;);">';
                echo '<a class="sinSub" href="/usuario.php?id='.$busquedaUsuarios[$i]['nick'].'">';
                    ?>
                    <img class="imgUser" src="/files/img/usuario/<?php echo $busquedaUsuarios[$i]['nick'].'.jpg';?>">
                    <?php
                echo '</a>'; 
              
                echo '<a class="sinSub" href="/usuario.php?id='.$busquedaUsuarios[$i]['nick'].'">';
                    ?> 
                    <svg class="SVGsecundario iconoTarjeta" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 294.843 294.843" style="enable-background:new 0 0 294.843 294.843;" xml:space="preserve">
                        <g>
                            <path d="M278.527,79.946c-10.324-20.023-25.38-37.704-43.538-51.132c-2.665-1.97-6.421-1.407-8.392,1.257s-1.407,6.421,1.257,8.392
                                c16.687,12.34,30.521,28.586,40.008,46.983c9.94,19.277,14.98,40.128,14.98,61.976c0,74.671-60.75,135.421-135.421,135.421
                                S12,222.093,12,147.421S72.75,12,147.421,12c3.313,0,6-2.687,6-6s-2.687-6-6-6C66.133,0,0,66.133,0,147.421
                                s66.133,147.421,147.421,147.421s147.421-66.133,147.421-147.421C294.842,123.977,289.201,100.645,278.527,79.946z"/>
                            <path d="M109.699,78.969c-1.876,1.067-3.035,3.059-3.035,5.216v131.674c0,3.314,2.687,6,6,6s6-2.686,6-6V94.74l88.833,52.883
                                l-65.324,42.087c-2.785,1.795-3.589,5.508-1.794,8.293c1.796,2.786,5.508,3.59,8.294,1.794l73.465-47.333
                                c1.746-1.125,2.786-3.073,2.749-5.15c-0.037-2.077-1.145-3.987-2.93-5.05L115.733,79.029
                                C113.877,77.926,111.575,77.902,109.699,78.969z"/>
                        </g>
                    </svg>
                    <?php
                echo '</a>';
            echo '</div>';
            echo '<a class="sinSub" href="/usuario.php?id='.$busquedaUsuarios[$i]['nick'].'">';
                echo '<div class="contenidoTarjeta">';
                    echo '<p>' . $busquedaUsuarios[$i]['nick'] . '</p>';
                    echo '<p>' . $busquedaUsuarios[$i]['Nombre'] . '</p>';
                    echo '<p>' . $busquedaUsuarios[$i]['Apellidos'] . '</p>';
                echo '</div>';
            echo '</a>';
        echo '</div>';
        }
    ?>
    </div>

    <div class="tarjetas" id="articulos" style="display:none">
    <?php
        for ($i = 0; $i < sizeof($busquedaArticulos) ; $i++){
            echo '<div class="tarjeta">';
              
                    echo '<div class="infoTarjeta" style="background-image: url(&quot;/files/img/articulos/' . $busquedaArticulos[$i]['Imagen']. '.jpg&quot;);">';
                    echo '<a class="sinSub" href="/articulo.php?id='.$busquedaArticulos[$i]['id'].'">';
                    ?>
                    <img class="imgUser" src="/files/img/rol/<?php echo $busquedaArticulos[$i]['rol_articulo'].'.jpg';?>">
                    <?php
                       echo '</a>'; 
                        echo  '<p> ' . $busquedaArticulos[$i]['Nivel_articulo']. '</p>';
                        echo  '<p> ' . $busquedaArticulos[$i]['capitulo']. '</p>';
                        //echo  '<p> ' . $busquedaArticulos[$i]['Imagen'] . '</p>';
                        echo '<a class="sinSub" href="/articulo.php?id='.$busquedaArticulos[$i]['id'].'">';
                       ?>
                      
                      <svg class="SVGsecundario iconoTarjeta" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                      viewBox="0 0 294.843 294.843" style="enable-background:new 0 0 294.843 294.843;" xml:space="preserve">
                 <g>
                     <path d="M278.527,79.946c-10.324-20.023-25.38-37.704-43.538-51.132c-2.665-1.97-6.421-1.407-8.392,1.257s-1.407,6.421,1.257,8.392
                         c16.687,12.34,30.521,28.586,40.008,46.983c9.94,19.277,14.98,40.128,14.98,61.976c0,74.671-60.75,135.421-135.421,135.421
                         S12,222.093,12,147.421S72.75,12,147.421,12c3.313,0,6-2.687,6-6s-2.687-6-6-6C66.133,0,0,66.133,0,147.421
                         s66.133,147.421,147.421,147.421s147.421-66.133,147.421-147.421C294.842,123.977,289.201,100.645,278.527,79.946z"/>
                     <path d="M109.699,78.969c-1.876,1.067-3.035,3.059-3.035,5.216v131.674c0,3.314,2.687,6,6,6s6-2.686,6-6V94.74l88.833,52.883
                         l-65.324,42.087c-2.785,1.795-3.589,5.508-1.794,8.293c1.796,2.786,5.508,3.59,8.294,1.794l73.465-47.333
                         c1.746-1.125,2.786-3.073,2.749-5.15c-0.037-2.077-1.145-3.987-2.93-5.05L115.733,79.029
                         C113.877,77.926,111.575,77.902,109.699,78.969z"/>
                 </g>
                 </svg>
                        <?php
                        echo '</a>';
                    echo '</div>';
                    echo '<a class="sinSub" href="/articulo.php?id='.$busquedaArticulos[$i]['id'].'">';
                    echo '<div class="contenidoTarjeta">';
                        echo  '<p> ' . $busquedaArticulos[$i]['titulo']. '</p>';
                        echo  '<p> ' . $busquedaArticulos[$i]['id_creador']. '</p>';
                    //    echo  '<p> ' . $busquedaArticulos[$i]['rol_articulo'] . '</p>';
                    // echo  '<p> ' . $busquedaArticulos[$i]['contenido'] . '</p>';
                    echo '</div>';
                    echo '</a>';
            echo '</div>';
        }
    ?>
    </div>

    <div class="tarjetas" id="ejercicios" style="display:none">
    <?php
        for ($i = 0; $i < sizeof($busquedaEjercicios) ; $i++){
            echo '<div class="ejercicio">';
                echo  '<p>' . $busquedaEjercicios[$i]['enunciado'] . '</p>';
            echo '</div>';
        }
    ?>
    </div>

    <?php
        if (isset($_SESSION["login"])){
    ?>
    <?php
       }
    ?>
</div>
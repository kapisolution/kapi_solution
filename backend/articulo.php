<?php
if(isset($_GET["id"])&&$_GET["id"]!=""){ 
    $sql ='SELECT * FROM Articulos WHERE id = '.$_GET["id"] .';';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla articulos");
    $articulo = mysqli_fetch_array($consulta);

  /*  $sql ='SELECT * FROM Preguntas WHERE id = '.$_GET["id"] .';';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla articulos");
    $preguntas = array();
    $n_preguntas=0;
    while($pregunta = mysqli_fetch_array($consulta)){
        $preguntas[] = $pregunta;
        $n_preguntas++;
    }

    echo $preguntas[0]['id'];*/
}
?>
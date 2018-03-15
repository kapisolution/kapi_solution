<?php
if(isset($_GET["search"])&&$_GET["search"]!=""){ 
    $sql ='SELECT * FROM Preguntas WHERE texto LIKE "%'.$_GET["search"] .'%";';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla preguntas");
    $busquedaPreguntas = array();
    while($fila = mysqli_fetch_array($consulta)){
        $busquedaPreguntas[] = $fila;
    }
}
?>
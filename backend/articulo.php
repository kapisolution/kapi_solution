<?php
if(isset($_GET["id"])&&$_GET["id"]!=""){ 

    /*
    Consulta para preparar los datos del articulo

    return - $articulo
    */
    $id =$_GET["id"];
    $id = stripcslashes($id);
    $id = mysql_real_scape_string($id);
    $sql ="SELECT * FROM Articulos WHERE id = '".$id."';";
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla articulos");
    $articulo = mysqli_fetch_array($consulta);

    /*
    Consulta que prepara las preguntas del articulos

    return - $preguntas[] y $n_preguntas
    */
    $sql ="SELECT * FROM Preguntas WHERE id = '".$_GET["id"]."';";
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla preguntas");
    $preguntas = array();
    $n_preguntas=0;
    while($pregunta = mysqli_fetch_array($consulta)){
        $preguntas[] = $pregunta;
        $n_preguntas++;
    }

    /*
    Consulta que prepara los articulos relacionados con el que se está viendo

    La relacion se basa en que tengan mismo rol y nivel

    return - $relacionados y $n_relacionados
    */
    $sql ="SELECT * FROM Articulos WHERE rol = '". $articulo['rol'] ."' AND id!='".$_GET["id"]."';";
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre articulos relacionados");
    $relacionados = array();
    $n_relacionados=0;
    while($relacionado = mysqli_fetch_array($consulta)){
        $relacionados[] = $relacionado;
        $n_relacionados++;
    }
}
?>
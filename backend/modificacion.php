<?php
if(isset($_GET["id"])&&$_GET["id"]!=""){ 

    /*
    Consulta para preparar los datos de la modificacion del articulo

    return - $creacionArticulo
    */
    $id =$_GET["id"];
    $id = stripcslashes($id);
    $id = mysql_real_scape_string($id);
    $sql ="SELECT * FROM Modificacion_articulo a, Modificaciones m WHERE a.id <> 0 AND a.id_mod = '".$id ."' AND a.id_mod = m.id_modificacion ORDER BY fecha DESC;";
	$consulta = mysqli_query($con, $sql) or die("Error en consulta sobre la tabla creaciones");
    $modificacionArticulo = mysqli_fetch_array($consulta);


    /*
    Consulta que prepara las preguntas del articulos

    return - $preguntas[] y $n_preguntas
    */
    $sql ="SELECT * FROM Modificacion_pregunta WHERE id_mod = '".$_GET["id"] ."';";
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
    $sql ='SELECT * FROM Articulos WHERE nivel = '. $modificacionArticulo['nivel'] .' AND rol = "'. $modificacionArticulo['rol'] .'";';
    $consulta = mysqli_query($con, $sql) or die("Error en consulta sobre articulos relacionados");
    $relacionados = array();
    $n_relacionados=0;
    while($relacionado = mysqli_fetch_array($consulta)){
        $relacionados[] = $relacionado;
        $n_relacionados++;
    }
}
?>
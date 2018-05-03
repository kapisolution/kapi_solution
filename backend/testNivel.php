<?php
    session_start();
    require 'conexion.php';

    $jsonText = file_get_contents("../doc/preguntasTestNivel.json");
    $preguntas = json_decode($jsonText, true);
    $puntos=0;
    // print_r($_POST);
    // print_r($preguntas);
    foreach($_POST as $key => $value){
        // print_r($preguntas[$key]['correcta']);
        // print_r($value);
        if($preguntas[$key]['correcta'] == $value){
            $puntos+=$preguntas[$key]['puntos'];
        }else{
            $puntos-=$preguntas[$key]['puntos'];
        }
    }
    if($puntos < 0.5){
        $puntos = 1;
    }
    else if($puntos > 1 && $puntos < 4){
        $puntos = 2;
    }
    else if($puntos > 4 && $puntos < 6){
        $puntos = 3;
    }else{
        $puntos = 4;
    }
    // print_r($puntos);
    $nombre=$_SESSION['nick']; 
    $sqlInsert = "UPDATE Usuarios SET nivel = '$puntos' WHERE nick = '$nombre';";
    if (mysqli_query($con, $sqlInsert)) {
        $sql = 'SELECT * FROM Usuarios WHERE nick="'.$nombre.'";';
        $resultado = mysqli_query($con, $sql) or die("Error por nick en consulta sobre la tabla Usuarios");
        $usuario = array();
        $_SESSION["formularioNivel"] = true;
        $_SESSION["nivel"] = $puntos; 
        header('Location: /');
    } else {
        echo("Error en la consulta");
    }  
    include 'desconexion.php';
?>
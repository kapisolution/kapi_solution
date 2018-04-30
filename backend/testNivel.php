<?php
    session_start();
    require 'conexion.php';

    $jsonText = file_get_contents("preguntasTestNivel.json");
    $preguntas = json_decode($jsonText, true);
    $puntos=0;
    // print_r($_POST);
    // print_r($preguntas);
    foreach($_POST as $key => $value){
        // print_r($preguntas[$key]['correcta']);
        // print_r($value);
        if($preguntas[$key]['correcta'] == $value){
            $puntos+=1;
        }
    }
    // print_r($puntos);
    $nombre=$_SESSION['nick']; 
    $examen=true;
    $sqlInsert = "UPDATE Usuarios SET nivel = '$puntos',examen='$examen' WHERE nick = '$nombre';";
    if (mysqli_query($con, $sqlInsert)) {
        $sql = 'SELECT * FROM Usuarios WHERE nick="'.$nombre.'";';
        $resultado = mysqli_query($con, $sql) or die("Error por nick en consulta sobre la tabla Usuarios");
        $usuario = array();
        $_SESSION["formularioNivel"] = true;
        $_SESSION["nivel"] = $puntos; 
        header('Location: /');
    } else {
        echo $nombre;
        echo $puntos;
        echo("Error en la consulta");
    }  
    include 'desconexion.php';
?>
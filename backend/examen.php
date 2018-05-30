<?php 
    session_start();
    require 'conexion.php';
    $niv=$_SESSION['nivel']+1;
    $jsonText = file_get_contents("../doc/examenNivel".$niv.".json");
    $preguntas = json_decode($jsonText, true);
    $puntos=0;
    $nombre=$_SESSION['nick']; 
    foreach($_POST as $key => $value){
        if($preguntas[$key]['correcta'] == $value){
            $puntos+=$preguntas[$key]['puntos'];
        }
    }
    if($puntos > 5){
        $sqlInsert = "UPDATE Usuarios SET nivel = '$niv' WHERE nick = '$nombre';";
        if (mysqli_query($con, $sqlInsert)) {
            $sql = 'SELECT * FROM Usuarios WHERE nick="'.$nombre.'";';
            $resultado = mysqli_query($con, $sql) or die("Error por nick en consulta sobre la tabla Usuarios");
            $usuario = array();
            $_SESSION["formularioNivel"] = true;
            $_SESSION["nivel"] = $niv;
            $_SESSION["examen"]='aprobado'; 
        } else {
            echo("Error en la consulta");
        }  
    }else{
        $_SESSION["examen"]='suspenso';
    }
    include 'desconexion.php';
    header('Location: /');
?>

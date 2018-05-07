<?php 
    session_start();
    require 'conexion.php';
    $niv=$_SESSION['nivel']+1;
    $jsonText = file_get_contents("../doc/examenNivel".$niv.".json");
    $preguntas = json_decode($jsonText, true);
    $puntos=0;
    $nombre=$_SESSION['nick']; 
    // print_r($_POST);
    // print_r($preguntas);
    foreach($_POST as $key => $value){
        // print_r($preguntas[$key]['correcta']);
        // print_r($value);
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
    // $sqlInsert2 = "SELECT * FROM Realiza_Examen WHERE nick = '$nombre';";
    // $resultado2 = mysqli_query($con, $sqlInsert2) or die("Error por nick en seleccion Usuario Realizaexamen");
    // $num_rows = mysql_num_rows($resultado2);
    // echo $num_rows;
    // if($num_rows > 0){
    //     $sqlInsert3 = "UPDATE Realiza_Examen SET id_ex = '$niv' WHERE nick = '$nombre';";
    //     $resultado3 = mysqli_query($con, $sqlInsert3) or die("Error por nick en actualizacion realizaexamen");
    // }else{
    //     $sqlInsert4 = "INSERT INTO Realiza_Examen(nick,id_ex) VALUES('$nombre','$niv')";
    //     $resultado4 = mysqli_query($con, $sqlInsert4) or die("Error por nick en insercion realizaexamen");
    // }
    include 'desconexion.php';
    header('Location: /');
?>

<?php
    session_start();
    require 'conexion.php';
    print_r($_POST);
    $voto=$_POST['voto'];
    $contribucion=$_POST['contribucion'];
    $nick=$_POST['usuario'];
    $comentario=$_POST['comentario'];

    if($voto=="negativo"){
        $sqlInsert = "UPDATE Modificaciones SET votos_negativos=votos_negativos+1 WHERE id_modificacion = '$contribucion';";
    }else{
        $sqlInsert = "UPDATE Modificaciones SET votos_positivos=votos_positivos+1 WHERE id_modificacion = '$contribucion';";
    }
    if (mysqli_query($con, $sqlInsert)) {
        echo 'Todo ha ido bien';
    }else{
        echo 'La consulta ha fallado';
    }

    $sql = "INSERT INTO Votaciones_Contribuciones(contribucion, nick, voto, comentario) VALUES ('$contribucion','$nick','$voto','$comentario');";
    if (mysqli_query($con, $sql)) {
        header('Location:/creacion.php?id='.$contribucion);
    }else{
        echo 'La consulta ha fallado';
    }
    include 'desconexion.php';
?>
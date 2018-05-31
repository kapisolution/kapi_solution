<?php
    session_start();
    require 'conexion.php';
    // print_r($_POST);
    $voto=$_POST['voto'];
    $contribucion=$_POST['contribucion'];
    $nick=$_POST['usuario'];
    $comentario=$_POST['comentario'];
    // $sql ='SELECT * FROM Modificaciones WHERE id_modificacion LIKE "'.$contribucion.'";';
    // $result=mysqli_query($con, $sql);
    // if ($result){
    //     $fila = mysqli_fetch_array($result);
    //     $votos[] = $fila;
    //     // $numRegistros = mysqli_num_rows($result);
    // }else{
    //     echo ('La consulta de votaciones usuario ha fallado');
    // }
    if($voto=="negativo"){
        $sqlInsert = "UPDATE Modificaciones SET votos_negativos=votos_negativos+1 WHERE id_modificacion = '$contribucion';";
    }else{
        $sqlInsert = "UPDATE Modificaciones SET votos_positivos=votos_positivos+1 WHERE id_modificacion = '$contribucion';";
        // $positivos=$votos[0]['votos_positivos'];
        // $negativos=$votos[0]['votos_negativos'];
        // $total=$positivos+$negativos;
        // $porcentaje=($positivos*100)/$total;
        // // print_r($positivos);
        // // print_r($negativos);
        // // echo $total;
        // // echo $porcentaje;
        // // print_r($votos);
        // if($porcentaje > 60 && $total>1){
        //     $InsertArticulos = "INSERT INTO Articulos (nick, id_ex, nota) VALUES ('$nick', '$id_ex', '$nota');";
        //     if (mysqli_query($con, $InsertArticulos)) {
        //         echo 'Todo ha ido bien';
        //     }else{
        //         echo 'La consulta ha fallado';
        //     }
        // }
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
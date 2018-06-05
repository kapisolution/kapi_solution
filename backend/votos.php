<?php
    session_start();
    require 'conexion.php';
    $voto=$_POST['voto'];
    $contribucion=$_POST['contribucion'];
    $nick=$_POST['usuario'];
    $comentario=$_POST['comentario'];
    $sql ='SELECT * FROM Modificaciones WHERE id_modificacion LIKE "'.$contribucion.'";';
    $result=mysqli_query($con, $sql);
    if ($result){
        $fila = mysqli_fetch_array($result);
        $votos[] = $fila;
    }else{
        echo ('La consulta de votaciones usuario ha fallado');
    }
    
    //Si el voto es negativo no entramos a insertar en articulos consolidados
    if($voto=="negativo"){
        $sqlInsert = "UPDATE Modificaciones SET votos_negativos=votos_negativos+1 WHERE id_modificacion = '$contribucion';";
    }else{
        
        $sqlInsert = "UPDATE Modificaciones SET votos_positivos=votos_positivos+1 WHERE id_modificacion = '$contribucion';";
        $positivos=$votos[0]['votos_positivos'];
        $negativos=$votos[0]['votos_negativos'];
        $total=$positivos+$negativos;
        $porcentaje=($positivos*100)/$total;

        //Actualizacion de la creacion en articulos consolidados
        if($porcentaje > 60 && $total>1){
            //Seleccionamos los datos de la modificacion para insertar en articulos como consolidado
            $sql ='SELECT * FROM Modificacion_articulo WHERE id_mod LIKE "'.$contribucion.'";';
            $result=mysqli_query($con, $sql);
            if ($result){
                $filaMod = mysqli_fetch_array($result);
                $modificacion[] = $filaMod;
                //Insertamos en articulos
                $nid=$modificacion[0]['id_mod'];
                $nnivel=$modificacion[0]['nivel'];
                $nrol=$modificacion[0]['rol'];
                $ntitulo=$modificacion[0]['titulo'];
                $ncontenido=$modificacion[0]['contenido'];
                $ncreador=$modificacion[0]['creador'];
                $nfecha=$modificacion[0]['fecha'];
                $InsertArticulos = "INSERT INTO Articulos (id, nivel, rol, titulo, contenido, creador, fecha) VALUES ('$nid', '$nnivel', '$nrol', '$ntitulo', '$ncontenido', '$ncreador', '$nfecha');";
                $consulta1 = mysqli_query($con, $InsertArticulos) or die("Error en consulta sobre la tabla arti, ". mysqli_error($con) . " " . $InsertArticulos);
                
                
                //Seleccionamos las preguntas de la contribucion y las insertamos en preguntas consolidadas
                $sqlPreguntas ='SELECT * FROM Modificacion_pregunta WHERE id_mod LIKE "'.$contribucion.'";';
                $resultPreguntas=mysqli_query($con, $sqlPreguntas);
                if ($resultPreguntas){
                    while($row = mysqli_fetch_assoc($resultPreguntas)){                  
                            $key = md5(microtime().rand());
                            $pid=$row['id_mod'];
                            $pnivel=$row['nivel'];
                            $ptexto=$row['texto'];
                            $prol=$row['rol'];
                            $pA=$row['A'];
                            $pB=$row['B'];
                            $pC=$row['C'];
                            $pD=$row['D'];
                            $pCorrecta=$row['correcta'];
                            $pId=$row['nivel'];
                            $InsertPreguntas = "INSERT INTO Preguntas (id_pregunta, nivel, texto, rol, A, B, C, D, correcta, id) VALUES ('$key', '$pnivel', '$ptexto', '$prol', '$pA', '$pB', '$pC', '$pD', '$pCorrecta', '$pid');";
                            $consulta2 = mysqli_query($con, $InsertPreguntas) or die("Error en consulta sobre la tabla preg, ". mysqli_error($con) . " " . $InsertPreguntas);
                    }
                }
                //caso de ser una modificacion de articulo existente borramos el articulo anterior y sus preguntas
                if($modificacion[0]['id'] != '0'){
                    $sqlDelete="DELETE FROM Articulos WHERE id='".$modificacion[0]['id']."';";
                    mysqli_query($con, $sqlDelete) or die(mysqli_error($con));

                    $sqlDelete="DELETE FROM Preguntas  WHERE id_pregunta='".$modificacion[0]['id']."';";
                    mysqli_query($con, $sqlDelete) or die("Error en consulta sobre la tabla Preguntas, ". mysqli_error($con) . " " . $sqlDelete);
                }
                //BORRAR DE MODIFICACION_PREGUNTA Y MODIFICACION_ARTICULO
                $sqlDelete="DELETE FROM Modificacion_articulo WHERE id_mod='".$contribucion."';";
                mysqli_query($con, $sqlDelete) or die("Error en consulta sobre la tabla modArticulos, ". mysqli_error($con) . " " . $sqlDelete);
                
                $sqlDelete="DELETE FROM Modificacion_pregunta  WHERE id_mod='".$contribucion."';";
                mysqli_query($con, $sqlDelete) or die("Error en consulta sobre la tabla modArticulos, ". mysqli_error($con) . " " . $sqlDelete);
            }else{
                echo ('La consulta de votaciones usuario ha fallado');
            }    
        }
    }
    if (mysqli_query($con, $sqlInsert)) {
        echo 'Todo ha ido bien';
    }else{
        echo 'La consulta ha fallado';
    }
    //Insertamos en la tabla VotacionesContribuciones para restriccion usuario vote 1 sola vez
    $sqlContribu = "INSERT INTO Votaciones_Contribuciones(contribucion, nick, voto, comentario) VALUES ('$contribucion','$nick','$voto','$comentario');";
    if (mysqli_query($con, $sqlContribu)) {
        header('Location:/comunidad.php');
    }else{
        echo 'La consulta ha fallado';
    }
    include 'desconexion.php';
?>
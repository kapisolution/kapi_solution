<?php
    $id_mod = uniqid();
    if($titulo=" " || $contenido=" "){
        $_SESSION['creacion']='no';
    }else{
        $_SESSION['creacion']='si';
        $sqlModificacion = "INSERT INTO Modificaciones (id_modificacion, votos_positivos, votos_negativos, nick) VALUES ('$id_mod', 0, 0 , '$creador');";
        $consulta = mysqli_query($con, $sqlModificacion) or die("No se pudo insertar la modificacion");    
        
        $sql = "INSERT INTO Modificacion_articulo (id_mod, id, rol, nivel, titulo, contenido, creador) VALUES ('$id_mod', '$id', '$rol', '$nivel', '$titulo', '$contenido', '$creador');";
        $consulta = mysqli_query($con, $sql) or die("No se pudo insertar el articulo");    

    
        if ($pregunta0!=""){
            $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta0', '$respuestaA0', '$respuestaB0', '$respuestaC0', '$respuestaD0', '$correcta0', '$id');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta0");
            
        }
        if ($pregunta1!=""){
            $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta1', '$respuestaA1', '$respuestaB1', '$respuestaC1', '$respuestaD1', '$correcta1', '$id');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta1"); 
        }
        if ($pregunta2!=""){
            $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta2', '$respuestaA2', '$respuestaB2', '$respuestaC2', '$respuestaD2', '$correcta2', '$id');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta2");   
        }
    }
?>
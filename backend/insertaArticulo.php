<?php
    $sql = "INSERT INTO Modificacion_articulo (id, rol, nivel, titulo, contenido, creador) VALUES ('$id', '$rol', '$nivel', '$titulo', '$contenido', '$creador');";
    $consulta = mysqli_query($con, $sql) or die("No se pudo insertar el articulo");    

    $id_mod = mysqli_insert_id($con);
    $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta0', '$respuestaA0', '$respuestaB0', '$respuestaC0', '$respuestaD0', '$correcta0', '$id');";
    $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta0"); 
    $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta1', '$respuestaA1', '$respuestaB1', '$respuestaC1', '$respuestaD1', '$correcta1', '$id');";
    $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta1"); 
    $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta2', '$respuestaA2', '$respuestaB2', '$respuestaC2', '$respuestaD2', '$correcta2', '$id');";
    $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta2");   
?>
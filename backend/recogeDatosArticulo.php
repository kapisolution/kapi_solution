<?php
    $nivel=$_POST["nivel"];
    $rol=$_SESSION["rol"];
    $titulo=$_POST["titulo"];
    $contenido=$_POST["contenido"];
    $creador= $_SESSION['nick'];
    
    $pregunta0=$_POST["textoPregunta0"];
    $respuestaA0=$_POST["respuestaA0"];
    $respuestaB0=$_POST["respuestaB0"];
    $respuestaC0=$_POST["respuestaC0"];
    $respuestaD0=$_POST["respuestaD0"];
    $correcta0=$_POST["correcta0"];
    
    $pregunta1=$_POST["textoPregunta1"];
    $respuestaA1=$_POST["respuestaA1"];
    $respuestaB1=$_POST["respuestaB1"];
    $respuestaC1=$_POST["respuestaC1"];
    $respuestaD1=$_POST["respuestaD1"];
    $correcta1=$_POST["correcta1"];
    
    $pregunta2=$_POST["textoPregunta2"];
    $respuestaA2=$_POST["respuestaA2"];
    $respuestaB2=$_POST["respuestaB2"];
    $respuestaC2=$_POST["respuestaC2"];
    $respuestaD2=$_POST["respuestaD2"];
    $correcta2=$_POST["correcta2"];
?>
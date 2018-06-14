<?php
    $nivel=$_POST["nivel"];
    $rol=$_SESSION["rol"];
    $titulo=mysqli_real_escape_string($con, $_POST["titulo"]);
    $contenido=mysqli_real_escape_string($con, $_POST["contenido"]);
    $creador= $_SESSION['nick'];
    
    $pregunta0=mysqli_real_escape_string($con,$_POST["textoPregunta0"]);
    $respuestaA0=mysqli_real_escape_string($con,$_POST["respuestaA0"]);
    $respuestaB0=mysqli_real_escape_string($con,$_POST["respuestaB0"]);
    $respuestaC0=mysqli_real_escape_string($con,$_POST["respuestaC0"]);
    $respuestaD0=mysqli_real_escape_string($con,$_POST["respuestaD0"]);
    $correcta0=mysqli_real_escape_string($con,$_POST["correcta0"]);
    
    $pregunta1=mysqli_real_escape_string($con,$_POST["textoPregunta1"]);
    $respuestaA1=mysqli_real_escape_string($con,$_POST["respuestaA1"]);
    $respuestaB1=mysqli_real_escape_string($con,$_POST["respuestaB1"]);
    $respuestaC1=mysqli_real_escape_string($con,$_POST["respuestaC1"]);
    $respuestaD1=mysqli_real_escape_string($con,$_POST["respuestaD1"]);
    $correcta1=mysqli_real_escape_string($con,$_POST["correcta1"]);
    
    $pregunta2=mysqli_real_escape_string($con,$_POST["textoPregunta2"]);
    $respuestaA2=mysqli_real_escape_string($con,$_POST["respuestaA2"]);
    $respuestaB2=mysqli_real_escape_string($con,$_POST["respuestaB2"]);
    $respuestaC2=mysqli_real_escape_string($con,$_POST["respuestaC2"]);
    $respuestaD2=mysqli_real_escape_string($con,$_POST["respuestaD2"]);
    $correcta2=mysqli_real_escape_string($con,$_POST["correcta2"]);
?>
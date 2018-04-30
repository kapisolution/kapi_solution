<!--
    Falta redirigir a inicio o a signin en caso de exito o error en el signin
-->

<script src="../js/signin.js"></script>
<?php
    session_start();
    require 'conexion.php';
    $nombre=$_POST["alias"]; 
    $email=$_POST["email"];
    $pass=$_POST["pass"];
    $rol=$_POST["elegirRol"];
    
    $sqlNick = 'SELECT * FROM Usuarios WHERE nick LIKE "'.$nombre.'";';
    $sqlEmail = 'SELECT * FROM Usuarios WHERE email LIKE "'.$email.'";';
    $resultadoNick = mysqli_query($con, $sqlNick) or die("Error por nick en consulta sobre la tabla Usuarios");
    $numRegistrosNick = $resultadoNick->num_rows;
    $resultadoEmail = mysqli_query($con, $sqlEmail) or die("Error por email en consulta sobre la tabla Usuarios");
    $numRegistrosEmail = $resultadoEmail->num_rows;
    
    if($numRegistrosNick>0){
        header('Location: /signin.php?signin=kon');
    }
    else if($numRegistrosEmail>0){
        header('Location: /signin.php?signin=kom');
    }
    else {
        $password = str_replace(' ', '',$pass);
        $passdb = md5($password);
        $sqlInsert = "INSERT INTO Usuarios(nick,rol,password,email) VALUES('$nombre','$rol','$passdb','$email')";
        if (mysqli_query($con, $sqlInsert)) { 
            $_SESSION["nick"] = $nombre;
            $_SESSION["login"] = true;
            $_SESSION["formularioNivel"] = false;  
            header('Location: /');
        } else {
            echo("Error en la consulta");
        }
    }   
    include 'desconexion.php';
?>


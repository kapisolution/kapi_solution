<!--
    Falta redirigir a inicio o a signin en caso de exito o error en el signin
-->

<script src="../js/sign_in.js"></script>
<?php
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
        echo ("<script>");
        echo ("alertNick()");
        echo ("</script>");
    }
    else if($numRegistrosEmail>0){
        echo ("<script>");
        echo ("alertEmail()");
        echo ("</script>");
    }
    else {
        $sqlInsert = "INSERT INTO Usuarios(nick,rol,password,email) VALUES('$nombre','$rol','$pass  ','$email')";
        if (mysqli_query($con, $sqlInsert)) {   
            echo ("<script>");
            echo ("alertInsert()");
            echo ("</script>");
        } else {
            echo("Error en la consulta");
        }
    }   
    include 'desconexion.php';
?>


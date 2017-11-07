<script src="../js/login.js"></script>
<?php
    require 'conexion.php';
    $nombre=$_POST["alias"]; 
    $pass=$_POST["pass"];
    echo $pass;
    //'" AND password LIKE "'.$pass.

    $sql = 'SELECT nick,password FROM Usuarios WHERE nick LIKE "'.$nombre.'"AND password LIKE "'.$pass.'";';
    $resultado = mysqli_query($con, $sql) or die("Error por nick en consulta sobre la tabla Usuarios");
    $numRegistros = $resultado->num_rows;
        
    if($numRegistros==0){
        echo ("<script>");
        echo ("alertNick()");
        echo ("</script>"); 
        
    }
    else{
        echo ("<script>");
        echo ("alertCorrect()");
        echo ("</script>");
    }  
    include 'desconexion.php';
?>
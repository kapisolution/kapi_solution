<script src="../js/login.js"></script>
<?php
    require 'conexion.php';
    $nombre=$_POST["alias"]; 
    $pass=$_POST["pass"];
   
    $sql = 'SELECT * FROM Usuarios WHERE nick="'.$nombre.'";';
    $resultado = mysqli_query($con, $sql) or die("Error por nick en consulta sobre la tabla Usuarios");
    include 'desconexion.php';
    $usuario = array();
    while($fila = mysqli_fetch_array($resultado)){
        $usuario[] = $fila;
    }
    echo $usuario[0]['password'];
    echo $pass;
    $passdb=$usuario[0]['password'];
    if($pass == ($usuario[0]['password'])){  
        header('Location:/');
    }
    else{
        header('Location:/login.php?login=false');
    }
?>
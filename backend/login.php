<script src="../js/login.js"></script>
<?php
    session_start();
    require 'conexion.php';
    $nombre=$_POST["alias"]; 
    $pass=$_POST["pass"];
   
    $sql = 'SELECT password FROM Usuarios WHERE nick="'.$nombre.'";';
    $resultado = mysqli_query($con, $sql) or die("Error por nick en consulta sobre la tabla Usuarios");
    include 'desconexion.php';
    $usuario = array();
    while($fila = mysqli_fetch_array($resultado)){
        $usuario[] = $fila;
    }
    
    $passdb=$usuario[0]['password'];
    if(str_replace(' ', '', $pass) == str_replace(' ', '',$passdb)){
        $_SESSION["nick"] = $nombre;
        $_SESSION["login"] = true;
        require 'desconexion.php';  
        header('Location:/');
    }
    else{
        require 'desconexion.php';
        header('Location:/login.php?login=ko');
    }
?>
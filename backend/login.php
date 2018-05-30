<script src="../js/login.js"></script>
<?php
    session_start();
    require 'conexion.php';
    $nombre=$_POST["alias"]; 
    $pass=$_POST["pass"];
    
    //consulta con la base de datos donde buscamos al usuario 
    //que ha introducido sus datos en el inicio de sesion 
    $sql = 'SELECT * FROM Usuarios WHERE nick="'.$nombre.'";';
    $resultado = mysqli_query($con, $sql) or die("Error por nick en consulta sobre la tabla Usuarios");
    $usuario = array();
    while($fila = mysqli_fetch_array($resultado)){
        $usuario[] = $fila;
    }
    $passdb=$usuario[0]['password'];
    $passIntroducida=str_replace(' ', '',$pass);
    if($passdb == md5($passIntroducida)){
        //Si la consulta ha sido correcta, se asocian al usuario 
        //las siguientes variables de sesion
        $_SESSION["nick"] = $nombre;//nick de usuario
        $_SESSION["login"] = true;//identifica al usuario como logeado
        $_SESSION["rol"] = $usuario[0]['rol'];//rol del usuario
        $_SESSION["nivel"] = $usuario[0]['nivel'];//nivel de usuario
        $_SESSION["formularioNivel"]=$usuario[0]['nivel'];//nos indica si ha realizado la prueba inicial
        require 'desconexion.php';  
        header('Location:/');
    }
    else{
        require 'desconexion.php';
        header('Location:/login.php?login=ko');
    }
?>
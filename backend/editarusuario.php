<?php
session_start();
require 'conexion.php';

$emailUso=false;
$email=mysqli_real_escape_string($con,$_POST['email']);
$passant=mysqli_real_escape_string($con,$_POST['passant']); 
$pass=mysqli_real_escape_string($con,$_POST['pass']);
$passrep=mysqli_real_escape_string($con,$_POST['pass-repeat']);
$id=$_SESSION['nick'];

$sql1 = 'SELECT password FROM Usuarios WHERE nick LIKE "'.$id.'";';
$passanterior = mysqli_query($con, $sql1) or die("Error por pass en consulta sobre la tabla Usuarios");
$row = mysqli_fetch_assoc($passanterior);
$passComprob = $row['password'];


if($pass==$passrep && $passComprob==md5($passant)){
    if($pass == ''){
        $pass=$passant;
    }
    $passdb = md5($pass);
    if($email!=''){
        $sqlEmail = 'SELECT * FROM Usuarios WHERE email LIKE "'.$email.'";';
        $resultadoEmail = mysqli_query($con, $sqlEmail) or die("Error por email en consulta sobre la tabla Usuarios");
        $numRegistrosEmail = mysqli_num_rows($resultadoEmail);
        
        if($numRegistrosEmail>0){
            $emailUso=true;
            header('Location: /editarusuario.php?koem');
        }else{
            $sqlInsert = "UPDATE Usuarios SET password='$passdb', email='$email' WHERE nick = '$id';";
            if (mysqli_query($con, $sqlInsert)) {
                echo 'Todo ha ido bien';
            }else{
                echo 'La consulta ha fallado';
            }           
        }
    }else{
        $sqlInsert = "UPDATE Usuarios SET password='$passdb' WHERE nick = '$id';";
        if (mysqli_query($con, $sqlInsert)) {
            echo 'Todo ha ido bien';
        }else{
            echo 'La consulta ha fallado';
        }
    }
    if($_FILES['img']['tmp_name']!=''){
        $ficheroAsubir = $_FILES['img']['tmp_name'];
        $directorio =__DIR__.'/../files/img/usuario/'.$id.'.jpg';
        unlink($directorio);
        if (move_uploaded_file($ficheroAsubir, $directorio)) {
            echo "El fichero es válido y se subió con éxito.\n";
        }
    }
    header('Location: /usuario.php?id='.$id);
}else {
    header('Location: /editarusuario.php?kom');
}
include 'desconexion.php';
?>
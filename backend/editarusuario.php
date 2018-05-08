<?php
session_start();
require 'conexion.php';

$emailUso=false;
$email=$_POST['email'];
$passant=$_POST['passant']; 
$pass=$_POST['pass'];
$passrep=$_POST['pass-repeat'];
$id=$_SESSION['nick'];

$sql1 = 'SELECT password FROM Usuarios WHERE nick LIKE "'.$id.'";';
$passanterior = mysqli_query($con, $sql1) or die("Error por pass en consulta sobre la tabla Usuarios");
$row = $passanterior->fetch_assoc();
$passComprob = $row['password'];

if($pass==$passrep && $passComprob==md5($passant)){
    $passdb = md5($pass);
    if($email!=''){
        $sqlEmail = 'SELECT * FROM Usuarios WHERE email LIKE "'.$email.'";';
        $resultadoEmail = mysqli_query($con, $sqlEmail) or die("Error por email en consulta sobre la tabla Usuarios");
        $numRegistrosEmail = $resultadoEmail->num_rows;
        
        if($numRegistrosEmail>0){
            $emailUso=true;
            header('Location: /editarusuario.php?koem');
        }else{
            $passdb = md5($pass);
            $sqlInsert = "UPDATE Usuarios SET password='$passdb', email='$email' WHERE nick = '$id';";
            if (mysqli_query($con, $sqlInsert)) {
                echo 'Todo ha ido bien';
            }else{
                echo 'La consulta ha fallado';
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
        }
    }else{
        $sqlInsert = "UPDATE Usuarios SET password='$passdb' WHERE nick = '$id';";
        if (mysqli_query($con, $sqlInsert)) {
            echo 'Todo ha ido bien';
        }else{
            echo 'La consulta ha fallado';
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
    }
}else {
    header('Location: /editarusuario.php?kom');
}
include 'desconexion.php';
?>
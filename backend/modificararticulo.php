<?php
    session_start();
    require("conexion.php");
    if(isset($_SESSION['login'])){
        if ($_SERVER["REQUEST_METHOD"] == "POST") {

            $nivel=$_POST["nivel"];
            $rol=$_POST["rol"];
            $titulo=$_POST["titulo"];
            $contenido=$_POST["contenido"];
            $creador= $_SESSION['nick'];
            $id=$_POST["id"];

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
            
            echo $id.$rol.$nivel.$titulo.$contenido.$creador;
            $sql = "INSERT INTO Modificacion_articulo (id, rol, nivel, titulo, contenido, creador) VALUES ('$id', '$rol', '$nivel', '$titulo', '$contenido', '$creador');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar el articulo");    
            
            $id_mod = mysqli_insert_id($con);
            $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta0', '$respuestaA0', '$respuestaB0', '$respuestaC0', '$respuestaD0', '$correcta0', '$id');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta0"); 
            $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta1', '$respuestaA1', '$respuestaB1', '$respuestaC1', '$respuestaD1', '$correcta1', '$id');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta1"); 
            $sql = "INSERT INTO Modificacion_pregunta (rol, id_mod, nivel, texto, A, B, C, D, Correcta, id) VALUES ('$rol', '$id_mod', '$nivel', '$pregunta2', '$respuestaA2', '$respuestaB2', '$respuestaC2', '$respuestaD2', '$correcta2', '$id');";
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la pregunta2"); 
            
            $img= $_FILES['imagen']['name'];
            $dir_subida = '../files/img/articulos/';
            $fichero_subido = $dir_subida . basename($_FILES['imagen']['name']);
            if (move_uploaded_file($_FILES['imagen']['tmp_name'], $fichero_subido)) {
                echo "El fichero es válido y se subió con éxito.\n";  
            } else {
                echo "¡Posible ataque de subida de ficheros!\n";
            }
        }
    }
    require("desconexion.php");
    header('Location:/');
 ?>

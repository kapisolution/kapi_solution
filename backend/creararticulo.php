<?php
    session_start();
    require("conexion.php");
    if(isset($_SESSION['login'])){
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $nivel=$_POST["nivel"];
            $rol=$_POST["rol"];
            $titulo=$_POST["titulo"];
            $contenido=$_POST["contenido"];
            $img= $_FILES['img']['name'];
            $creador= $_SESSION['nick'];
            $sql = "INSERT INTO Articulos (nivel, rol, titulo, contenido, img, creador) VALUES ('$nivel', '$rol', '$titulo', '$contenido', '$img', '$creador' );";
          
            $dir_subida = '../files/img/articulos/';
            $fichero_subido = $dir_subida . basename($_FILES['img']['name']);
            if (move_uploaded_file($_FILES['img']['tmp_name'], $fichero_subido)) {
                echo "El fichero es válido y se subió con éxito.\n";
                $consulta = mysqli_query($con, $sql) or die("No se pudo insertar el articulo");     
            } else {
                echo "¡Posible ataque de subida de ficheros!\n";
            }
          //  echo $nivel . $rol . $titulo . $contenido . $img;

            $sql = "SELECT * FROM Articulos WHERE nivel = '$nivel' AND rol = '$rol' AND titulo = '$titulo' AND contenido = '$conenido' AND creador = '$creador';";   
            $consulta = mysqli_query($con, $sql) or die("No se pudo insertar el articulo"); 
            $id = array();
            while($fila = mysqli_fetch_array($consulta)){
                $id[] = $fila;
            }    
            require("desconexion.php");
            echo $id['id'] . $id[0] . $id[1];
          //header('Location:/articulo.php?id='.$id[0][0]);
        }
    }
    //echo $_POST['contenido'];
    require("desconexion.php");
   // header('Location:/');
 ?>

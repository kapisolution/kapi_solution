<?php
    session_start();
    //descomentar cuando haya session
    $_SESSION['login']=true;
    $_SESSION['nick']="javimv36";
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
            echo $nivel . $rol . $titulo . $contenido . $img;
        }
    }
    echo $_POST['contenido'];
    require("desconexion.php");
    header('Location:/');
 ?>

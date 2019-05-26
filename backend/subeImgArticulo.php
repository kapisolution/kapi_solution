<?php
    $total = count($_FILES['imagen']['name']);
    $nImg=$_FILES['imagen']['name'][0];
    if($nImg != ""){
        for($i=0; $i<$total; $i++) {
            print_r($_FILES);
            echo $total;
            $ficheroAsubir = $_FILES['imagen']['tmp_name'][$i];
            $directorio ="../files/img/articulos/". $id_mod . "/" ;
            $nombreImagen = $i+1 . ".jpg";
            $fichero_subido = $directorio . $nombreImagen;
            if (!file_exists($directorio)) {
                mkdir($directorio, 0777, true);  //crea el directorio si no existe
            }
            if (move_uploaded_file($ficheroAsubir, $fichero_subido)) {
                echo "El fichero es valido y se subio con exito.\n";  
                $sql = "INSERT INTO Imagen_modificacion_articulo (id_mod, path) VALUES ('$id_mod', '$nombreImagen');";
                $consulta = mysqli_query($con, $sql) or die("No se pudo insertar la imagen"); 
            } else {
                echo "¡Posible ataque de subida de ficheros!\n";
            }
            echo $fichero_subido;  
        }
    }
?>
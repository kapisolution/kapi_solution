<?php 
    $con = @mysqli_connect('localhost', '', '', '');

    if (!$con) {
        echo "Error: " . mysqli_connect_error();
        exit();
    }
    echo 'Conectado a la base de datos MySQL';
?>
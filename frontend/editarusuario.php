<script src="../js/signin.js"></script>
<div class="container">
    <?php 
        // echo $_GET['kom'];
        if(isset($_GET['kom'])){?>
            <div class="alert alert-danger text-center" role="alert">Fallo en la edición del perfil. Recuerda introducir correctamente tu contraseña actual</div>
    <?php } 
        else if(isset($_GET['koem'])){?>
            <div class="alert alert-danger text-center" role="alert">Fallo en la edición del perfil. Email ya en uso</div>
    <?php } ?>
    <h4>Editar Perfil</h4>
    <form action="backend/editarusuario.php" method="POST" enctype="multipart/form-data">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <h4><strong><?php echo $_SESSION['nick'] ?></h4></strong>
                <hr>
                <label for="inputEmail">Modificar email</label>
                <input type="email" id="correo" class="form-control" name="email" autofocus>
                <label for="pswant">Introduce tu contraseña actual</label>
                <input type="password" id="pswant" class="form-control" name="passant" required>
                <label for="psw">Modificar contraseña</label>
                <input type="password" id="psw" class="form-control" name="pass" required>
                <label for="inputCheckPsw">Repite tu contraseña</label>
                <input type="password" id="inputCheckPsw" class="form-control" name="pass-repeat" onkeyup="return checkPass()"required>
                <div id="alert false" class="alert alert-danger" role="alert" style="display:none">Las contraseñas deben ser iguales</div>
                <div id="alert success" class="alert alert-success" role="alert" style="display:none">Las contraseñas son iguales</div>
                <hr>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-md-offset-2 col-lg-offset-2" id="fotoUsr">
                <img src="/files/img/usuario/<?php echo $_SESSION['nick'] ?>.jpg" class="img-rounded imgUsr">
                <div class="form-group">
                    <hr>
                    <label for="imagen">Nueva imagen de perfil</label>
                        <input id="imagen" name="img" type="file">
                 </div>
                 <div id="rolUsr" class="alert alert-info text-center" role="alert"><?php echo $_SESSION['rol'] ?></div>
            </div>
        </div>
        <button class="btn btn-lg btn-success" type="submit">Actualizar</button>
        <a class="volver" href="/usuario.php?id=<?php echo $_SESSION['nick']?>"><span class="label label-danger back">Volver</button></a></center>
    </form> 
</div>
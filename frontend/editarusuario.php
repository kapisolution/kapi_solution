<script src="../js/signin.js"></script>
<div class="container">
    <h4>Editar Perfil</h4>
    <hr>
    <form id="formularioUsuario" class=enctype="multipart/form-data" action="backend/modificarusuario.php" method="POST">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <label for="inputNick">Nick</label>
                <input type="text" id="inputNick" class="form-control" name="alias" required autofocus>
                <label for="inputEmail">Email</label>
                <input type="email" id="correo" class="form-control" name="email" required autofocus>
                <label for="inputPassword">Contraseña</label>
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
                    <label for="imagen">Nueva imagen de perfil</label>
                        <input type="file" id="imagen" name="imagen[]" multiple="multiple">
                        <small id="fileHelp" class="form-text text-muted">
                 </div>
                 <div id="rolUsr" class="alert alert-info text-center" role="alert"><?php echo $_SESSION['rol'] ?></div>
            </div>
        </div>
        <button class="btn btn-lg btn-success" type="submit">Actualizar</button>
        <a class="volver" href="/usuario.php?id=<?php echo $_SESSION['nick']?>"><span class="label label-danger back">Volver</button></a></center>
    <form> 
</div>
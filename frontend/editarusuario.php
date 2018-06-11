<script src="../js/signin.js"></script>
<div class="container">
    <?php 
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
                <div class="form-group has-success">
                    <label class="control-label" for="inputEmail">Modificar email</label>
                    <div class="input-group">
                        <span class="input-group-addon">@</span>
                        <input type="email" id="correo" class="form-control" name="email" autofocus>
                    </div>
                    <br>
                    <label class="control-label" for="psw">Modificar Contraseña</label>
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></span>
                        <input type="password" id="psw" class="form-control" name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">
                    </div>
                    <span id="helpBlock" class="help-block"> (8 caracteres mínimo) - Debe contener al menos 1 número, 1 letra mayúscula y 1 minúscula.</span>
                    <label class="control-label" for="inputCheckPsw">Repite tu nueva contraseña</label>
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-repeat" aria-hidden="true"></span></span>
                        <input type="password" id="inputCheckPsw" class="form-control" name="pass-repeat" onkeyup="return checkPass()">
                    </div>
                    <div id="alert false" class="alert alert-danger" role="alert" style="display:none">Las contraseñas deben ser iguales</div>
                        <div id="alert success" class="alert alert-success" role="alert" style="display:none">Las contraseñas son iguales</div>
                </div>
                <div class="form-group has-error">
                    <label class="control-label" for="pswant">Introduce tu contraseña actual para guardar tus cambios</label>
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span></span>
                        <input type="password" id="pswant" class="form-control" name="passant" required>
                    </div>
                </div>
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
        <button class="btn btn-lg btn-primary" type="submit">Guardar</button>
        <a class="volver" href="/usuario.php?id=<?php echo $_SESSION['nick']?>"><span class="label label-danger back">Volver</button></a></center>
    </form> 
</div>
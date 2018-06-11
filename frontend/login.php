<div class="container containerSignin">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
            <?php if($_GET["login"]=='ko'){?>
            <div id="alert" class="alert alert-danger" role="alert">Error en el login.Contraseña o usuario no válido</div>
            <?php } ?>
            <center><img class="mb-4" src="/files/icon/logo_v2N.png" alt="" width="72" height="72"></center>
            <form class="form" action="/backend/login.php"method="post"onsubmit="return validarSignIn()">
                <label for="inputNick">Nick</label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
                    <input type="text" id="nick" class="form-control" placeholder="Nombre Usuario" name="alias" required autofocus>
                </div>
                <label for="inputCheck">Contraseña</label>
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
                    <input type="password" id="psw" class="form-control" placeholder="Contraseña" name="pass" required>
                </div>
                <br><hr>
                <p><center>Si aún no estás registrado <a href="/signin.php">REGÍSTRATE</a>.</center></p>
                <hr>
                <center><button id="bRegistro" class="btn btn-lg btn-success" type="submit">Entrar</button>
                <a class="volver" href="/"><span class="label label-danger back">Volver</button></a></center>
            </form>
        </div>
    </div>
</div>
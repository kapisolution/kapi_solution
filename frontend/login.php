<div class="container containerSignin">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
            <center><img class="mb-4" src="/files/icon/logo.png" alt="" width="72" height="72"></center>
            <form class="form" action="/backend/login.php"method="post"onsubmit="return validarSignIn()">
                <label for="inputNick">Nick</label>
                <input type="text" id="nick" class="form-control" placeholder="Nombre Usuario" name="alias" required>
                <label for="inputCheck">Contraseña</label>
                <input type="password" id="psw" class="form-control" placeholder="Contraseña" name="pass" required>
                <br><hr>
                <p><center>Si aún no estás registrado <a href="/signin.php">REGÍSTRATE</a>.</center></p>
                <hr>
                <center><button id="bRegistro" class="btn btn-lg btn-success" type="submit">Entrar</button>
                <a class="volver" href="/"><span class="label label-danger back">Volver</button></a></center>
            </form>
        </div>
    </div>
</div>
<div class="text-center">
    <form class="form-signin" action="/backend/login.php"method="post">
        <img class="mb-4" src="/files/icon/logo.png" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Inicia Sesión</h1>
        
        <label for="inputNick" class="sr-only">Nick</label>
        <input type="text" id="nick" class="form-control" placeholder="Nombre Usuario" name="alias" required>
        
        <label for="inputCheck" class="sr-only">Contraseña</label>
        <input type="password" id="psw" class="form-control" placeholder="Contraseña" name="pass" required>
        
        <br><hr>
        <p><center>Si aún no estás registrado <a href="/signin.php">REGÍSTRATE</a>.</center></p>
        <hr>

        <center><button id="bRegistro"class="btn btn-lg btn-block" type="submit">INICIAR SESION</button><center><br>
        <a href="/"><span class="label label-danger">Volver</span></a></center>
    </form>
</div>
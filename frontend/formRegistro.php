<form class="form" action="/backend/signin.php" method="post" onsubmit="validarSignIn()">
    <label for="inputNick">Nick</label>
    <div class="input-group">
        <span class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
        <input type="text" id="inputNick" class="form-control" name="alias" required autofocus>
    </div>
    <label for="inputEmail">Email</label>
    <div class="input-group">
        <span class="input-group-addon">@</span>
        <input type="email" id="correo" class="form-control" name="email" required>
    </div>
    <label for="inputPassword">Contraseña</label>
    <div class="input-group">
        <span class="input-group-addon"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
        <input type="password" id="psw" class="form-control" name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">
    </div>
    <span id="helpBlock" class="help-block"> (8 caracteres mínimo) - Debe contener al menos 1 número, 1 letra mayúscula y 1 minúscula.</span>
    <label for="inputCheckPsw">Repite tu contraseña</label>
    <div class="input-group">
        <span class="input-group-addon"><span class="glyphicon glyphicon-repeat" aria-hidden="true"></span></span>
        <input type="password" id="inputCheckPsw" class="form-control" name="pass-repeat" onkeyup="return checkPass()"required>
    </div>
    <div id="alert false" class="alert alert-danger" role="alert" style="display:none">Las contraseñas deben ser iguales</div>
    <div id="alert success" class="alert alert-success" role="alert" style="display:none">Las contraseñas son iguales</div>
    <hr>
    <center><label><center>ELIGE TU ROL</center></label></center>
    <div id="ElegirRol" class="rol">    
        <input type="radio"  name="elegirRol" id="abogado" value="abogado" required>
        <label for="abogado"><span class="label label-default">ABOGADO</span></label>
        <input type="radio" name="elegirRol" id="informatico" value="informatico" required>
        <label for="informatico"><span class="label label-default">INFORMATICO</span></label>
        <input type="radio"  name="elegirRol" id="periodista" value="periodista" required>
        <label for="periodista"><span class="label label-default">PERIODISTA</span></label>
    </div>
    <hr>
    <center><button id="bRegistro"class="btn btn-lg btn-success" type="submit">Regístrate</button>
    <a class="volver" href="/"><span class="label label-danger back">Volver</span></a></center>
</form>
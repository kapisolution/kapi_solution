<script src="../js/signin.js"></script>
<div class="container containerSignin">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
            <?php if($_GET["signin"]=='kom'){?>
            <div id="alert" class="alert alert-danger" role="alert">Error en el registro.El email ya está en uso</div>
            <?php } 
            else if($_GET["signin"]=='kon'){?>
            <div id="alert" class="alert alert-danger" role="alert">Error en el registro.El nick ya está en uso</div>
            <?php }?>
            <center><img class="mb-4" src="/files/icon/logo_v2N.png" alt="" width="72" height="72"></center>
            <form class="form" action="/backend/signin.php" method="post" onsubmit="validarSignIn()">
                <label for="inputNick">Nick</label>
                <input type="text" id="inputNick" class="form-control" name="alias" required autofocus>
                <label for="inputEmail">Email</label>
                <input type="email" id="correo" class="form-control" name="email" required autofocus>
                <label for="inputPassword">Contraseña (8 caracteres mínimo) - Debe contener al menos 1 número, 1 letra mayúscula y 1 minúscula.</label>
                <input type="password" id="psw" class="form-control" name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">
                <label for="inputCheckPsw">Repite tu contraseña</label>
                <input type="password" id="inputCheckPsw" class="form-control" name="pass-repeat" onkeyup="return checkPass()"required>
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
        </div>
    </div>
</div>
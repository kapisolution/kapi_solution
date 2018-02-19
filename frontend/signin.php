<script src="../js/signin.js"></script>
<script src="../js/conexion.js"></script>

<div class="text-center">
    <form class="form-signin" action="/backend/signin.php"method="post"onsubmit="return validarSignIn()">
        <img class="mb-4" src="/files/icon/logo.png" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Registro</h1>
        <label for="inputNick" class="sr-only">Nick</label>
        <input type="text" id="inputNick" class="form-control" placeholder="Nombre Usuario" name="alias" required autofocus>
        
        <label for="inputEmail" class="sr-only">Email</label>
        <input type="email" id="correo" class="form-control" placeholder="Email" name="email" required autofocus>
        
        <label for="inputPassword" class="sr-only">Contraseña</label>
        <input type="password" id="psw" class="form-control" placeholder="Contraseña" name="pass" required>
        
        <label for="inputCheckPsw" class="sr-only">Contraseña</label>
        <input type="password" id="inputCheckPsw" class="form-control" placeholder="Repita su contraseña" name="pass-repeat" onkeyup="return checkPass()"required>
        <br><hr>
        <h2><center>ELIGE TU ROL</center></h2><br>
        <div id="ElegirRol" class="rol">    
            <input type="radio"  name="elegirRol" id="abogado" value="abogado">
            <label for="abogado"><span class="label label-primary">ABOGADO</span></label>

            <input type="radio"  name="elegirRol" id="periodista" value="periodista">
            <label for="periodista"><span class="label label-warning">PERIODISTA</span></label>
            
            <input type="radio" name="elegirRol" id="informatico" value="informatico">
            <label for="informatico"><span class="label label-default">INFORMATICO</span></label>
        </a>
        <!-- <img src="files/img/rol/informatico.jpg" class="rolImage">Informatico</label> -->
    </div>
    <hr><br>
        <center><button id="bRegistro"class="btn btn-lg btn-block" type="submit">Registrarse</button><center><br>
        <a href="/"><span class="label label-danger">Volver</span></a></center>
    </form>
</div>
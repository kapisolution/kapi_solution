<script src="../js/signin.js"></script>
<script src="../js/conexion.js"></script>

<div class="signin">
<form class="form-signin" action="/backend/signin.php"method="post"onsubmit="return validarSignIn()"> 
    <h1 class="h3 mb-3 font-weight-normal">Registro</h1>
    <label for="inputNick" class="sr-only">Nick</label>
    <input type="text" id="inputNick" class="form-control" placeholder="Nombre Usuario" name="alias" required autofocus>
    
    <label for="inputEmail" class="sr-only">Email</label>
    <input type="email" id="correo" class="form-control" placeholder="Email" name="email" required autofocus>
    
    <label for="inputPassword" class="sr-only">Contraseña</label>
    <input type="password" id="psw" class="form-control" placeholder="Contraseña" name="pass" required>
    
    <label for="inputCheckPsw" class="sr-only">Contraseña</label>
    <input type="password" id="inputCheckPsw" class="form-control" placeholder="Repita su contraseña" name="pass-repeat" onkeyup="return checkPass()"required>
    
    <h2><center>ELIGE TU ROL</center></h2>
      <div id="ElegirRol" class="rol">    
          <input type="radio"  name="elegirRol" id="abogado" value="abogado">
          <label for="abogado"><img src="/files/img/rol/abogado.jpg" class="rolImage">Abogado</label>

          <input type="radio"  name="elegirRol" id="periodista" value="periodista">
          <label for="periodista"><img src="files/img/rol/periodista.jpg" class="rolImage">Periodista</label>
          
          <input type="radio" name="elegirRol" id="informatico" value="informatico">
          <label for="informatico"><img src="files/img/rol/informatico.jpg" class="rolImage">Informatico</label>
      </a>
</div>
      <button id="bRegistro"class="btn btn-lg btn-block" type="submit">Registrarse</button>
</form>
</div>
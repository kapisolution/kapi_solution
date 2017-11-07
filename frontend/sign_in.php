
<div id="content">
<div id="titulo">
    <label><b> Registro</b></label>
    </div>
  <div id = "bloqueformRegistro"> 
    <form id="formularioRegistro"action="/backend/sign_in.php"method="post"onsubmit="return validarSignIn()">
      <label><b><center> Introduce tu nick</center></b></label>
      <div id = "inputCheckAlias" class = "inputCheck">
      <input id="nick" type="text" placeholder="Nick" name="alias"required>
        <div id="okAlias">
           <img src="files/icon/svg/check-square.svg">
        </div>
        <div id="incorrectoAlias">
           <img src="files/icon/svg/close.svg">
        </div>
      </div> 
      <label><b><center> Introduce tu email</center></b></label>
      <div id = "inputCheckEmail" class = "inputCheck">
        <input id="correo"type="email" placeholder="Email" name="email" required>
        <div id="okEmail">
           <img src="files/icon/svg/check-square.svg">
        </div>
        <div id="incorrectoEmail">
           <img src="files/icon/svg/close.svg">
        </div>
      </div> 
      <label><b><center> Introduce tu contraseña</center></b></label>
      <div class = "inputCheck">
      <input id = "psw" type="password" placeholder="Contraseña" name="pass" required>
      </div>
      <label><b><center> Repite tu contraseña</center></b></label>
      <div id = "inputCheckPsw" class = "inputCheck">
      <input id="rep-psw"type="password" placeholder="Contraseña" name="pass-repeat" onkeyup="return checkPass()"required>
        <div id="okPsw">
           <img src="files/icon/svg/check-square.svg">
        </div>
        <div id="incorrectoPsw">
           <img src="files/icon/svg/close.svg">
        </div>
      </div>
      <label><b><center> Elige tu rol</center></b></label>
      <div id="ElegirRol" class="rol">
          
          <input type="radio"  name="elegirRol" id="abogado" value="abogado">
          <label for="abogado"><img src="files/icon/svg/check-square.svg" class="rolImage">Abogado</label>

          <input type="radio"  name="elegirRol" id="periodista" value="periodista">
          <label for="periodista"><img src="files/icon/svg/close.svg" class="rolImage">Periodista</label>
          
          <input type="radio" name="elegirRol" id="informatico" value="informatico">
          <label for="informatico"><img src="files/icon/svg/check-square.svg" class="rolImage">Informatico</label>
      </a>
      </div>
      <p><center>Al registrarte acceptas todos nuestros <a href="#">Términos y condiciones de uso</a>.</center></p>
      <div id="botones">
        <button class="button cancelbutton" type="button" >Cancelar</button>
        <button class="button okbutton" type="submit" >Registrarse</button>
      </div>
      <p><center>¿Ya estás registrado? <a href="/login.php">Inicia sesión</a>.</center></p>
    </form>
  </div>
</div>

<script src="../js/sign_in.js"></script>
<script src="../js/conexion.js"></script>


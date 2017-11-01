<div id="content"> 
  <div id = "bloqueformRegistro"> 
    <form id="formularioRegistro"action="/backend/sign_in.php"method="post"onsubmit="return validarSignIn()">
      <label><b>Alias</b></label>
      <div id = "inputCheckAlias" class = "inputCheck">
      <input id="nick" type="text" placeholder="Introduzca su alias" name="alias"required>
        <div id="okAlias">
           <img src="files/icon/svg/check-square.svg">
        </div>
        <div id="incorrectoAlias">
           <img src="files/icon/svg/close.svg">
        </div>
      </div> 
      <label><b>Email</b></label>
      <div id = "inputCheckEmail" class = "inputCheck">
        <input id="correo"type="text" placeholder="Introduzca su email" name="email" required>
        <div id="okEmail">
           <img src="files/icon/svg/check-square.svg">
        </div>
        <div id="incorrectoEmail">
           <img src="files/icon/svg/close.svg">
        </div>
      </div> 
      <label><b>Password</b></label>
      <input id = "psw" type="password" placeholder="Introduzca su contraseña" name="pass" required>

      <label><b>Repeat Password</b></label>
      <div id = "inputCheckPsw" class = "inputCheck">
      <input id="rep-psw"type="password" placeholder="Repita su contraseña" name="pass-repeat" onkeyup="return checkPass()"required>
        <div id="okPsw">
           <img src="files/icon/svg/check-square.svg">
        </div>
        <div id="incorrectoPsw">
           <img src="files/icon/svg/close.svg">
        </div>
      </div>
      <p>Al registrarte acceptas todos nuestros <a href="#">Términos y condiciones de uso</a>.</p>
      <div id="botones">
        <button class="button cancelbutton" type="button" >Cancelar</button>
        <button class="button okbutton" type="submit" >Registrarse</button>
      </div>
    </form>
  </div>
</div>

<script src="../js/sign_in.js"></script>
<script src="../js/conexion.js"></script>


<div id="content">
<div id="titulo">
    <label><b> Inicia sesión</b></label>
</div>
<div id="bloqueInicio">
    <form id="formulario"action="/backend/login.php"method="post">
    <label><b><center> Introduce tus datos</center></b></label>
      <div class = "inputCheck">
      <input id="nick" type="text" placeholder="Nick" name="alias"required>
      </div> 
      <div class = "inputCheck">
      <input id = "psw" type="password" placeholder="Contraseña" name="pass" required>
      </div>
      <p><center>Si aún no estás registrado <a href="/sign_in.php">REGÍSTRATE</a>.</center></p>
      <div id="botones">
        <button class="button cancelbutton" type="button" >Cancelar</button>
        <button class="button okbutton" type="submit" >Iniciar</button>
      </div>
    </form>
</div>
</div>
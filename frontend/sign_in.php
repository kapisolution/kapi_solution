<!-- Accion que realiza el boton de sign in del formulario y que nos lleva al backend donde chequeamos datos-->
<div id="content">
  <!-- el id identifica al formulario -->
  <div id = "bloqueformRegistro"> 
    <form id="formularioRegistro"action="/backend/sign_in.php"method="post"onsubmit="return validarSignIn()">
      <label><b>Alias</b></label>
      <div id = "inputCheckAlias" class = "inputCheck">
      <input id="nick" type="text" placeholder="Introduzca su alias" name="alias" required>
        <div id="ok"style='display:none;'>
           <img src="files/icon/svg/upload-to-cloud.svg">
        </div>
        <div id="incorrecto"style='display:none;'>
           <img src="files/icon/svg/upload-to-cloud.svg">
        </div>
      </div> 
      <label><b>Email</b></label>
        <input type="text" placeholder="Introduzca su email" name="email" required>

      <label><b>Password</b></label>
      <input type="password" placeholder="Introduzca su contraseña" name="pass" required>

      <label><b>Repeat Password</b></label>
      <input type="password" placeholder="Repita su contraseña" name="pass-repeat" required>
      <input type="checkbox" checked="checked"> Recuerdame
      <p>Al registrarte acceptas todos nuestros <a href="#">Términos y condiciones de uso</a>.</p>
      <div id="botones">
        <button class="button cancelbutton" type="button" >Cancelar</button>
        <button class="button okbutton" type="submit" >Registrarse</button>
      </div>
    </form>
  </div>
</div>


<script>
  function validarSignIn() {
    var x = document.forms["formularioRegistro"]["pass"].value;
    var y = document.forms["formularioRegistro"]["pass-repeat"].value;
    if (x != y) {
        alert("Las contraseñas deben ser iguales");
        return false;
    }
}


  $("#nick").change(function(){ 
    //if ($("#nick").value) != "a") { 
      document.getElementById('ok').style.display = 'block';        
    //} else { 
      //document.getElementById('incorrecto').style.display = '';
    //} 
  });

</script>


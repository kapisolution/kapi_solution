  function validarSignIn() {
    var x = document.getElementById("psw").value;
    var y = document.getElementById("rep-psw").value;
    if (x != y) {
        alert("Las contraseñas deben ser iguales");
        return false;
    }
  }
  function checkPass(){ 
    var x = document.getElementById("psw").value;
    var y = document.getElementById("rep-psw").value;
    if (x == y) {
      document.getElementById('okPsw').style.display = 'block';
      document.getElementById('incorrectoPsw').style.display = 'none';
    }
    else {
      document.getElementById('incorrectoPsw').style.display = 'block';
      document.getElementById('okPsw').style.display = 'none';      
    }
  }
  function alertSignIn(){ 
    alert("El registro no se ha podido completar. Usuario o email no válidos");
  }
  function alertInsert(){ 
    alert("Usuario creado con exito");
  }

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
  function alertNick(){ 
    alert("Usuario ya existente");
  }
  function alertEmail(){ 
    alert("Email ya existente");
  }
  function alertInsert(){ 
    alert("Usuario creado con exito");
  }

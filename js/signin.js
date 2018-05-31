  function validarSignIn() {
    var x = document.getElementById("psw").value;
    var y = document.getElementById("inputCheckPsw").value;
    if (x != y) {
        return false;
    }
    var abogado = document.getElementById('abogado');
    var informatico = document.getElementById('informatico');
    var periodista = document.getElementById('periodista');
    if (!neg.checked && !pos.checked) {
        alert('Debes elegir tu rol');
    }
    else {
        labelvar.innerHTML = "Yes";
    }
  }
  function checkPass(){ 
    var x = document.getElementById("psw").value;
    var y = document.getElementById("inputCheckPsw").value;
    if(y!=""){
      if (x != y) {
        document.getElementById('alert false').style.display = 'block';
        document.getElementById('alert success').style.display = 'none';
      }else{
        document.getElementById('alert success').style.display = 'block';
        document.getElementById('alert false').style.display = 'none';
      }
    }else{
      document.getElementById('alert false').style.display = 'none';
      document.getElementById('alert success').style.display = 'none';
    }
  }
  function alertSignIn(){ 
    alert("El registro no se ha podido completar. Usuario o email no válidos");
  }
  function alertInsert(){ 
    alert("Usuario creado con exito");
  }

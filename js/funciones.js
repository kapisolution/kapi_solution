var cont=0;
var alertCargar=false;
var alertArticulos=false;
var contArticulos=0;
var alertUsuarios=false;
var contUsuarios=0;
var alertModificaciones=false;
var alertCreaciones=false;
var contModificaciones=0;
function cargarUsuarios(i, max){
    var min=i+contUsuarios;
    if(min>=max&&!alertUsuarios){
        $("#albumUsuarios").append("<div id='alert' class='alert alert-info' role='alert'>No hay mas resultados</div>");
        $("#cargarUsr").hide();
        alertUsuarios=true;
    }
    if(!alertUsuarios){
        for(var j=min; j<min+5;j++){
            $("#panelUsuarios"+j).show();
        }
        contUsuarios=contUsuarios+min;
    }
}
function cargarArticulos(i, max){
    var min=i+contArticulos;
    if(min>=max&&!alertArticulos){
        $("#articulos").append("<div id='alert' class='alert alert-info' role='alert'>No hay mas resultados</div>");
        $("#cargarArt").hide();
        alertArticulos=true;
    }
    if(!alertArticulos){
        for(var j=min; j<min+5;j++){
            $("#panelArticulos"+j).show();
        }
        contArticulos=contArticulos+min;
    }
}
function cargarModificaciones(i, max){
    var min=i+contModificaciones;
    if(min>=max&&!alertModificaciones){
        $("#modificaciones").append("<div id='alert' class='alert alert-info' role='alert'>No hay mas resultados</div>");
        $("#cargarModificaciones").hide();
        alertModificaciones=true;
    }
    if(!alertModificaciones){
        for(var j=min; j<min+5;j++){
            $("#panelModificaciones"+j).show();
            $("#barraMod"+j).show();
        }
        contModificaciones=contModificaciones+min;
    }
}
function cargarCreaciones(i, max){
    var min=i+contModificaciones;
    if(min>=max&&!alertCreaciones){
        $("#creaciones").append("<div id='alert' class='alert alert-info' role='alert'>No hay mas resultados</div>");
        $("#cargarCreaciones").hide();
        alertCreaciones=true;
    }
    if(!alertCreaciones){
        for(var j=min; j<min+5;j++){
            $("#panelCreaciones"+j).show();
            $("#barra"+j).show();
        }
        contModificaciones=contModificaciones+min;
    }
}
function cargar(i, max){
    var min=i+cont;
    if(min>=max&&!alertCargar){
        $("#album").append("<div id='alert' class='alert alert-info' role='alert'>No hay mas resultados</div>");
        $("span.label.label-default.cargar").hide();
        alertCargar=true;
    }
    if(!alertCargar){
        for(var j=min; j<min+5;j++){
            $("#panel"+j).show();
            $("#barra"+j).show();
        }
        cont=cont+min;
    }
}
function comprobarRespuesta(opcion,correcta,elemento){
    x = document.getElementsByClassName("label label-success respuesta");
    for (i = 0; i < x.length; i++) {
        x[i].className='label label-default';
    }
    y = document.getElementsByClassName("label label-danger respuesta");
    for (i = 0; i < y.length; i++) {
        y[i].className='label label-default';
    }
    if(opcion==correcta){
        $("#"+elemento).removeClass().addClass('label label-success respuesta');
    }else   $("#"+elemento).removeClass().addClass('label label-danger respuesta');
}
function respuestaExamen(filtro,opcion,correcta,elemento){
    x = document.getElementById(filtro).getElementsByClassName('label label-primary respuesta');
    for (i = 0; i < x.length; i++) {
        x[i].className='label label-default';
    }
    $("#"+elemento).removeClass().addClass('label label-primary respuesta');
    if(opcion==correcta){
        //sumar puntos
    }//else  restar puntos
}
function completarDatos(){
    $('#votarContribucion').append("<input type='hidden' name='usuario' value='<?php echo $_SESSION['nick'] ?>'>");
    $('#votarContribucion').append("<input type='hidden' name='contribucion' value='<?php echo $_GET['id'] ?>'>");
}
function comprobarVotos(){
    var neg = document.getElementById('neg');
    var pos = document.getElementById('pos');
    if (!neg.checked && !pos.checked) {
        document.getElementById('alertVotos').style.display = 'block';
    }
    else {
        labelvar.innerHTML = "Yes";
    }
}
function limitar(e, contenido, caracteres){
    // obtenemos la tecla pulsada
    var unicode=e.keyCode? e.keyCode : e.charCode;
    // Permitimos las siguientes teclas:
    // 8 backspace
    // 46 suprimir
    // 13 enter
    // 9 tabulador
    // 37 izquierda
    // 39 derecha
    // 38 subir
    // 40 bajar
    if(unicode==8 || unicode==46 || unicode==13 || unicode==9 || unicode==37 || unicode==39 || unicode==38 || unicode==40)
        return true;
    // Si ha superado el limite de caracteres devolvemos false
    if(contenido.length>=caracteres)
        return false;

    return true;
}

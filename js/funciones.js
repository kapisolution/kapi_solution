var cont=0;
var alertCargar=false;
var alertArticulos=false;
var contArticulos=0;
var alertUsuarios=false;
var contUsuarios=0;
var alertModificaciones=false;
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
        }
        contModificaciones=contModificaciones+min;
    }
}
function cargarCreaciones(i, max){
    var min=i+contModificaciones;
    if(min>=max&&!alertModificaciones){
        $("#creaciones").append("<div id='alert' class='alert alert-info' role='alert'>No hay mas resultados</div>");
        $("#cargarCreaciones").hide();
        alertModificaciones=true;
    }
    if(!alertModificaciones){
        for(var j=min; j<min+5;j++){
            $("#panelCreaciones"+j).show();
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
function comparatorFecha(a,b){
    if (a.fecha < b.fecha) return -1;
    if (a.fecha > b.fecha) return 1;
    return 0;
}
function comparatorNivelMen(a,b){
    if (a.nivel < b.nivel) return -1;
    if (a.nivel > b.nivel) return 1;
    return 0;
}
function comparatorNivelMay(a,b){
    if (a.nivel < b.nivel) return 1;
    if (a.nivel > b.nivel) return -1;
    return 0;
}
function ordenar(stringArray,criterio){
    
    if(criterio=="fecha"){
        $("#ordNivelMen").prop("checked", false);
        $("#ordNivelMay").prop("checked", false);
        stringArray=stringArray.sort(comparatorFecha);
    }else if(criterio=="nivelMen"){
        $("#ordFecha").prop("checked", false);
        $("#ordNivelMay").prop("checked", false);            
        stringArray=stringArray.sort(comparatorNivelMen);
    }else{
        $("#ordNivelMen").prop("checked", false);
        $("#ordFecha").prop("checked", false);
        stringArray=stringArray.sort(comparatorNivelMay);
    }
    
    for(var i=0; i<stringArray.length; i++){
        $("#rol"+i).html(stringArray[i].rol);
        $("#nivel"+i).html("Nivel "+stringArray[i].nivel);
        $("#titulo"+i).html(stringArray[i].titulo);
        $("#imagen"+i).attr("src","/files/img/usuario/"+stringArray[i].creador+".jpg");
        $("#creador"+i).html(stringArray[i].creador);
        $("#verArt"+i).attr("href","/articulo.php?id="+stringArray[i].id);
        $("#editarArt"+i).attr("href","/modificararticulo.php?id="+stringArray[i].id);
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
function votar(voto){
    if(voto=='postivo'){
        //sumar
    }else{
        //restar
    }
}


function mostrarTarjetas(evt, tarjetero, btn) {
    var x;
    x = document.getElementsByClassName("album py-5 bg-light");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    x = document.getElementsByClassName("list-group-item disabled");
    for (i = 0; i < x.length; i++) {
        x[i].className='list-group-item';
    } 
    document.getElementById(tarjetero).style.display = "block";
    $("#"+btn).removeClass('list-group-item').addClass('list-group-item disabled');
}
function mostrarContribuciones(evt, tarjetero, id) {
    var x;
    x = document.getElementsByClassName("row myClass");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    x = document.getElementById("tabs").getElementsByClassName("active");
    for (i = 0; i < x.length; i++) {
        x[i].classList.remove("active");
    } 
    document.getElementById(tarjetero).style.display = "block";
    $("#"+id).addClass('active');
}
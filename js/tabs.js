
function mostrarTarjetas(evt, tarjetero) {
    var i, x, tablinks;
    x = document.getElementsByClassName("tarjetas");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < x.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" tab-selected", "");
    }
    document.getElementById(tarjetero).style.display = "flex";
    evt.currentTarget.className += " tab-selected";
}
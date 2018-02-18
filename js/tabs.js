
function mostrarTarjetas(evt, tarjetero) {
    var i, x, tablinks;
    x = document.getElementsByClassName("album py-5 bg-light");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("btn btn-primary");
    for (i = 0; i < x.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" tab-selected", "");
    }
    document.getElementById(tarjetero).style.display = "flex";
    evt.currentTarget.className += " tab-selected";
}
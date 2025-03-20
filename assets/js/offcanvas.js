function abrirNav() {
    let offcanvas = document.getElementById("offcanvas");
    let overlay = document.getElementById("overlay");
    offcanvas.style.width = "250px";
    overlay.style.width = "100%";
}
function fecharNav() {
    let offcanvas = document.getElementById("offcanvas");
    let overlay = document.getElementById("overlay");
    offcanvas.style.width = "0";
    overlay.style.width = "0";
}

document.getElementById("overlay").addEventListener("click", fecharNav);
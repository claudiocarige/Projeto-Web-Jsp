var button = document.getElementById("exibir1");
button.addEventListener("click", function () {
    var logos = document.getElementById("primeiro");
    logos.classList.toggle("hide").slideDown( 2000);
});

var button = document.getElementById("exibir2");
button.addEventListener("click", function () {
    var logos = document.getElementById("segundo");
    logos.classList.toggle("hide").slideDown( 2000);
});

var button = document.getElementById("exibir3");
button.addEventListener("click", function () {
    var logos = document.getElementById("terceiro");
    logos.classList.toggle("hide").slideDown( 2000);
});
/**** I-Gestion popup modale-contact****/ 
function activButtonPlayModale(){
const modal = document.getElementById('popup-container');
const btn = document.getElementById("button-contact");//bouton contact du nav Menu
const btnSinglePage = document.querySelector(".btn-single-page");//bouton contact du single page

// Ouverture de la modale au clic du bouton contact du menu Header
btn.onclick = function() {
    modal.style.display = "flex";
}
// Fermeture de la modale en cliquant à l'extérieur de la modale
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
// Ouverture de la modale au clic du bouton contact du single page
btnSinglePage.onclick = function() {
  modal.style.display = "flex";
}
}

activButtonPlayModale();


/**** II-Pré-remplir la Ref de la popup modale-contact au clic du bouton contact du single page****/ 
//je définis le bouton concernée, il s'agit de btn-single-page
jQuery(document).ready(function($) {
    const btnSinglePageRef = $(".btn-single-page");

    btnSinglePageRef.on("click", function() {
        // Récupérer la valeur de la référence
        var referenceValue = $("#reference_value").text();
        // Mettre à jour la valeur de l'élément input avec la référence
        $('#reference').val(referenceValue);
    });
});

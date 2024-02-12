// Gestion popup modale-contact
const modal = document.getElementById('popup-container');
const btn = document.getElementById("button-contact");
const btnSinglePage = document.querySelector(".btn-single-page");

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



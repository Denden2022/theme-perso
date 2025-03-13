/*** 
 * 
 * Script pour Apparition de la modale au clic du bouton "Contact" du NAV MENU
 * 
 * ***/


/**** Apparition de la modale au clic du bouton "Contact" du NAV MENU****/ 
function buttonContactMenu(){
const modal = document.getElementById('popup-container');
const btn = document.getElementById("button-contact");//bouton contact du nav Menu

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
}

buttonContactMenu();


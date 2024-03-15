/*** 
 * 
 * Script pour la lightbox pour la photo ciblée en full screen
 * 
 * 
 * ***/

/**** Ouverture de la lightbox au clic du favicon full-screen et Fermeture de la lightbox au clic de la croix****/ 
document.addEventListener("DOMContentLoaded", function() {
    // Sélectionne tous les liens avec la classe screen-full
    const screenFullLinks = document.querySelectorAll('.screen-full');
    // Sélectionne la lightbox
    const lightbox = document.getElementById('lightbox');
    // Sélectionne le bouton de fermeture de la lightbox
    const closeButton = document.querySelector('.lightbox-close');

    // Ajoute un gestionnaire d'événements de clic à chaque lien screen-full
    screenFullLinks.forEach(function(screenFullLink) {
        screenFullLink.addEventListener('click', function(event) {
            // Empêche le comportement par défaut du lien
            event.preventDefault();
            // Affiche la lightbox en changeant sa visibilité
            lightbox.style.visibility = 'visible';
        });
    });

    // Ajoute un gestionnaire d'événements de clic au bouton de fermeture
    closeButton.addEventListener('click', function() {
        // Masque la lightbox
        lightbox.style.visibility = 'hidden';
    });
});

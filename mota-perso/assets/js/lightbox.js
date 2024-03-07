/*** 
 * 
 * Script pour la lightbox pour la photo ciblée en full screen
 * 
 * 
 * ***/

/**** Ouverture de la lightbox au clic du favicon full-screen et Fermeture de la lightbox au clic de la croix****/ 
/*function lightbox(){
    document.addEventListener('DOMContentLoaded', function() {
        const lightbox = document.querySelectorAll('.lightbox');
        lightbox.forEach(function(element) {
            element.addEventListener('click', function() {
                const imageSrc = this.querySelector('img').src;
                const lightboxContainer = document.querySelector('.swiper-lightbox');
                lightboxContainer.innerHTML = `<img src="${imageSrc}" alt="Image">`;
                document.querySelector('.lightbox').style.visibility = "visible";
            });
        });

        const btnCross = document.querySelector(".lightbox-close");
        btnCross.addEventListener('click', function() {
            document.querySelector('.lightbox').style.visibility = "hidden";
        });
    });}

lightbox();*/

// Attend que le DOM soit prêt
document.addEventListener("DOMContentLoaded", function() {
    // Sélectionne le lien screen-full
    const screenFullLink = document.querySelector('.screen-full');
    // Sélectionne la lightbox
    const lightbox = document.querySelector('.lightbox');
    // Sélectionne le bouton de fermeture de la lightbox
    const closeButton = document.querySelector('.lightbox-close');

    // Ajoute un gestionnaire d'événements de clic au lien screen-full
    screenFullLink.addEventListener('click', function(event) {
        // Empêche le comportement par défaut du lien
        event.preventDefault();
        // Affiche la lightbox en changeant sa visibilité
        lightbox.style.visibility = 'visible';
    });

    // Ajoute un gestionnaire d'événements de clic au bouton de fermeture
    closeButton.addEventListener('click', function() {
        // Masque la lightbox
        lightbox.style.visibility = 'hidden';
    });
});

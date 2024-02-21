//gestion de l'oeil
const eyemodal = document.querySelector('.details-overlay');
const eyeBtn = document.querySelector(".hover-img"); //bouton contact du nav Menu

// Définition de l'état initial de la modale
let modalVisible = false;

// Gestion de l'affichage/masquage des détails au clic de l'oeil
eyeBtn.onclick = function() {
    if (!modalVisible) {
        eyemodal.style.visibility = "visible";
        modalVisible = true;
    } else {
        eyemodal.style.visibility = "hidden";
        modalVisible = false;
    }
}


   /*const lightbox = document.querySelector('.lightbox');
    const screenBtn = document.querySelector(".popup-close");//bouton contact du nav Menu
    
    // Définition de l'état initial de la modale
let modalEye = false;
    // Ouverture de la modale au clic du bouton contact du menu Header
    screenBtn.onclick = function() {
        lightbox.style.visibility = "visible";
        modalEye = true;
    }*/


/*** Lightbox des images */

/*(function ($) {
    $(document).ready(function () {

        const lightbox = document.querySelector('.lightbox');
        // Ouvrir la lightbox lorsque vous cliquez sur .popup-close
        $('.popup-close').click(function () {
            lightbox(); // Ouvrir la lightbox
        });

        // Fermer la lightbox lorsque vous cliquez sur .close-lightbox
        $('.popup-close').click(function () {
            lightbox(); // Fermer la lightbox
        });

    });
})(jQuery);*/


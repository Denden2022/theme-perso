/*** 
 * 
 * Script pour la lightbox pour la photo ciblée en full screen
 * 
 * 
 * ***/

/**** Ouverture et fermeture de la lightbox au clic du favicon full-screen 
 *      Et récupération de l'image cible pour affichage dans la lightbox****/ 

// Déclarer les images utilisées dans le lightbox à l'extérieur et non dans la fonction car var doit être accessible à partir de cette fonction et pouvoir donner l'accessibilité aux évènements du click à intéragir avec cette var
let images;

jQuery(document).ready(function ($) {
    // Index de l'image affichée dans la lightbox
    let currentIndex = 0;
    // Elément contenu dans l'ID container du lightbox
    const lightbox = $('.lightbox');
    const lightboxImage = $('#image-lightbox');
    // Initialisation des images avec les éléments .screen-full triés par ordre de référence
    let images = $('.screen-full').toArray().sort((a, b) => {
        return $(a).attr('data-ref') - $(b).attr('data-ref');
    });
    // Sélectionne le bouton de fermeture de la lightbox
    const closeButton = document.querySelector('.lightbox-close');

    // Affiche la lightbox
    function openLightbox(index) {
        currentIndex = index;
        updateLightboxContent();
        lightbox.css("visibility", "visible");
        // Ajoute un gestionnaire d'événements de clic au bouton de fermeture
        closeButton.addEventListener('click', function() {
            // Masque la lightbox
            lightbox.css("visibility", "hidden");
        });
    }

    // Met à jour le contenu de la lightbox avec l'image actuelle
    function updateLightboxContent() {
        const currentImage = images[currentIndex];
        const imageUrl = $(currentImage).attr('data-image');
        const imageRef = $(currentImage).attr('data-ref');
        const imageCat = $(currentImage).attr('data-cat');
        lightboxImage.attr('src', imageUrl);
        $('.lightbox-ref').text("BF" + imageRef);
        $('.lightbox-cat').text(imageCat);
    }

    // Délégation d'événements : attachement d'événements (event listener) à des éléments parents de la page, ici, l'élément image via la classe .screen-full
    $(document).on('click', '.screen-full', function () {
        openLightbox(images.indexOf(this));
    });

// Fonction pour afficher l'image précédente dans la lightbox
function afficherImagePrecedente() {

    currentIndex--;
    if (currentIndex < 0) {
        currentIndex = 0; // Arrêter la navigation si nous sommes au début
        return;
    }
    updateLightboxContent();
}

// Fonction pour afficher l'image suivante dans la lightbox
function afficherImageSuivante() {
    currentIndex++;
    if (currentIndex >= images.length) {
        currentIndex = images.length - 1; // Arrêter la navigation si nous sommes à la fin
        return;
    }
    updateLightboxContent();
}

// Associez la fonction afficherImagePrecedente à un événement, par exemple, un clic sur un bouton "Précédent" dans la lightbox
$('.swiper-button-prev').on('click', function () {
    afficherImagePrecedente();
});

// Associez la fonction afficherImageSuivante à un événement, par exemple, un clic sur un bouton "Suivant" dans la lightbox
$('.swiper-button-next').on('click', function () {
    afficherImageSuivante();
});

});

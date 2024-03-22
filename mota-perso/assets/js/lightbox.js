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
    // index de l'image affichée dans lightbox
    let currentIndex = 0;
    // Element contenu dans l'ID container du lightbox
    const lightbox = $('.lightbox');
    const lightboxImage = $('#image-lightbox');
    // Initialisation des images avec les éléments .screen-full
    let images = $('.screen-full');
    // Sélectionne le bouton de fermeture de la lightbox
    const closeButton = document.querySelector('.lightbox-close');

    // Affiche la lightbox
    function openLightbox(index) {
        currentIndex = index;
        console.log('open lightbox');
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
        // Prendre image de l'objet jQuery "images" de l'index de l'image sélectionnée
        const currentImage = images.eq(currentIndex);
        // Récupère l'URL de l'image actuelle dans 'data-image'
        const imageUrl = currentImage.attr('data-image');
        // Récupère la référence de l'image actuelle dans 'data-ref'
        const imageRef = currentImage.attr('data-ref');
        // Récupère la référence de l'image actuelle dans 'data-ref'
        const imageCat = currentImage.attr('data-cat');
        // Mise en place de l'URL via le src pour afficher l'image
        lightboxImage.attr('src', imageUrl);

    // Ajout de la référence à côté de l'image dans la lightbox
        $('.lightbox-ref').text("BF" + imageRef);
    // Ajout de la référence à côté de l'image dans la lightbox
        $('.lightbox-cat').text(imageCat);
    }

    // Délégation d'événements : attachement d'événements (event listener) à des éléments parents de la page, ici, l'élément image via la classe .screen-full
    $(document).on('click', '.screen-full', function () {
        openLightbox(images.index(this));
    });

    // Fonction pour afficher l'image suivante dans la lightbox
    function afficherImageSuivante() {
        currentIndex++;
        if (currentIndex >= images.length) {
            //currentIndex = 0; // Revenir au début si nous atteignons la dernière image
        }
        updateLightboxContent();
    }

    // Associez la fonction afficherImageSuivante à un événement, par exemple, un clic sur un bouton "Suivant" dans la lightbox
    $('.swiper-button-next').on('click', function () {
        afficherImageSuivante();
    });

});

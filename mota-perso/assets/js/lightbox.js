/*** 
 * 
 * Script pour la lightbox pour la photo ciblée en full screen
 * 
 * ***/


/**** Affichage de la photo ciblée en plein écran ****/ 

/*document.addEventListener('DOMContentLoaded', function() {
    var fullScreenLinks = document.querySelectorAll('.screen-full');
    var overlay = document.querySelector('.lightbox');

    if (fullScreenLinks.length > 0) {
        fullScreenLinks.forEach(function(link) {
            link.addEventListener('click', function(e) {
                e.preventDefault();
                var imageURL = this.getAttribute('href');
                // Affichez l'image en plein écran ou dans une fenêtre modale
                // Vous devrez implémenter cette fonctionnalité selon vos besoins
                // Par exemple, ouvrir l'image dans un lightbox.
                openFullScreenImage(imageURL);
            });
        });
    }

    var popupClose = document.querySelector('.lightbox-close');

    if (popupClose && overlay) {
        popupClose.addEventListener('click', function(e) {
            e.preventDefault();
            overlay.classList.remove('active');
        });
    }
});*/
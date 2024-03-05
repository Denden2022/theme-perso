/*** 
 * 
 * Script pour la lightbox pour la photo ciblée en full screen
 * 
 * 
 * ***/

/**** Ouverture de la lightbox au clic du favicon full-screen et Fermeture de la lightbox au clic de la croix****/ 
function lightbox(){
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

lightbox();
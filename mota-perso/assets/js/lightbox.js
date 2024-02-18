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


   /* const lightbox = document.querySelector('.lightbox');
    const screenBtn = document.querySelector(".popup-close");//bouton contact du nav Menu
    
    // Ouverture de la modale au clic du bouton contact du menu Header
    screenBtn.onclick = function() {
        lightbox.style.visibility = "visible";
    }*/


/*** Lightbox des images */
/**** I-Gestion popup modale-contact****/ 
/*document.addEventListener("DOMContentLoaded", function() {
    const hoverImgs = document.querySelectorAll('.hover-img');
    const sameImages = document.querySelectorAll('.same-image');
    const lightbox = document.getElementById('lightbox-overlay');

    hoverImgs.forEach((hoverImg, index) => {
        hoverImg.addEventListener('click', function() {
            // Afficher la lightbox
            lightbox.style.display = 'flex';
            // Cacher toutes les images
            sameImages.forEach(image => {
                image.style.display = 'none';
            });
            // Afficher l'image correspondante
            sameImages[index].style.display = 'block';
            // Modifier la source de l'image dans la lightbox
            sameImages[index].src = hoverImg.src;
        });
    });

    // Fermer la lightbox en cliquant dessus
    lightbox.addEventListener('click', function() {
        lightbox.style.display = 'none';
    });
});*/




    

    
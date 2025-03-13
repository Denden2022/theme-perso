/*** 
 * 
 * Script pour : I-Apparition de la modale au clic du bouton "Contact" du SINGLE PAGE
 *             : II-La réf de la photo correspondante est préremplie dans la modale au clic du bouton "Contact" du SINGLE PAGE
 *             : III-Afficher l'image au survol des flèches dans Single page
 * 
 * ***/


/**** I-Gestion du bouton contact du Single page****/ 
function activButtonPlayModale(){
    const modal = document.getElementById('popup-container');
    const btn = document.getElementById("button-contact");//bouton contact du nav Menu
    const btnSinglePage = document.querySelector(".btn-single-page");//bouton contact du single page
    
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
    }
    
    activButtonPlayModale();
    
    /**** II-Pré-remplir la Ref de la popup modale-contact au clic du bouton contact du single page****/ 
    //je définis le bouton concernée, il s'agit de btn-single-page
    jQuery(document).ready(function($) {
        const btnSinglePageRef = $(".btn-single-page");
    
        btnSinglePageRef.on("click", function() {
            // Récupérer la valeur de la référence
            var referenceValue = $("#reference_value").text();
            // Mettre à jour la valeur de l'élément input avec la référence
            $('#reference').val(referenceValue);        
        });
        $(document).on("click", ".button-contact", function() {
            // Si le bouton cliqué est le bouton de contact, ne pas afficher la référence
            $('#reference').val(""); // Effacer la référence
        });
    });
    activButtonPlayModale();
    
    /**** III-Afficher l'image au survol des flèches dans Single page  ****/ 
    function clicArrows(){
        const imageArrowsLeft = document.querySelector('.image-arrow-left');//image de gauche
        const imageArrowsRight = document.querySelector('.image-arrow-right');//image de droite
        const arrowLeft = document.querySelector(".arrow-left");//La flèche gauche
        const arrowRight = document.querySelector(".arrow-right");//La flèche droite
        
            // Ouverture de l'image au survol de la flèche gauche
        arrowLeft && (arrowLeft.onmouseover = function() {
            imageArrowsLeft.style.visibility = "visible";
        });
        // Fermeture de l'image lorsque la souris quitte la flèche gauche
        arrowLeft && (arrowLeft.onmouseout = function() {
            imageArrowsLeft.style.visibility = "hidden";
        });
    
        // Ouverture de l'image au survol de la flèche droite
        arrowRight && (arrowRight.onmouseover = function() {
            imageArrowsRight.style.visibility = "visible";
        });
        // Fermeture de l'image lorsque la souris quitte la flèche droite
        arrowRight && (arrowRight.onmouseout = function() {
            imageArrowsRight.style.visibility = "hidden";
        });
    }
        clicArrows();


        
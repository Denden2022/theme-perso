/*** 
 * 
 * Script pour : I-Apparition de la modale au clic du bouton "Contact" du NAV MENU
 *             : II-Apparition de la modale au clic du bouton "Contact" du SINGLE PAGE
 *             : III-La réf de la photo correspondante est préremplie dans la modale au clic du bouton "Contact" du SINGLE PAGE
 *             : IV-Filtre "Catégories" en <div> se comportant comme le filtre <select>
 * 
 * ***/


/**** I-Gestion du bouton contact du NAV Menu****/ 
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


/**** II-Gestion du bouton contact du Single page****/ 
function activButtonPlayModale (){
const modal = document.getElementById('popup-container');
const btnSinglePage = document.querySelector(".btn-single-page");//bouton contact du single page

// Ouverture de la modale au clic du bouton contact du single page
btnSinglePage.onclick = function() {
    modal.style.display = "flex";
  }
// Fermeture de la modale en cliquant à l'extérieur de la modale
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
}

activButtonPlayModale();


/**** III-Pré-remplir la Ref de la popup modale-contact au clic du bouton contact du single page****/ 
//je définis le bouton concernée, il s'agit de btn-single-page
jQuery(document).ready(function($) {
    const btnSinglePageRef = $(".btn-single-page");

    btnSinglePageRef.on("click", function() {
        // Récupérer la valeur de la référence
        var referenceValue = $("#reference_value").text();
        // Mettre à jour la valeur de l'élément input avec la référence
        $('#reference').val(referenceValue);        
    });
    $(document).on("click", "#button-contact", function() {
        // Si le bouton cliqué est le bouton de contact, ne pas afficher la référence
        $('#reference').val(""); // Effacer la référence
    });
});


/**** IV-Une liste qui se comporte comme un filtre et se rattache aux filtres "catégorie"  ****/ 
function toggleOptions() {
    var optionsDiv = document.querySelector('.sel .options');
    if (optionsDiv.style.display === 'none' || optionsDiv.style.display === '') {
        optionsDiv.style.display = 'block';
    } else {
        optionsDiv.style.display = 'none';
    }
}

document.addEventListener('DOMContentLoaded', function() {
    var options = document.querySelectorAll('.sel .options div');
    options.forEach(function(option) {
        option.addEventListener('click', function() {
            var selectedValue = this.textContent.trim();
            document.querySelector('.sel .label').textContent = selectedValue;
            document.querySelector('.sel .options').style.display = 'none';
        });
    });
});

document.addEventListener('DOMContentLoaded', function() {
    var element = document.querySelector('.single-item');
    element.addEventListener('click', function() {
        element.classList.add('clicked');
    });
});
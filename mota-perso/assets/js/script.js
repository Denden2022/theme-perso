/**** I-Gestion popup modale-contact****/ 
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
});



/**** III-Gestion des filtres****/ 
jQuery(document).ready(function($) {
    // Fonction pour filtrer les images
    function filtrerImages() {
        var categorie = $('#categorie').val();
        var format = $('#format').val();
        // Réinitialiser les filtres
        $('.item').show();
        // Filtrer par catégorie
        if (categorie !== 'all') {
            $('.item').not('.' + categorie).hide();
        }
        // Filtrer par format
        if (format !== 'all') {
            $('.item').not('.' + format).hide();
        }
    }

    // Filtre lorsque le sélecteur de catégorie change
    $('#categorie').on('change', function() {
        filtrerImages();
    });

    // Filtre lorsque le sélecteur de format change
    $('#format').on('change', function() {
        filtrerImages();
    });
});






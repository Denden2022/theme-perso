/**** I-Gestion popup modale-contact****/ 
const modal = document.getElementById('popup-container');
const btn = document.getElementById("button-contact");
const btnSinglePage = document.querySelector(".btn-single-page");

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


/**** II-Pré-remplir la Ref de la popup modale-contact au clic du bouton contact du single page****/ 



/**** III-Gestion de la pagination des photos****/ 
$('.pagination ul li:first-child a').addClass("current");
$('.page-numbers').click(function(event){
  event.preventDefault()
  $('.page-numbers').removeClass("current");
  $(this).addClass("current");
  var link = $(this).attr('href');
  $('#data-posts').html('<img src="wp-content/themes/montheme/img/load.gif" class="load">');
  $('#data-posts').load(link+' .excerpt');
});


/**** IV-Gestion des filtres****/ 
jQuery(document).ready(function($) {
  // Fonction pour filtrer les images
  function filtrerImages() {
      var categorie = $('#categorie').val();
      var format = $('#format').val();
      $('.item').each(function() {
          var categorieItem = $(this).hasClass(categorie) || categorie === 'all';
          var formatItem = $(this).hasClass(format) || format === 'all';
          if (categorieItem && formatItem) {
              $(this).show();
          } else {
              $(this).hide();
          }
      });
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


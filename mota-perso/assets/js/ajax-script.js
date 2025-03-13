// Ce code utilise jQuery et AJAX pour charger des publications de manière dynamique en fonction de filtres, gérer des interactions avec des éléments de l'interface utilisateur tels que des modales et des menus.

// Attente que le DOM soit prêt
jQuery(document).ready(function($) {
    let page = 1; // Page initiale pour la pagination

    // Fonction pour charger des publications
    function loadPosts() {
        // Préparer les données à envoyer avec la requête AJAX
        const data = {
            action: 'load_photos',
            page: page,
            categorie: $('#categorie-filter').val(),
            format: $('#format-filter').val(),
            sort: $('#tri-filter').val()
        };
        console.log(data); // Afficher les données dans la console

        // Effectuer une requête AJAX
        $.ajax({
            url: ajax_params.ajaxurl,
            type: 'POST',
            dataType: 'html',
            data: data,
            success: function(response) {
                if (response) {
                    $('#photo-gallery').append(response); // Ajouter la réponse à la galerie
                    page++; // Incrémenter le numéro de page
                } else {
                    $('#load-more').hide(); // Masquer le bouton charger plus si aucune réponse
                }
            }
        });
    }

    // Gestion du clic sur le bouton 'charger plus'
    $('#load-more').on('click', function() {
        loadPosts();
    });

    // Gestion des changements sur les filtres
    $('#categorie-filter, #format-filter, #tri-filter').on('change', function() {
        $('#photo-gallery').html(''); // Effacer le contenu actuel de la galerie
        page = 1; // Réinitialiser la pagination à la première page
        loadPosts(); // Recharger les posts avec les nouveaux filtres
    });
    

    // Chargement initial des posts
    loadPosts();
});
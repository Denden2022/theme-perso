/*** 
 * 
 * Script ajax pour : I-Charger les photos au clic du bouton "Charger Plus"
 *                  : II-Charger les photos au clic des filtres 
 *                          "1-Catégories", 
 *                          "2-Formats" et 
 *                          "3-Trier par"
 * 
 * ***/


/***** I-Charger les photos lorsque l'on clique sur le bouton "Charger plus" ****/
(function ($) {
    $(document).ready(function () {

        // Chargement des photos en Ajax
        $('.js-load-button').click(function (e) {

            // Empêcher l'envoi classique du formulaire
            e.preventDefault();

            // L'URL qui réceptionne les requêtes Ajax
            const ajaxurl = $(this).data('ajaxurl');

            const data = {
                action: $(this).data('action'),
                nonce: $(this).data('nonce'),
                postid: $(this).data('postid'),
            }

            // Stocker $(this) dans une variable pour éviter les problèmes de contexte
            const $this = $(this);

            // Requête Ajax en JS natif via Fetch
            fetch(ajaxurl, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                        'Cache-Control': 'no-cache',
                    },
                    body: new URLSearchParams(data),
                })
                .then(response => response.json())
                .then(body => {
                    console.log(body);

                    // En cas d'erreur
                    if (!body.success) {
                        alert(body.data);
                        return;
                    }

                    // Et en cas de réussite
                    $('.block-list-photos').html(body.data); // Remplacer le contenu du conteneur par les nouvelles photos
                    $('.block-list-photos').append($this); // Déplacer le bouton à la fin de la liste de photos
                });
        });

    });
})(jQuery);

                /***** II-Charger les photos au clic des filtres ****/
/***** 1-Charger le filtre lorsque l'on clique sur le filtre "Catégories" ****/
(function ($) {
    $(document).ready(function () {
        $('.js-load-filters-categories .single-item').on('click', function () {
            const ajaxurl = $('#customSelect').data('ajaxurl');
            const category = $(this).text().trim();

            const data = {
                action: 'load_filters_categories',
                nonce: $('#customSelect').data('nonce'),
                category: category
            };

            fetch(ajaxurl, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                    'Cache-Control': 'no-cache',
                },
                body: new URLSearchParams(data),
            })
            .then(response => response.json())
            .then(body => {
                console.log(body);
                if (!body.success) {
                    alert(body.data);
                    return;
                }
                $('#images-container').html(body.data); // Afficher les images dans le conteneur

                // Fermer les options après la sélection d'une catégorie
                $('.options').removeClass('show');
                // Condition pour réinitialiser le contenu si "Formats" est sélectionné à nouveau
                if (category === 'all') {
                    $('.block-image').show(); // Afficher toutes les images
                } else {
                    $('.block-image').hide(); // Cacher les images
                }
            });
        });
    });
})(jQuery);



/***** 2-Charger le filtre lorsque l'on clique sur le filtre "formats" ****/
(function ($) {
    $(document).ready(function () {
        $('.js-load-filters-formats .single-item-format').on('click', function () {
            const ajaxurl = $('#selectFormats').data('ajaxurl');
            const format = $(this).text().trim();

            const data = {
                action: 'load_filters_formats',
                nonce: $('#selectFormats').data('nonce'),
                format: format
            };

            fetch(ajaxurl, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                    'Cache-Control': 'no-cache',
                },
                body: new URLSearchParams(data),
            })
            .then(response => response.json())
            .then(body => {
                console.log(body);
                if (!body.success) {
                    alert(body.data);
                    return;
                }
                $('#images-container').html(body.data); // Afficher les images dans le conteneur

                // Fermer les options après la sélection d'une catégorie
                $('.options-formats').removeClass('show');
                // Condition pour réinitialiser le contenu si "Formats" est sélectionné à nouveau
                if (format === 'allFormats') {
                    $('.block-image').show(); // Afficher toutes les images
                } else {
                    $('.block-image').hide(); // Cacher les images
                }
            });
        });
    });
})(jQuery);



/***** 3-Charger le filtre lorsque l'on clique sur le filtre "Trier par" ****/
(function ($) {
    $(document).ready(function () {
        $('.js-load-filters-orders').change(function (e) {
            e.preventDefault();

            const ajaxurl = $(this).data('ajaxurl');
            const order = $(this).val();

            const data = {
                action: 'filters_orders', // Utiliser 'filters_orders' comme action
                nonce: $(this).data('nonce'),
                order: order
            };

            fetch(ajaxurl, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                    'Cache-Control': 'no-cache',
                },
                body: new URLSearchParams(data),
            })
            .then(response => response.json())
            .then(body => {
                console.log(body);
                if (!body.success) {
                    alert(body.data);
                    return;
                }
                $('#images-container').html(body.data);

                // Condition pour réinitialiser le contenu si "Formats" est sélectionné à nouveau
                if (order === 'allOrders') {
                    $('.block-image').show();
                } else {
                    $('.block-image').hide();
                }
            });
        });
    });
})(jQuery);



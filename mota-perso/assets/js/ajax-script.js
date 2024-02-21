/***** Charger les photos lorsque l'on clique sur le bouton "Charger plus" ****/
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


/***** Charger le filtre lorsque l'on clique sur le filtre "Catégories" ****/
(function ($) {
    $(document).ready(function () {
        $('.js-load-filters').change(function (e) {
            e.preventDefault();

            const ajaxurl = $(this).data('ajaxurl');
            const category = $(this).val(); // Récupérer la catégorie sélectionnée

            const data = {
                action: 'load_filters',
                nonce: $(this).data('nonce'),
                category: category // Envoyer la catégorie sélectionnée à PHP
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
            });
        });
    });
})(jQuery);
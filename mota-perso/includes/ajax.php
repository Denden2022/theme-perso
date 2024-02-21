<?php

/*****Réceptionner et traiter la requête Ajax du bouton "charger plus"*****/
add_action( 'wp_ajax_load_photos', 'load_photos' );
add_action( 'wp_ajax_nopriv_load_photos', 'load_photos' );

function load_photos() {
    // Vérification de sécurité
    if ( ! isset( $_REQUEST['nonce'] ) || ! wp_verify_nonce( $_REQUEST['nonce'], 'load_photos' ) ) {
        wp_send_json_error( "Vous n’avez pas l’autorisation d’effectuer cette action.", 403 );
    }
    // On vérifie que l'identifiant a bien été envoyé
    if ( ! isset( $_POST['postid'] ) ) {
        wp_send_json_error( "L'identifiant de l'article est manquant.", 400 );
    }
    // Récupération de l'ID de l'article
    $post_id = intval( $_POST['postid'] );
    // Vérifier que l'article est publié, et public
    if ( get_post_status( $post_id ) !== 'publish' ) {
        wp_send_json_error( "Vous n'avez pas accès aux photos de cet article.", 403 );
    }

    // Construction du HTML des photos
    $html = '';
    $number_of_blocks = 4;

    for ($i = 0; $i < $number_of_blocks; $i++) {
        ob_start();
        get_template_part('templates-part/photo-block');
        $html .= ob_get_clean();
    }

    // Envoyer les données au navigateur
    wp_send_json_success( $html );
}


/*****Réceptionner et traiter la requête Ajax du filtre "Catégorie"*****/
add_action( 'wp_ajax_load_filters', 'load_filters' );
add_action( 'wp_ajax_nopriv_load_filters', 'load_filters' );

function load_filters() {
    if ( ! isset( $_REQUEST['nonce'] ) || ! wp_verify_nonce( $_REQUEST['nonce'], 'load_filters' ) ) {
        wp_send_json_error( "Vous n’avez pas l’autorisation d’effectuer cette action.", 403 );
    }

    $category = isset($_POST['category']) ? sanitize_text_field($_POST['category']) : '';

    if (empty($category)) {
        wp_send_json_error( "La catégorie demandée n'est pas valide.", 400 );
    }

    // Requête pour obtenir les images de la catégorie demandée
    $args = array(
        'post_type' => 'photo',
        'posts_per_page' => 2,
        'orderby' => 'rand',
        'tax_query' => array(
            array(
                'taxonomy' => 'categorie', // Nom de la taxonomie
                'field' => 'slug', // Rechercher par slug
                'terms' => $category, // Slug de la catégorie
            )
        )
    );
    $query = new WP_Query($args);

    if (!$query->have_posts()) {
        wp_send_json_error( "Aucune image trouvée pour cette catégorie.", 400 );
    }

    $html = '';
    while ($query->have_posts()) {
        $query->the_post();
        $html .= '<div class="image">';
        $html .= get_the_post_thumbnail();
        $html .= '</div>';
    }
    wp_reset_postdata();

    wp_send_json_success( $html );
}
?>
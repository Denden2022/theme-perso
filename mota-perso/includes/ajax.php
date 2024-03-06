<?php
/**
 * Include ajax pour : - Charger les images au clic du bouton "Charger plus"
 *                   : - Charger les images correspondants aux choix des filtres 
 *                       "1-Catégories", 
 *                       "2-Formats" et 
 *                       "3-Trier par"
 *
 * @package Mota
 */

?>

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
    $number_of_blocks = 1;

    for ($i = 0; $i < $number_of_blocks; $i++) {
        ob_start();
        get_template_part('templates-part/photo-block');
        $html .= ob_get_clean();
    }

    // Envoyer les données au navigateur
    wp_send_json_success( $html );
}

                    /***** Charger les filtres ****/
/*****  1-Réceptionner et traiter la requête Ajax du filtre "Catégorie" *****/
add_action( 'wp_ajax_load_filters_categories', 'load_filters_categories' );
add_action( 'wp_ajax_nopriv_load_filters_categories', 'load_filters_categories' );

function load_filters_categories() {
    if ( ! isset( $_REQUEST['nonce'] ) || ! wp_verify_nonce( $_REQUEST['nonce'], 'load_filters_categories' ) ) {
        wp_send_json_error( "Vous n’avez pas l’autorisation d’effectuer cette action.", 403 );
    }

    $category = isset($_POST['category']) ? sanitize_text_field($_POST['category']) : '';

    // Si la catégorie est "all", ne pas appliquer de filtre par catégorie
    $tax_query = array();
    if ($category !== 'all') {
        $tax_query = array(
            array(
                'taxonomy' => 'categorie',
                'field' => 'slug',
                'terms' => $category,
            )
        );
    }

    // Requête pour obtenir les images en fonction de la catégorie demandée
    $args = array(
        'post_type' => 'photo',
        'posts_per_page' => -1,
        'orderby' => 'rand',
        'tax_query' => $tax_query,
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
        ob_start();
        get_template_part('templates-part/eye-overlay');
        $html .= ob_get_clean();
        $html .= '</div>';
    }
    wp_reset_postdata();

    wp_send_json_success( $html );
}



/*****  2-Réceptionner et traiter la requête Ajax du filtre "Format"  *****/
add_action( 'wp_ajax_load_filters_formats', 'load_filters_formats' );
add_action( 'wp_ajax_nopriv_load_filters_formats', 'load_filters_formats' );

function load_filters_formats() {
    if ( ! isset( $_REQUEST['nonce'] ) || ! wp_verify_nonce( $_REQUEST['nonce'], 'load_filters_formats' ) ) {
        wp_send_json_error( "Vous n’avez pas l’autorisation d’effectuer cette action.", 403 );
    }

    $format = isset($_POST['format']) ? sanitize_text_field($_POST['format']) : '';

    // Si la catégorie est "allFormats", ne pas appliquer de filtre par format
    $tax_query = array();
    if ($format !== 'allFormats') {
        $tax_query = array(
            array(
                'taxonomy' => 'format',
                'field' => 'slug',
                'terms' => $format,
            )
        );
    }

    // Requête pour obtenir les images en fonction du format demandée
    $args = array(
        'post_type' => 'photo',
        'posts_per_page' => -1,
        'orderby' => 'rand',
        'tax_query' => $tax_query,
    );
    $query = new WP_Query($args);

    if (!$query->have_posts()) {
        wp_send_json_error( "Aucune image trouvée pour ce format.", 400 );
    }

    $html = '';
    while ($query->have_posts()) {
        $query->the_post();
        $html .= '<div id="image" class="image">';
        $html .= get_the_post_thumbnail();
        ob_start();
        get_template_part('templates-part/eye-overlay');
        $html .= ob_get_clean();
        $html .= '</div>';
    }
    wp_reset_postdata();

    wp_send_json_success( $html );
}

/*****  3-Réceptionner et traiter la requête Ajax du filtre "Trier par"  *****/
add_action('wp_ajax_filters_orders', 'load_filters_orders');
add_action('wp_ajax_nopriv_filters_orders', 'load_filters_orders');

function load_filters_orders() {
    if ( ! isset( $_REQUEST['nonce'] ) || ! wp_verify_nonce( $_REQUEST['nonce'], 'load_filters_orders' ) ) {
        wp_send_json_error( "Vous n’avez pas l’autorisation d’effectuer cette action.", 403 );
    }

    $order = isset($_POST['order']) ? sanitize_text_field($_POST['order']) : '';

    $args = array(
        'post_type'      => 'attachment',
        'post_mime_type' => 'image',
        'orderby'        => 'date',
        'order'          => $order == 'recent' ? 'DESC' : 'ASC',
        'posts_per_page' => -1
    );

    $query = new WP_Query($args);

    if (!$query->have_posts()) {
        wp_send_json_error("Aucune image trouvée pour cette demande.", 400);
    }

    $html = '';
    while ($query->have_posts()) {
        $query->the_post();
        $html .= '<div class="image">';
        $html .= get_the_post_thumbnail();
        ob_start();
        get_template_part('templates-part/eye-overlay');
        $html .= ob_get_clean();
        $html .= '</div>';
    }
    wp_reset_postdata();

    wp_send_json_success($html);
}
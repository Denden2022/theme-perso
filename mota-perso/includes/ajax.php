<?php
/**
 * Include ajax pour : - Charger les images au clic du bouton "Charger plus"
 *                   : - Charger les filtres après sélection
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
    ob_start();
    get_template_part('templates-part/photo-block');
    $html .= ob_get_clean();

    // Envoyer les données au navigateur
    wp_send_json_success( $html );
}

                    /***** Charger les filtres ****/
add_action( 'wp_ajax_load_filters', 'load_filters' );
add_action( 'wp_ajax_nopriv_load_filters', 'load_filters' );

function load_filters() {
    // Vérifier si le nonce est défini et valide
    if ( ! isset( $_REQUEST['nonce'] ) || ! wp_verify_nonce( $_REQUEST['nonce'], 'load_filters' ) ) {
        wp_send_json_error( "Vous n’avez pas l’autorisation d’effectuer cette action.", 403 );
    }

    // Récupérer les valeurs des filtres
    $category = isset( $_POST['category'] ) ? sanitize_text_field( $_POST['category'] ) : '';
    $format   = isset( $_POST['format'] ) ? sanitize_text_field( $_POST['format'] ) : '';

    // Construire la requête WP_Query en fonction des filtres
    $args = array(
        'post_type'      => 'photo',
        'posts_per_page' => -1,
        'orderby'        => 'date',
        'order'          => isset( $_POST['post_ordre'] ) ? $_POST['post_ordre'] : 'DESC', 
        'paged'          => isset( $_POST['paged'] ) ? $_POST['paged'] : 1, 
        'tax_query'      => array(
            'relation' => 'AND', // Utiliser l'opérateur logique "AND"
        ),
    );
    

// Ajouter la taxonomie de catégorie si elle est définie
if ($category && $category !== "all") {
    $args['tax_query'][] = array(
        'taxonomy' => 'categorie',
        'field'    => 'slug',
        'terms'    => $category,
    );
}

// Récupérer la valeur du paramètre 'format' de la requête AJAX
$format = isset($_POST['format']) ? sanitize_text_field($_POST['format']) : '';

// Vérifier si le paramètre 'format' est vide ou égal à "allFormats"
if (!empty($format) && $format !== "allFormats") {
    // Ajouter la taxonomie de format à la requête WP_Query
    $args['tax_query'][] = array(
        'taxonomy' => 'format',
        'field'    => 'slug',
        'terms'    => $format,
    );
}
// Vérifier le filtre 'allOrders' pour déterminer l'ordre de tri
$order = isset($_POST['allOrders']) ? sanitize_text_field($_POST['allOrders']) : 'DESC'; // Par défaut, tri DESC

// Ajouter le tri par date avec l'ordre déterminé par le filtre 'allOrders'
$args['orderby'] = 'date'; // Trier par date
$args['order'] = $order; // Utiliser l'ordre spécifié par le filtre 'allOrders'

    $query = new WP_Query( $args );

    if ( ! $query->have_posts() ) {
        wp_send_json_error( "Aucune image trouvée pour cette demande.", 400 );
    }

    $html = '';
    while ( $query->have_posts() ) {
        $query->the_post();
        $html .= '<div id="same-image" class="same-image image-container">';
        $html .= '<a href="' . esc_url( get_the_permalink() ) . '">';
        $html .= get_the_post_thumbnail();
        ob_start();
        get_template_part( 'templates-part/eye-overlay' );
        $html .= ob_get_clean();
        $html .= '</a>';
        $html .= '</div>';
    }
    wp_reset_postdata();

    wp_send_json_success( $html );
}


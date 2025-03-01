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

    // Construire un tableau des identifiants d'articles déjà affichés
    $excluded_posts = isset( $_POST['excluded_posts'] ) ? $_POST['excluded_posts'] : array();
    $excluded_posts[] = $post_id;

    // Vérifier que l'article est publié, et public
    if ( get_post_status( $post_id ) !== 'publish' ) {
        wp_send_json_error( "Vous n'avez pas accès aux photos de cet article.", 403 );
    }

  // Construction du HTML des photos
    $html = '';
    ob_start();
    $html .= '<div class="block-image">';
    // Utilisez $excluded_posts pour exclure les articles déjà affichés
    $the_query = new WP_Query(array(
        'post_type' => 'photo',
        'posts_per_page' => 8,
        'orderby' => 'date',
        'post__not_in' => $excluded_posts, // Exclure les articles déjà affichés
    ));
    if ($the_query->have_posts()) :
        while ($the_query->have_posts()) : $the_query->the_post(); ?>
            <div id="same-image" class="same-image image-container">
                <?php get_template_part('templates-part/eye-overlay') ?>
                <?php the_post_thumbnail(); ?>
            </div>
<?php
        endwhile;
    endif;
    wp_reset_postdata();
    $html .= ob_get_clean();

    // Envoyer les données au navigateur
    wp_send_json_success( $html );
}


/*****  1-Réceptionner et traiter la requête Ajax du filtre "Catégorie" *****/
add_action( 'wp_ajax_load_filters', 'load_filters_categories' );
add_action( 'wp_ajax_nopriv_load_filters', 'load_filters_categories' );
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
        $html .= '<div class="images-container">';
        $html .= '<div id="same-image" class="same-image image-container">';
        $html .= '<a href="' . get_the_permalink() . '">';
        $html .= get_the_post_thumbnail();
        ob_start();
        get_template_part('templates-part/eye-overlay');
        $html .= ob_get_clean();
        $html .= '</a>';
        $html .= '</div>';
        $html .= '</div>';
 
    }

    wp_reset_postdata();

    wp_send_json_success( $html );
}


//TEST
/*****  2-Réceptionner et traiter la requête Ajax du filtre "Format" *****/
add_action( 'wp_ajax_load_filters', 'load_filters_formats' );
add_action( 'wp_ajax_nopriv_load_filters', 'load_filters_formats' );
function load_filters_formats() {
    if ( ! isset( $_REQUEST['nonce'] ) || ! wp_verify_nonce( $_REQUEST['nonce'], 'load_filters_formats' ) ) {
        wp_send_json_error( "Vous n’avez pas l’autorisation d’effectuer cette action.", 403 );
    }
    $format = isset($_POST['format']) ? sanitize_text_field($_POST['format']) : '';
    // Si la format est "all", ne pas appliquer de filtre par format
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
    // Requête pour obtenir les images en fonction de la catégorie demandée
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
        $html .= '<div class="images-container">';
        $html .= '<div id="same-image" class="same-image image-container">';
        $html .= '<a href="' . get_the_permalink() . '">';
        $html .= get_the_post_thumbnail();
        ob_start();
        get_template_part('templates-part/eye-overlay');
        $html .= ob_get_clean();
        $html .= '</a>';
        $html .= '</div>';
        $html .= '</div>';
 
    }

    wp_reset_postdata();

    wp_send_json_success( $html );
}

//TEST
                    /***** Charger les filtres ****/
/*add_action( 'wp_ajax_load_filters', 'load_filters_categories' );
add_action( 'wp_ajax_nopriv_load_filters', 'load_filters_categories' );

function load_filters_categories() {
    // Vérifier si le nonce est défini et valide
    if ( ! isset( $_REQUEST['nonce'] ) || ! wp_verify_nonce( $_REQUEST['nonce'], 'load_filters_categories' ) ) {
        wp_send_json_error( "Vous n’avez pas l’autorisation d’effectuer cette action.", 403 );
    }

// Récupérer les paramètres de filtre
$category = isset( $_POST['category'] ) ? sanitize_text_field( $_POST['category'] ) : '';
$format = isset( $_POST['format'] ) ? sanitize_text_field( $_POST['format'] ) : '';
$order = isset( $_POST['order'] ) ? sanitize_text_field( $_POST['order'] ) : '';


    // Construire la requête en fonction des filtres
    $args = array(
        'post_type' => 'post', // Remplacez 'post' par le type de vos articles
        'posts_per_page' => -1,
        'orderby' => 'date', // Par défaut, trié par date
        'order' => 'DESC' // Par défaut, ordre descendant
    );
    

// Ajouter la taxonomie de catégorie si elle est définie
if ($category && $category !== "all") {
    $args['category_title'] = $category;
}

// Filtrer par format
if ($format != 'allFormats') {
    $args['meta_query'] = array(
        array(
            'taxonomy' => 'format', // Remplacez 'format' par le nom de votre champ personnalisé
            'terms' => $format,
            'field'    => 'slug',
            'compare' => '=',
        )
    );
}

 // Filtrer par format si un format spécifique est sélectionné
 if ( $format !== 'allFormats' && ! empty( $format ) ) {
    $args['tax_query'] = array(
        array(
            'taxonomy' => 'format',  // Remplacez par la taxonomie associée au format
            'field'    => 'slug',    // Utilisez 'slug' pour filtrer par le slug de la taxonomie
            'terms'    => $format
        )
    );
}

   // Appliquer l'ordre de tri
   switch ($order) {
    case 'Titre':
        $args['orderby'] = 'title';
        break;
    case 'Date':
        $args['orderby'] = 'date';
        $args['order'] = 'DESC'; // Trier par ordre décroissant
        break;
    // Ajoutez d'autres cas pour d'autres options de tri si nécessaire
}

    $query = new WP_Query( $args );

    if ( ! $query->have_posts() ) {
        wp_send_json_error( "Aucune image trouvée pour cette demande.", 400 );
    }

    $html = '';
    while ( $query->have_posts() ) {
        $query->the_post();
        $html .= '<div id="same-image" class="same-image image-container">';
        ob_start();
        get_template_part( 'templates-part/eye-overlay' ); // Inclure le modèle 'templates-part/eye-overlay'
        $html .= ob_get_clean();
        $html .= get_the_post_thumbnail();
        $html .= '</div>';
    }
    wp_reset_postdata();
    
    wp_send_json_success( $html );

        // Terminer la requête AJAX
        wp_die();
}
*/

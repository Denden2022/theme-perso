<?php
/*****
 * Function pour : I-Lecture des fichiers et import des bibliothèques
 *                 II-création du menu Header et Footer
 *                 III-Fonction pour ajouter un item supplémentaire sans lien au menu Footer
 *                 IV-Fonction pour ajouter le bouton contact au menu Header
 *                 V-Réceptionner et traiter la requête Ajax du bouton "charger plus" et des filtres
 *                    
 */

/***** I-Lecture des fichiers et import des bibliothèques *****/
function theme_perso_enqueue() {
wp_enqueue_style( 'theme-perso-style', get_template_directory_uri(). '/assets/styles/mota.css' );
wp_enqueue_script( 'jquery' );
    // Enqueue custom script.js
wp_enqueue_script('modale-script', get_template_directory_uri() . '/assets/js/script.js', array('jquery'), 1.1, true);
wp_enqueue_script('lightbox-script', get_template_directory_uri() . '/assets/js/lightbox.js', array('jquery'), 1.1, true);
wp_enqueue_script('menu-script', get_stylesheet_directory_uri() . '/assets/js/menu.js', array('jquery'), 1.1, true);
wp_enqueue_script('ajax-script', get_stylesheet_directory_uri() . '/assets/js/ajax-script.js', array('jquery'), 1.1, true);
wp_localize_script('ajax-script', 'ajax_params', array(
    'ajaxurl' => admin_url('admin-ajax.php'),
));
wp_enqueue_script('single-page-script', get_stylesheet_directory_uri() . '/assets/js/single-page.js', array('jquery'), 1.1, true);
// Enqueue Swiper CSS
wp_enqueue_script('swiper-script', get_stylesheet_directory_uri() . '/assets/js/swiper.js', array('swiper-js'), 1.1, true);
// Enqueue Swiper JS
wp_enqueue_script('swiper-js', 'https://unpkg.com/swiper/swiper-bundle.min.js', array(), null, true);

}

add_action( 'wp_enqueue_scripts', 'theme_perso_enqueue' );

/***** II-création du menu Header et Footer *****/
function register_my_menu(){
register_nav_menus( array(
	'main' => 'Menu Principal',
	'footer' => 'Bas de page',
) );
}
add_action( 'after_setup_theme', 'register_my_menu' );


/*****************HEADER */
/***** III-Fonction pour ajouter un bouton "contac" au menu Header*****/
function my_contact_menu($items, $args) {
    // Vérifiez si c'est le menu Header
    if ($args->theme_location == 'main') {
        // Ajoutez votre texte personnalisé ici
        $items .= '<li><p id="button-contact" class="contact-btn">Contact</p></li>';
    }
    return $items;
}
// Ajouter le texte personnalisé à la fin du menu Header
add_filter('wp_nav_menu_items', 'my_contact_menu', 10, 2);

/***** IV-Fonction pour ajouter un item supplémentaire sans lien "À propos" au menu Header ****/
function my_apropos_menu($items, $args) {
    // Vérifiez si c'est le menu Footer
    if ($args->theme_location == 'main') {
        // Ajoutez votre texte personnalisé ici
        $items .= '<a href="http://localhost/mota/a-propos/" class="menu-item-apropos">À propos</a>';
    }
    return $items;
}
// Ajouter le texte personnalisé dans le menu Header après Accueil
add_filter('wp_nav_menu_items', 'my_apropos_menu', 5, 2);


/*****************FOOTER */
/***** V-Fonction pour ajouter un item supplémentaire sans lien au menu Footer ****/
function my_footer_menu($items, $args) {
    // Vérifiez si c'est le menu Footer
    if ($args->theme_location == 'footer') {
        // Ajoutez votre texte personnalisé ici
        $items .= '<li class="menu-item-reserves">Tous droits réservés</li>';
    }
    return $items;
}
// Ajouter le texte personnalisé à la fin du menu Footer
add_filter('wp_nav_menu_items', 'my_footer_menu', 10, 2);


/***************CHARGEMENT DES BOUTONS ET DES FILTRES */
/***** VI-Réceptionner et traiter la requête Ajax du bouton "charger plus" et des filtres*****/
function load_photos() {
    $paged = $_POST['page'] ? $_POST['page'] : 1; // Détermine la page actuelle ou par défaut à la première page.
    $categorie = $_POST['categorie']; // Récupère le filtre de catégorie depuis la requête AJAX.
    $format = $_POST['format']; // Récupère le filtre de format depuis la requête AJAX.
    $sort = $_POST['sort'] ? $_POST['sort'] : 'date'; // Définit le critère de tri, par défaut sur 'date'.
    $order = $_POST['order'] ? $_POST['order'] : 'ASC'; // Définit l'ordre du tri, par défaut sur 'ASC'.

    $args = array(
        'post_type' => 'photo', // Spécifie le type de post à récupérer.
        'posts_per_page' => 8, // Limite le nombre de posts par page à 8.
        'paged' => $paged, // Pagination.
        'orderby' => 'date', // Tri par date.
        'order' => $sort // Utilise l'ordre fourni par la requête AJAX.
    );

    if ($categorie) {
        $args['tax_query'][] = array( // Filtre supplémentaire pour la catégorie.
            'taxonomy' => 'categorie',
            'field' => 'slug',
            'terms' => $categorie
        );
    }

    if ($format) {
        $args['tax_query'][] = array( // Filtre supplémentaire pour le format.
            'taxonomy' => 'format',
            'field' => 'slug',
            'terms' => $format
        );
    }

    set_query_var('photo_query', $args);  
    get_template_part('templates-part/photo-block');

    wp_die(); // Termine la requête AJAX correctement.
}
add_action('wp_ajax_load_photos', 'load_photos'); // Ajoute l'action AJAX pour les utilisateurs connectés.
add_action('wp_ajax_nopriv_load_photos', 'load_photos'); // Ajoute l'action AJAX pour les utilisateurs non connectés.


/**
 * Proper ob_end_flush() for all levels
 *
 * This replaces the WordPress `wp_ob_end_flush_all()` function
 * with a replacement that doesn't cause PHP notices.
 */
remove_action( 'shutdown', 'wp_ob_end_flush_all', 1 );

add_action( 'shutdown', function() {
   while ( @ob_end_flush() );
} );



?>
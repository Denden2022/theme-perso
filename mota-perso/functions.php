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
wp_enqueue_script('filter-script', get_stylesheet_directory_uri() . '/assets/js/filter.js', array('jquery'), 1.1, true);
wp_enqueue_script('ajax-script', get_stylesheet_directory_uri() . '/assets/js/ajax-script.js', array('jquery'), 1.1, true);
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


/***** III-Fonction pour ajouter un item supplémentaire sans lien au menu Footer ****/
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


/***** IV-Fonction pour ajouter le bouton contact au menu Header*****/
function my_contact_menu($items, $args) {
    // Vérifiez si c'est le menu Header
    if ($args->theme_location == 'main') {
        // Ajoutez votre texte personnalisé ici
        $items .= '<li><button id="button-contact" class="contact-btn">Contact</button></li>';
    }
    return $items;
}
// Ajouter le texte personnalisé à la fin du menu Header
add_filter('wp_nav_menu_items', 'my_contact_menu', 10, 2);


/***** V-Réceptionner et traiter la requête Ajax du bouton "charger plus" et des filtres*****/
include('includes/ajax.php');

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
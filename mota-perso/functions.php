<?php

/*****Lecture des fichiers et import des bibliothèques*****/
function theme_perso_enqueue() {
wp_enqueue_style( 'theme-perso-style', get_template_directory_uri(). '/assets/styles/mota.css' );
wp_enqueue_script( 'jquery' );
    // Enqueue custom script.js
wp_enqueue_script('modale-script', get_template_directory_uri() . '/assets/js/script.js', array('jquery'), 1.1, true);
// Localiser le script pour passer des données PHP à JavaScript
wp_localize_script('ajax-script', 'ajax_object', array('ajax_url' => admin_url('admin-ajax.php')));
}
add_action( 'wp_enqueue_scripts', 'theme_perso_enqueue' );

/*****création du menu Header et Footer*****/
function register_my_menu(){
register_nav_menus( array(
	'main' => 'Menu Principal',
	'footer' => 'Bas de page',
) );
}
add_action( 'after_setup_theme', 'register_my_menu' );

/*****Fonction pour ajouter un item supplémentaire au menu Footer****/
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


/*****Fonction pour ajouter un item supplémentaire au menu Header*****/
function my_contact_menu($items, $args) {
    // Vérifiez si c'est le menu Header
    if ($args->theme_location == 'main') {
        // Ajoutez votre texte personnalisé ici
        $items .= '<li><button id="button-contact" class="menu-item-contact">Contact</button></li>';
    }
    return $items;
}
// Ajouter le texte personnalisé à la fin du menu Header
add_filter('wp_nav_menu_items', 'my_contact_menu', 10, 2);


/****gérer la requête ajax pour ouvrir la modale en cliquant sur le bouton contact****/
add_action('wp_ajax_load_modale_content', 'load_modale_content');
add_action('wp_ajax_nopriv_load_modale_content', 'load_modale_content');

function load_modale_content() {
    // Votre code pour charger le contenu de la modale
    get_template_part('templates-part/content-modale');
    die(); // Assurez-vous de terminer la fonction après avoir renvoyé la réponse
}



?>
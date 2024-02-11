<?php

/*****Lecture des fichiers et import des bibliothèques*****/
function theme_perso_enqueue() {
wp_enqueue_style( 'theme-perso-style', get_template_directory_uri(). '/assets/styles/mota.css' );
wp_enqueue_script( 'jquery' );
    // Enqueue custom script.js
wp_enqueue_script('modale-script', get_template_directory_uri() . '/assets/js/script.js', array('jquery'), 1.1, true);
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


/*****Charger un script spécifique aux articles du blog*****/
function button_home() {
    // Charger un script bouton charger plus à la page d'accueil
  if( is_page() ) {
      wp_enqueue_script( 'button_plus', get_template_directory_uri() . '/assets/js/ajax-script.js', [ 'jquery' ], '1.1', true);
  }
}

add_action( 'wp_enqueue_scripts', 'button_home' );


/*****Réceptionner et traiter la requête Ajax*****/
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

?>
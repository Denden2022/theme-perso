<?php

add_action( 'wp_enqueue_scripts', 'theme_perso_enqueue' );

function theme_perso_enqueue() {
wp_enqueue_style( 'theme-perso-style', get_template_directory_uri(). '/assets/styles/mota.css' );
wp_enqueue_script( 'jquery' );
    // Enqueue custom script.js
wp_enqueue_script('modale-script', get_template_directory_uri() . '/assets/js/script.js', array('jquery'), 1.1, true);
}

//création du menu Header et Footer
function register_my_menu(){
register_nav_menus( array(
	'main' => 'Menu Principal',
	'footer' => 'Bas de page',
) );
}
add_action( 'after_setup_theme', 'register_my_menu' );


//Création de la page contact accès à la modale contact
function contact( $items, $args ) {
	$items .= '<a href="./contact" class="modale-contact"></a>';
	return $items;
}

add_filter( 'wp_nav_menu_items', 'contact', 10, 2 );

?>
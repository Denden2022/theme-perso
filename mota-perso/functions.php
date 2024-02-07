<?php

add_action( 'wp_enqueue_scripts', 'theme_perso_enqueue' );

function theme_perso_enqueue() {
wp_enqueue_style( 'theme-perso-style', get_template_directory_uri(). '/assets/styles/mota.css' );
wp_enqueue_script( 'jquery' );
    // Enqueue custom script.js
wp_enqueue_script('modale-script', get_template_directory_uri() . '/assets/js/script.js', array('jquery'), 1.1, true);
}

function register_my_menu(){
register_nav_menus( array(
	'main' => 'Menu Principal',
	'footer' => 'Bas de page',
) );
}
add_action( 'after_setup_theme', 'register_my_menu' );

?>
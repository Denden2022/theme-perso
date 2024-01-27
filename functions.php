<?php
add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles');

function theme_enqueue_styles() {
    wp_enqueue_style('parent-style', get_template_directory_uri() . '/style.css' );
    wp_enqueue_style('theme-perso-style', get_stylesheet_directory_uri() . '/assets/styles/theme-perso.css', array(), filemtime(get_stylesheet_directory() . '/assets/styles/theme-perso.css'));

    // Enqueue custom script.js
    wp_enqueue_script('script', get_stylesheet_directory_uri() . '/js/script.js', array(), 1.1, true);
}

?>
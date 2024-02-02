<?php

add_action( 'wp_enqueue_scripts', 'theme_perso_enqueue' );

function theme_perso_enqueue() {
wp_enqueue_style( 'theme-perso-style', get_template_directory_uri(). '/assets/styles/mota.css' );
wp_enqueue_script( 'jquery' );
    // Enqueue custom script.js
wp_enqueue_script('modale-contact-script', get_template_directory_uri() . '/js/modale-contact.js', array(), 1.1, true);
}


?>
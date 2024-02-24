<?php

/*****Lecture des fichiers et import des bibliothèques*****/
function theme_perso_enqueue() {
wp_enqueue_style( 'theme-perso-style', get_template_directory_uri(). '/assets/styles/mota.css' );
wp_enqueue_script( 'jquery' );
    // Enqueue custom script.js
wp_enqueue_script('modale-script', get_template_directory_uri() . '/assets/js/script.js', array('jquery'), 1.1, true);
wp_enqueue_script('lightbox-script', get_template_directory_uri() . '/assets/js/lightbox.js', array('jquery'), 1.1, true);
wp_enqueue_script('swiper-script', get_stylesheet_directory_uri() . '/assets/js/swiper.js', array('swiper-js'), 1.1, true);
// Enqueue Swiper CSS
wp_enqueue_style('swiper-css', 'https://unpkg.com/swiper/swiper-bundle.min.css');
// Enqueue Swiper JS
wp_enqueue_script('swiper-js', 'https://unpkg.com/swiper/swiper-bundle.min.js', array(), null, true);
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


/*****Fonction pour ajouter un item supplémentaire sans lien au menu Footer****/
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


/*****Fonction pour ajouter le bouton contact au menu Header*****/
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


/*****Charger le script spécifique "Charger plus de photos" à la page.php*****/
function button_home() {
    // Charger un script quand on clique sur le bouton "charger plus" à la page d'accueil
  if( is_page() ) {
      wp_enqueue_script( 'button_plus', get_template_directory_uri() . '/assets/js/ajax-script.js', [ 'jquery' ], '1.1', true);
  }
}
add_action( 'wp_enqueue_scripts', 'button_home' );

/*****Réceptionner et traiter la requête Ajax du bouton "charger plus"*****/
include('includes/ajax.php');


/*****Fonction pour les filtres de la page d'accueil*****/
//filtre des catégories
function filtreCategorie() {
    $output = '<option value="all" selected>Catégories</option>'; // Option par défaut
    $terms = get_terms(array(
        'taxonomy' => 'categorie',
        'hide_empty' => false // Pour inclure les termes sans post associé
    ));
    if ($terms) {
        foreach ($terms as $term) {
            $output .= '<option value="' . $term->slug . '">' . $term->name . '</option>';
        }
    }
    return $output;
}



//filtre des formats
function filtreFormat() {
    $output = '<option value="all-formats" selected>Formats</option>'; // Option par défaut
    $terms = get_terms(array(
        'taxonomy' => 'format',
        'hide_empty' => false // Pour inclure les termes sans post associé
    ));
    if ($terms) {
        foreach ($terms as $term) {
            $output .= '<option value="' . $term->slug . '">' . $term->name . '</option>';
        }
    }
    return $output;
}
//filtre des tries
/*function filtreTrie()
{
	if ($terms = get_terms(array(
		'taxonomy' => 'categorie',
		'field'    => 'slug',
		'terms'    => $_POST['category'],
	)))
		foreach ($terms as $term) {
			echo '<option  value="' . $term->slug . '">' . $term->name . '</option>';
		}
}*/

/*****Réceptionner et traiter la requête Ajax du bouton "Plein écran"*****/
add_action('wp_ajax_get_category_images', 'get_category_images_callback');
add_action('wp_ajax_nopriv_get_category_images', 'get_category_images_callback');

function get_category_images_callback() {
    $selectedCategory = $_POST['category'];

    // Ajoutez votre propre logique pour récupérer les images basées sur la catégorie sélectionnée.
    // Par exemple, vous pouvez utiliser WP_Query pour récupérer les images associées à la catégorie.
    $args = array(
        'post_type' => 'post',
        'posts_per_page' => -1,
        'category_name' => $selectedCategory
    );

    $query = new WP_Query($args);

    // Boucle à travers les résultats de la requête pour afficher les images
    if ($query->have_posts()) {
        while ($query->have_posts()) {
            $query->the_post();
            // Ici, vous pouvez afficher les images associées à chaque article
            // par exemple :
            echo '<img src="' . get_the_post_thumbnail_url() . '" alt="' . get_the_title() . '" />';
        }
        wp_reset_postdata();
    } else {
        echo 'Aucune image trouvée.';
    }

    wp_die();
}


?>
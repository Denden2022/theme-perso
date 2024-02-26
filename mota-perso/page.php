<?php
/**
 * The template for displaying all single posts
 *
 * @package WordPress
 * @subpackage Theme-perso
 * 
 */
?>

<?php get_header(); ?>

<main id="primary" class="site-main">
    <section id="logo" class="banner">

        <div class="hero-header">
        <?php
        $the_query = new WP_Query(array(
            'post_type' => 'photo',
            'posts_per_page' => 1,
            'orderby' => 'rand'
        ));

        $count = 0;
        while ($the_query->have_posts()) : $the_query->the_post(); ?>

        <?php if ($count == 0) : ?>
            <div class="header-image">
                <?php the_post_thumbnail(); ?>
            </div>
        <?php endif;
        $count++;
        endwhile;
    wp_reset_postdata(); ?>
        </div><!--ferme class hero-header-->
        <div class="title-header">
            <img src="<?php echo get_stylesheet_directory_uri() . '/assets/images/Titre-header.svg'; ?> " alt="titre header">
        </div>
    </section>

            <!---<Les filtres>-->
    <section class="filters-photos">
        <div class="filters">
        <?php include('includes/filter.php'); ?>
        </div>

        <!--Les images de la catégorie sélectionnée apparaitront ici-->
        <div id="images-container"></div>
        
        <div id="images-block">
        <?php
        // Nombre de fois que le template photo-block s'affiche
        $number_of_blocks = 4;

        // Boucle pour afficher le template photo-block plusieurs fois
        for ($i = 0; $i < $number_of_blocks; $i++) {
            get_template_part('templates-part/photo-block');
        }
        ?></div>

                <!---<Le bouton "charger-plus">-->
        <div class="block-button">
            <button class="js-load-button"
                data-postid="<?php echo get_the_ID(); ?>"
                data-nonce="<?php echo wp_create_nonce('load_photos'); ?>"
                data-action="load_photos"
                data-ajaxurl="<?php echo admin_url( 'admin-ajax.php' ); ?>">Charger plus
            </button>

                <!--les photos chargés, apparaitront ici-->
            <div class="block-list-photos"></div>
        </div>
    </section>
</main>

 <?php get_footer(); ?>
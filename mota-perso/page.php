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
    </section>

    <div id="photo-gallery" class="photo-gallery">
        <!-- Les articles seront chargés ici par AJAX -->
    </div>
    <?php
               // get_template_part('templates-part/photo-block2');
            ?> 
    <button id="load-more">Charger plus</button>
</main>

 <?php get_footer(); ?>
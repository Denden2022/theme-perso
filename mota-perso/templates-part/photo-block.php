<?php
/**
 * Template part for block photos
 *
 * @package Mota
 */
?>

                <!---Photos apparentées--->
<div class="block-image">

    <?php
    // Vérifier si la page actuelle est un article individuel
    if (is_single()) {
        // Récupérer la catégorie de l'image en cours
        $current_category = get_the_terms(get_the_ID(), 'categorie'); 
        // Récupérer l'ID de l'article en cours
        $current_post_id = get_the_ID();
        // WP_Query pour obtenir la catégorie courante pour les 2 images, excluant la grande image
        $the_query = new WP_Query(array(
            'post_type' => 'photo',
            'posts_per_page' => 2,
            'orderby' => 'rand',
            'post__not_in' => array($current_post_id), // Exclure la grande image
            'tax_query' => array(
                array(
                    'taxonomy' => 'categorie', // Nom de la taxonomie
                    'field' => 'term_id',
                    'terms' => $current_category[0]->term_id, // Terme de la catégorie
                )
            )
    ));}
        
    else {
            $the_query = new WP_Query(array(
                'post_type' => 'photo',
                'posts_per_page' => 8,
                'orderby' => 'date',
                'order' => 'ASC',
                'post__not_in' => $excluded_posts, // Exclure les articles déjà affichés
            ));
        }
        ?>

    <?php if ($the_query->have_posts()) : ?>
        <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>
            <div id="same-image" class="same-image image-container">
                <?php get_template_part('templates-part/eye-overlay') ?>
                <?php the_post_thumbnail(); ?>
            </div>
    <?php
        endwhile;
        endif;
        wp_reset_postdata();
    ?>       
</div><!---fermer block image-->




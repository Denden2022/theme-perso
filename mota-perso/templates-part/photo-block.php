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
       
                /*if (is_page()) {
     // Récupérer l'ID de la page en cours
     $current_page_id = get_the_ID();
 
     // WP_Query pour obtenir des articles de type 'photo' associés à la page actuelle
     $the_query = new WP_Query(array(
         'post_type' => 'photo',
         'posts_per_page' => 8,
         'orderby' => 'rand',
         'meta_query' => array(
             array(
                'field' => 'term_id',
             )
         )
     ));}*/
     else {
        
            $the_query = new WP_Query(array(
                'post_type' => 'photo',
                'posts_per_page' => 2,
                'orderby' => 'rand',
                $tax_query = array(
                    array(
                        'taxonomy' => 'categorie',
                        'field' => 'slug',
                        'terms' => 'categorie',
                    ))
                
            ));
        
        }
        ?>

<?php if ($the_query->have_posts()) : ?>
    <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>
    <!---
    <div class="lightbox">
        --->
        <div id="same-image" class="same-image image-container">
        
                <a href="<?php the_permalink(); ?>">
                
                    <?php the_post_thumbnail(); ?>
                </a>

            <!-- oeil+éléments à afficher --> 
            <?php get_template_part('templates-part/eye-overlay')?>
            
        </div><!---fermer l'image-->
    <?php
        endwhile;
        endif;
         wp_reset_postdata();
    ?>
    </div><!---fermer lightbox-->
</div><!---fermer block image-->




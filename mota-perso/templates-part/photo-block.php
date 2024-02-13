<?php
/**
 * Template part for block photos
 *
 *
 * @package Mota
 */

?>

                <!---Photos apparentées--->
                <div class="block-image">
    <?php
    $the_query = new WP_Query(array(
        'post_type' => 'photo',
        'posts_per_page' => 2,
        'orderby' => 'rand', 'categorie',
        'category_in' => 'categorie'
    ));

/*$current_category = get_the_terms(get_the_ID(), 'categorie');

$the_query = new WP_Query(array(
  'post_type' => 'photos',
  'posts_per_page' => 2,
  'orderby' => 'rand',
  'tax_query' => array(
      array(
          // Prendre les images de la taxonomie de "catégorie"
          'taxonomy' => 'categorie',
          // Prendre l'ID de la photo affichée sur le single.php
          'field' => 'term_id',
          // Utiliser la catégorie actuelle
          'terms' => $current_category[0]->term_id,
      ),
  ),
));*/

    $count = 0;
    while ($the_query->have_posts()) : $the_query->the_post(); ?>
        <?php if ($count == 0) : ?>
            <div class="same-image first-image">
                <?php the_post_thumbnail(); ?>
            </div>
        <?php else : ?>
            <div class="same-image second-image">
                <?php the_post_thumbnail(); ?>
            </div>
        <?php endif;
        $count++;
    endwhile;
    wp_reset_postdata(); ?>
    
</div>


<?php
/**
 * Template part for block photos
 *
 * @package Mota
 */
?>


                <!---Photos apparentées--->               
<div class="block-image">
    <?php  $photo_query = new WP_Query( get_query_var('photo_query')); ?>
    <?php if ($photo_query->have_posts()) : ?>
        <?php while ($photo_query->have_posts()) : $photo_query->the_post(); ?>
            <div id="same-image" class="same-image image-container">
                <?php get_template_part('templates-part/eye-overlay') ?>
                <?php echo get_the_post_thumbnail(); ?>
            </div>
            
    <?php
        endwhile;
        endif;
        wp_reset_postdata();
    ?>       
</div><!---fermer block image-->




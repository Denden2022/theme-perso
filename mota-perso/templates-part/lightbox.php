<?php
/**
 * Template part for block photos TEST
 *
 * @package Mota
 */
?>

<?php
$args = array(
    'post_type'      => 'photo',
    'posts_per_page' => -1,
    'orderby'        => 'meta_value_num',
);
$the_query = new WP_Query($args);
?>

<div class="swiper mySwiper">
    <div class="swiper-wrapper">
        <?php
        while ($the_query->have_posts()) {
            $the_query->the_post();
            ?>
            <div class="swiper-slide">
            <?php the_post_thumbnail(); ?> 
            </div><!-- swiper-slide -->
            <?php
        }
        ?>
    </div><!-- swiper-wrapper -->
</div><!-- mySwiper -->

<?php
// Réinitialiser la requête WP
wp_reset_postdata();
?>

</div>



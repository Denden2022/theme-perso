<?php
/**
 * Template part for la pagination des photos avec apparitions photos au survol
 *
 *
 * @package Mota
 */

?>

<div class="swiper-part">
<?php
        $args = array(
            'post_type' => 'photo',
            'posts_per_page' => -1,
            'orderby' => 'rand',
            );
        $photos_query = new WP_Query($args);
    ?>  
                         
    <?php
echo '<div class="swiper mySwiper">'; 
echo '<div class="swiper-wrapper">';


$photos_query->next_post();

// Mettez chaque personnage dans une diapositive distincte
while ($photos_query->have_posts()) {
    $photos_query->the_post( );
    echo '<div class="swiper-slide">'; 
    the_post_thumbnail();
    echo '</div>';//fermer le swiper-slide
}
echo '</div>'; //fermer swiper-wrapper ?>

<?php echo '</div>'; //fermer mySwiper 

// Réinitialiser la requête WP
wp_reset_postdata();
?>
</div>


</div>


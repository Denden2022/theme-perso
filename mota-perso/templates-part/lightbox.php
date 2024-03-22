<?php
/**
 * Template part for block photos TEST
 *
 * @package Mota
 */
?>
<!----->

<div id="lightbox" class="lightbox">
    <div class="lightbox-close"></div>

        <?php
        $args = array(
            'post_type' => 'photo',
            'posts_per_page' => -1,
        );

        $the_query = new WP_Query($args);
        ?>

        <?php
        echo '<div class="swiper mySwiper">'; 
        echo '<div class="swiper-wrapper">';
        echo '<div class="swiper-slide">';
        ?>

        <div class="swiper-content">
           <div class="screen-img" id="screen-img">
                <img id="image-lightbox" src="" alt=<?php echo the_title() ?>>
                    <div class="infos-photo">
                        <p class="lightbox-ref"></p>
                        <p class="lightbox-cat"></p>
                    </div>
            </div>
            <?php 
                echo '</div>';//fermer le swiper-slide 
                echo '</div>';//fermer le swiper-wrapper
                echo '<div class="swiper-button-next"></div>';
                echo '<div class="swiper-button-prev"></div>';
                echo '</div>';//fermer le swiper
            ?>

            <?php
            // Réinitialiser la requête WP
            wp_reset_postdata();
            ?>
        </div>
</div>


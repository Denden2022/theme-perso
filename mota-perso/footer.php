<?php
/**
 * The template for displaying the footer
 *
 */

?>  

<footer id="footer" role="contentinfo" class="footer">
<?php wp_nav_menu ( array(
                    'theme_location' => 'footer',
                    'container' => 'ul', // afin d'éviter d'avoir une div autour 
                    'menu_class' => 'site_footer_menu', // ma classe personnalisée 

            )); 
?>
</footer>

                <!---Template modale popup contact--->
<?php get_template_part('templates-part/content-modale'); ?>

                <!---lightbox--->           
<div id="lightbox" class="lightbox">
<div class="lightbox-close"></div>
    <div class="swiper-lightbox">
        <?php
            // Récupérer l'URL de l'image en taille réelle
            $image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), '');
        ?>
        <img src="<?php echo esc_url($image_url[0]); ?>" alt="Image">
    </div>

    <?php
        $args = array(
            'post_type' => 'photo',
            'posts_per_page' => -1,           
            );
        // Récupérer l'ID de l'article en cours
        $current_post_id = get_the_ID();

        $photos_query = new WP_Query($args);
    ?>
</div>

<?php wp_footer(); ?>

    </body>
</html>
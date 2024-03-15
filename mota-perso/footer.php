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
<?php get_template_part('templates-part/lightbox'); ?>






</div>

<?php wp_footer(); ?>

    </body>
</html>
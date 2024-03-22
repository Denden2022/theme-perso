<div class="test" id="test">
                <?php
    // Récupération de l'URL de l'image actuelle
    $current_image_url = wp_get_attachment_url( get_post_thumbnail_id() );
?>
<?php the_post_thumbnail();?>
</div>
<?php
/**
 * Template part for block photos TEST
 *
 * @package Mota
 */
?>
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

        $the_query->next_post();
        
        while ($the_query->have_posts()) {
            $the_query->the_post();
            echo '<div class="swiper-slide">'
            
             ?>
        <div class="swiper-content">
           <div class="screen-img">
           <?php the_post_thumbnail(); ?>   
            </div>
           
            <?php
                // On récupère les champs ACF nécessaires pour les détails de l'overlay
                $reference=get_field('reference');
                $categorie=get_field('categorie');
                ?>

                <div class="details-lightbox" data-reference="<?php echo $reference ?>">
                    <span id="ref-lightbox">BF<?php echo $reference ?></span>
                    <span id="cat-lightbox">
                        <?php if ($categorie) {
                            // Récupérer les termes de taxonomie associés au champ personnalisé 'format'
                            $terms = get_terms(array(
                                'taxonomy' => 'categorie',
                                'include' => $categorie // Inclure uniquement les termes de taxonomie correspondant à la valeur du champ 'categorie'
                            ));

                            // Vérifier s'il y a des termes de taxonomie trouvés
                            if (!empty($terms) && !is_wp_error($terms)) {
                                // Parcourir les termes de taxonomie
                                foreach ($terms as $term) {
                                    // affichez le nom du terme)
                                    echo $term->name;
                                    }
                            }};
                        ?>
                    </span><!---fermer les span--> 
                </div>
                </div>           
            <?php
            echo '</div>';//fermer le swiper-slide
        }

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



<!-- oeil+éléments à afficher --> 
<div class="eye-overlay">
    <div id="eye-container" class="eye-img">
        <div>
            <a href="<?php the_permalink(); ?>" class="hover-img">
                <img src="<?php echo get_stylesheet_directory_uri() . '/assets/images/eye.svg'; ?>" alt="eye">    
            </a>
        </div>
        <div class="screen-image">
            <?php
            // On récupère les champs ACF nécessaires pour les détails de l'overlay
                $categorie=get_field('categorie');
            ?>
            <img class="screen-full" src="<?php echo get_stylesheet_directory_uri() . '/assets/images/Icon-fullscreen.svg'; ?>" alt="screen-full;"
                data-image="<?php echo get_the_post_thumbnail_url(); ?>"
                data-ref="<?php echo get_field('reference'); ?>"
                data-cat=" <?php if (!empty($categorie)) {
                        // Récupérer les termes de taxonomie associés au champ personnalisé 'format'
                                $terms = get_terms(array(
                                    'taxonomy' => 'categorie',
                                    'include' => $categorie // Inclure uniquement les termes de taxonomie correspondant à la valeur du champ 'categorie'
                                ));
                        // Si des termes sont trouvés, afficher le nom du premier terme
                                if (!empty($terms) && !is_wp_error($terms)) {
                                    echo $terms[0]->name;
                                }
                             }
                        ?>">    
        </div>
    </div>
                <?php
                // On récupère les champs ACF nécessaires pour les détails de l'overlay
                $reference=get_field('reference');
                $categorie=get_field('categorie');
                ?>

                <div class="details-overlay" data-reference="<?php echo $reference ?>">
                    <span id="ref-hover">BF<?php echo $reference ?></span>
                    <span id="cat-hover">
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
                    </span>
                </div><!---fermer les span--> 
</div><!---fermer la modale avec l'oeil--> 



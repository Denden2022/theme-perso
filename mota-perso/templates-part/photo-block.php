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
    // Vérifier si la page actuelle est un article individuel
    if (is_single()) {
        // Récupérer la catégorie de l'image en cours
        $current_category = get_the_terms(get_the_ID(), 'categorie'); 
        // Récupérer l'ID de l'article en cours
        $current_post_id = get_the_ID();
        // WP_Query pour obtenir la catégorie courante pour les 2 images, excluant la grande image
        $the_query = new WP_Query(array(
            'post_type' => 'photo',
            'posts_per_page' => 2,
            'orderby' => 'rand',
            'post__not_in' => array($current_post_id), // Exclure la grande image
            'tax_query' => array(
                array(
                    'taxonomy' => 'categorie', // Nom de la taxonomie
                    'field' => 'term_id',
                    'terms' => $current_category[0]->term_id, // Terme de la catégorie
                )
            )
        ));}
    else {
        $the_query = new WP_Query(array(
            'post_type' => 'photo',
            'posts_per_page' => 2,
            'orderby' => 'rand',
        ));}

    ?>

    <?php if ($the_query->have_posts()) : ?>
    <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>
    <!---<div class="lightbox">--->
        <div id="same-image" class="same-image image-container">
            <?php the_post_thumbnail(); ?>         
       
            <!-- oeil+éléments à afficher --> 
            <div class="eye-overlay">
            <div id="eye-container" class="eye-img">
            <?php
            // Récupérer le slug (post_name) de l'article
            $post_slug = get_post_field('post_name', get_the_ID());
            ?>
            <a href="./<?php echo esc_attr($post_slug); ?>" class="hover-img"><img src="<?php echo get_stylesheet_directory_uri() . '/assets/images/eye.svg'; ?>" alt="eye"></a>
            <?php
            // Récupérer l'URL de l'image en taille réelle
            $image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
            ?>
            <a href="<?php echo esc_url($image_url[0]); ?>" class="screen-full"></a>
            </div>
               
                <?php
                // On récupère les champs ACF nécessaires
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
        </div><!---fermer l'image-->
    <?php
        endwhile;
        endif;
         wp_reset_postdata();
    ?>
    </div><!---fermer lightbox-->
</div><!---fermer block image-->


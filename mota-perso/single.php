<?php
/**
 * Template utilisé pour afficher un seul article (post).
 *
 * @package WordPress
 * @subpackage Theme-perso
 */

get_header();

/* Commencer la boucle */
while (have_posts()) :
    the_post();
?>

<main id="main" class="site-main">
    <div class="container-single-page">
		
            <?php
            // On récupère les champs ACF nécessaires
            $titre=get_field('titre');
            $reference=get_field('reference');
            $categorie=get_field('categorie', $post_id);
            $format=get_field('format', $post_id);
            $type=get_field('type');
            $annee=get_field('annee');
            ?>

<!---1ère partie avec la photo et ses informations détaillées-->
            <section class="details-container">
                <div class="details">
                    <h2><?php echo $titre ?></h2>
                        <ul>
                            <li>Référence : <span id="reference_value">BF<?php echo $reference ?></span></li>
                            <li>Catégorie : <span id="categorie_value"><?php if ($categorie) {
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
                            ?></span>
                            </li>
                            <li>Format : <?php if ($format) {
                            // Récupérer les termes de taxonomie associés au champ personnalisé 'format'
                                $terms = get_terms(array(
                                'taxonomy' => 'format',
                                'include' => $format // Inclure uniquement les termes de taxonomie correspondant à la valeur du champ 'format'
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
                            </li>
                            <li>Type : <?php echo $type ?></li>
                            <li>Année : <?php echo $annee ?></li>
                        </ul>
                        </div><!---ferme details-->

                                    <!---L'image de la 1ère partie--->
                <div class="side-big-image">
                <?php echo '<div class="big-image">'; the_post_thumbnail(); echo '</div>';?>
                </div><!---ferme la sidebig-image-->
            </section><!---ferme details-container-->


<!---2ème partie avec le bouton contact-->
            <section class="contact-photo"><!---container contact photo-->
                <div class="button-contact">
                    <p>Cette photo vous intéresse ?</p>
                    <input class="btn-single-page" type="submit" value="Contact">
                </div>
                                
                <div class=paging-arrows>
                    <!---Template paging-photos contact--->
                    
                    <div class="arrows">
                        <img class="arrow-left" src="<?php echo get_stylesheet_directory_uri() . '/assets/images/arrow-left.svg'; ?> " alt="flèche gauche">
                        <img class="arrow-right"src="<?php echo get_stylesheet_directory_uri() . '/assets/images/arrow-right.svg'; ?> " alt="flèche droite">
                    <?php get_template_part('templates-part/paging-photos'); ?>
                    </div><!---ferme arrows-->    
                    <!---La petite image au dessus des flèches--->
                    <!--<div class="side-little-image">  -->         
                        <?php 
                        // Récupérer une petite image
                        /* echo '<div class="little-image">';
                        // Utiliser la fonction WP_Query pour obtenir une image aléatoire du type de post "photo"
                            $little_image_query = new WP_Query(array(
                                'post_type' => 'photo',
                                'posts_per_page' => 1,
                                'orderby' => 'rand'
                            ));
                            if ($little_image_query->have_posts()) {
                                while ($little_image_query->have_posts()) {
                                    $little_image_query->the_post();
                                    the_post_thumbnail(); // Afficher la miniature de l'image
                                }
                            }
                        echo '</div>';
                        wp_reset_postdata(); */// Réinitialiser les données de la requête précédente
                        ?>
                    </div><!---ferme side-little-image-->
                </div><!---ferme le 2ème bloc de la 2ème partie-->
            </section><!---ferme contact-photo-->


<!---3ème partie avec les photos apparentées-->
            <div class="text-photos-apparentes">
                <p>Vous aimerez aussi</p>
            </div>

            <?php echo get_template_part('/templates-part/photo-block'); ?>
            
            <!-- Ajout d'un fond transparent foncé avec oeil et plein écran -->

<div class="eye-overlay" id="eye-overlay">
    <div class="eye-content" id="eye-content">
        <div class="eye-hover">
            <img src="<?php echo get_stylesheet_directory_uri() . '/assets/images/Contact-header.svg'; ?>" alt="<?php echo 'logo contact'; ?>">
        </div>
              
        <?php endwhile;
            wp_reset_postdata(); // Réinitialiser la requête
        ?>
    </div><!-- .container -->
</main><!-- #main -->

<?php
get_footer();
?>


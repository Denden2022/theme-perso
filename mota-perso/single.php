<?php
/**
 * Template utilisé pour afficher un seul article (post).
 *
 * @package WordPress
 * @subpackage Theme-perso
 */

get_header();


?>

<main id="main" class="site-main">
    <div class="container-single-page">
		
            <?php
            // On récupère les champs ACF nécessaires
            $titre=get_field('titre');
            $reference=get_field('reference');
            $categorie=get_field('categorie', get_the_ID());
            $format=get_field('format', get_the_ID());
            $type=get_field('type');
            $annee=get_field('annee');
            $previousPost=get_previous_post();
            $nextPost=get_next_post();

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
                        <div class="image-arrows">
                            <img class="image-arrow-left" src="<?php echo get_the_post_thumbnail_url($previousPost) ?>" alt="image précédente">
                            <img class="image-arrow-right" src="<?php echo get_the_post_thumbnail_url($nextPost) ?>" alt="image suivante">
                        </div>
                        <?php if($previousPost) : ?>
                            <a href="<?php echo get_the_permalink($previousPost)?>"><img class="arrow-left" src="<?php echo get_stylesheet_directory_uri($previousPost) . '/assets/images/arrow-left.svg'; ?> " alt="flèche gauche"></a>
                        <?php endif; ?>
                        <?php if($nextPost) : ?>
                            <a href="<?php echo get_the_permalink($nextPost)?>"><img class="arrow-right"src="<?php echo get_stylesheet_directory_uri($nextPost) . '/assets/images/arrow-right.svg'; ?> " alt="flèche droite"></a>
                        <?php endif; ?>
                    </div><!---ferme arrows-->    
                </div><!---ferme le 2ème bloc de la 2ème partie-->
            </section><!---ferme contact-photo-->


<!---3ème partie avec les photos apparentées-->
            <section class="photos-apparentes">
                <div class="text-photos-apparentes">
                    <p>Vous aimerez aussi</p>
                </div>
                <div id="images-block">
                    <?php get_template_part('templates-part/photo-block2'); ?>
                </div>
            </section>
                    
            <?php wp_reset_postdata(); // Réinitialiser la requête ?>
               
    </div><!-- .container -->
</main><!-- #main -->

<?php
get_footer();
?>


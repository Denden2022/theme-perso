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
    <div class="container">
        <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
			
<?php
// On récupère les champs ACF nécessaires
$titre=get_field('titre');
$reference=get_field('reference');
$categorie=get_field('categorie');
$format=get_field('format');
$type=get_field('type');
$annee=get_field('annee');
// Obtenir l'ID de l'image à partir du champ ACF "photos"
$image_id = get_field('photos', $post_id);
?>
            <!---1ère partie avec la photo et ses informations détaillées-->
<div class="details-container">
	<div class="details">
		<h2><?php echo $titre ?></h2>
			<ul>
				<li>Référence : BF<?php echo $reference ?></li>
				<li>Catégorie : <?php echo $categorie ?></li>
				<li>Format : <?php echo $format ?></li>
				<li>Type : <?php echo $type ?></li>
				<li>Année : <?php echo $annee ?></li>
			</ul>
    </div><!---ferme details-->

    <div class="side-big-image">
<?php
// Vérifier si l'ID de l'image a été récupéré avec succès
if ($image_id) {
    // Utilisez l'ID de l'image pour obtenir l'URL et les autres informations de l'image
   		$image_url = wp_get_attachment_image_url($image_id, 'medium');//donner une taille à l'image
		$image_alt = get_post_meta($image_id, '_wp_attachment_image_alt', true); // Récupérer l'attribut alt de l'image

    // Afficher l'image
        echo '<img class="big-image" src="' . esc_url($image_url) . '" alt="' . esc_attr($image_alt) . '">';
	}
?>                      
	</div><!---ferme la side-image-->		
</div><!---ferme details-container-->

                <!---2ème partie avec le bouton contact-->
    <div class="contact-photo"><!---contact commande photo-->
        <div class="button-contact">
			<p>Cette photo vous intéresse ?</p>
			<a href="../../contact"><input class="input-single-page" type="submit" value="Contact"></a>
		</div>

        <div class="side-little-image">
            <?php
                // Vérifier si l'ID de l'image a été récupéré avec succès
                if ($image_id) {
                // Utilisez l'ID de l'image pour obtenir l'URL et les autres informations de l'image
		            $image_little = wp_get_attachment_image_url($image_id, 'thumbnail');//donner une taille à l'image
		            $image_alt = get_post_meta($image_id, '_wp_attachment_image_alt', true); // Récupérer l'attribut alt de l'image

	            // Afficher l'image
		            echo '<div><img class="little-image" src="' . esc_url($image_little) . '" alt="Autre image"></div>';
	            }
            ?>
        </div><!---ferme side-little-image-->
    </div><!---ferme contact-photo-->
        
</article><!-- #post-<?php the_ID(); ?> -->

        <?php
        // La boucle
        $args = array(
            'showposts' => 1,
            'cat' => 0,
            'orderby'  => 'rand'
        );

        $the_query = new WP_Query($args);
        while ($the_query->have_posts()) :
            $the_query->the_post();
        ?>

        <?php endwhile;
        wp_reset_postdata(); // Réinitialiser la requête

        endwhile; // Fin de la boucle WordPress
        ?>
    </div><!-- .container -->
</main><!-- #main -->

<?php
get_footer();
?>


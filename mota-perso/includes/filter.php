<?php
/**
 * Include filter pour : - Tous les filtres de la page d'accueil
 *
 * @package Mota
 */

?>

<!---Filtre "Catégories"--->
<select class="filters-class js-load-filters-categories" name="categories" id="categories"
        data-nonce="<?php echo wp_create_nonce('load_filters_categories'); ?>"
        data-action="load_filters_categories"
        data-ajaxurl="<?php echo admin_url( 'admin-ajax.php' ); ?>"
        onchange="toggleOptions()">
    <option class="item all" value="all" selected >Catégories</option>
    <option class="item-categories" value="item-categories">
        <?php 
        $terms = get_terms(array(
            'taxonomy' => 'categorie',
        ));
            // Parcourons les termes
            foreach ($terms as $term) {
                // Affichons le nom du terme
                echo '<option class="single-item">' . $term->name . '</option>';
            }
        ?>
    </option>
</select>


<div class="sel" id="customSelect"  onclick="toggleOptions()">
<div class="label">Catégories</div>
    <div class="vide"></div>
    <div class="options">
    <?php 
        $terms = get_terms(array(
            'taxonomy' => 'categorie',
        ));
            // Parcourons les termes
            foreach ($terms as $term) {
                // Affichons le nom du terme
                echo '<div class="single-item">' . $term->name . '</div>';
            }
        ?>
    </div>
</div>


<!---Filtre "Formats"--->
<select class="filters-class js-load-filters-formats" name="formats" id="formats"
        data-nonce="<?php echo wp_create_nonce('load_filters_formats'); ?>"
        data-action="load_filters_formats"
        data-ajaxurl="<?php echo admin_url( 'admin-ajax.php' ); ?>">
    <option class="item-all" value="all-formats" selected>formats</option>
    <option class="item vide" value="vide"></option>
    <?php echo filtreFormat(); ?>
</select>
            

<!---Filtre "Trier par"--->
<select class="filters-class" name="trier" id="trier">
    <option class="item all" value="trier">trier par</option>
    <option class="item vide" value="vide"></option>
    <option class="item recent" value="recent">A partir des plus récentes</option>
    <option class="item old" value="old">A partir des plus anciennes</option>
</select>

            <!---<div class="flex-row">
		<form action="#" method="POST" id="post_filters">
			<p><input type="radio" value="all" id="all" class="category_filter" name="category_filters"><label for="all">Toutes</label></p>-->
			<?php 
			/*if( $terms = get_terms( array( 'taxonomy' => 'categorie' ) ) ) :
			foreach( $terms as $term ) :
			echo '<p><input type="radio" id="' . $term->term_id . '" value="' . $term->term_id . '" name="category_filters" class="category_filter"/><label for="' . $term->term_id. '">' . $term->name . '</label></p>';
			endforeach;
			endif;
			?>
			<!-- required hidden field for admin-ajax.php -->
			<input type="hidden" name="action" value="ccfilter" />
		</form>
	</div>*/

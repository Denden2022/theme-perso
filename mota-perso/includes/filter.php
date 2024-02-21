<!---Les filtres de la page d'accueil--->

<select class="filters-class js-load-filters-categories" name="categories" id="categorie"
        data-nonce="<?php echo wp_create_nonce('load_filters_categories'); ?>"
        data-action="load_filters_categories"
        data-ajaxurl="<?php echo admin_url( 'admin-ajax.php' ); ?>">
    <option class="item all" value="all" selected>Catégories</option>
    <option class="item vide" value="vide"></option>
    <?php echo filtreCategorie(); ?>
</select>

            <select class="filters-class" name="formats" id="format">
                <option class="item all" value="formats" selected>formats</option>
                <option class="item vide" value="vide"></option>
                <?php echo filtreFormat(); ?>
            </select>
            
            <select class="filters-class" name="trier" id="trier">
                <option class="item all" value="trier">trier par</option>
                <option class="item vide" value="vide"></option>
                <option class="item recent" value="recent">A partir des plus récentes</option>
                <option class="item old" value="old">A partir des plus anciennes</option>
            </select>



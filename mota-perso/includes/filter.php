<?php
/**
 * Include filter pour : - Tous les filtres de la page d'accueil
 *
 * @package Mota
 */
?>
<!---Filtre "Catégories"--->
<div class="sel-container">
    <div class="sel js-load-filters" id="customSelect"  onclick="toggleOptionsCategories()"
        data-nonce="<?php echo wp_create_nonce('load_filters'); ?>"
        data-action="load_filters"
        data-ajaxurl="<?php echo admin_url( 'admin-ajax.php' ); ?>"
        onchange="toggleOptionsCategories()">
        <div class="label" data-value="all">Catégories</div>
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
</div>

<!---Filtre "Formats"--->
<div class="select-container">
    <div class="select js-load-filters" id="selectFormats"  onclick="toggleOptionsFormats()"
        data-nonce="<?php echo wp_create_nonce('load_filters'); ?>"
        data-action="load_filters"
        data-ajaxurl="<?php echo admin_url( 'admin-ajax.php' ); ?>"
        onchange="toggleOptionsFormats()">
        <div class="label-format" data-value="allFormats">Formats</div>
            <div class="options-formats">
                <?php 
                    $terms = get_terms(array(
                        'taxonomy' => 'format',
                    ));
                    // Parcourons les termes
                    foreach ($terms as $term) {
                        // Affichons le nom du terme
                        echo '<div class="single-item-format">' . $term->name . '</div>';
                    }
                ?>
            </div>
    </div>
</div>

<!---Filtre "Trier par"--->
<div class="selection-container">
    <div class="selection js-load-filters-orders" id="selectOrders"  onclick="toggleOptionsOrders()"
        data-nonce="<?php echo wp_create_nonce('load_filters_orders'); ?>"
        data-action="load_filters_orders"
        data-ajaxurl="<?php echo admin_url( 'admin-ajax.php' ); ?>"
        onchange="toggleOptionsOrders()">
        <div class="label-trie" data-value="allOrders">trier par</div>
            <div class="options-tries">
            <div class="single-item-order">A partir des plus récentes</div>
            <div class="single-item-order">A partir des plus anciennes</div>
        </div>
    </div>
</div>


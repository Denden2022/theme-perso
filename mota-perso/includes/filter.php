<?php
/**
 * Include filter pour : - Tous les filtres de la page d'accueil
 *
 * @package Mota
 */
?>
<!---Filtre "Catégories"--->
<div class="sel-container">
    <select class="sel js-load-filters" id="categorie-filter" >
        <option class="label" value="">Catégories</option>
        <?php 
            $terms = get_terms(array(
                'taxonomy' => 'categorie',
            ));
            // Parcourons les termes
            foreach ($terms as $term) {
                // Affichons le nom du terme
                echo '<option class="single-item " value="' . $term->slug . '">'. $term->name . '</option>';
            }
        ?>
    </select>
</div>

<!---Filtre "Formats"--->
<div class="select-container">
    <select class="select js-load-filters " id="format-filter"  >
        <option class="label-format" value="">Formats</option>
        <?php 
            $terms = get_terms(array(
                'taxonomy' => 'format',
            ));
            // Parcourons les termes
            foreach ($terms as $term) {
                // Affichons le nom du terme
                echo '<option class="single-item-format" value="' . $term->slug . '">' . $term->name . '</option>';
            }
        ?>
    </select>
</div>

<!---Filtre "Trier par"--->
<div class="selection-container">
    <select class="selection js-load-filters " id="tri-filter" >
        <Option class="label-trie ">trier par</Option>
        <Option class="single-item-order" value="DESC">A partir des plus récentes</Option>
        <Option class="single-item-order" value="ASC">A partir des plus anciennes</Option>
    </select>
</div>


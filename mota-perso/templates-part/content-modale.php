<!-- Ajout d'une popup pour la page contact -->
<div class="popup-contain" id="popup-container">
    <div class="popup-contact" id="popup-contact">
        <div class="popup-header">
            <img src="<?php echo get_stylesheet_directory_uri() . '/assets/images/Contact-header.svg'; ?>" alt="<?php echo 'logo contact'; ?>">
        </div>
		
		<?php
		//On insère le formulaire de demandes de renseignements
		$formulaire_shortcode = do_shortcode('[contact-form-7 id="b1992bf" title="Contact"]');
		echo $formulaire_shortcode;
		?>

	</div>
</div>

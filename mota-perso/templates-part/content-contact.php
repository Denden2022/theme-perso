<!-- Ajout d'une popup pour annoncer la participation au salon -->

<?php
// On récupère les champs ACF nécessaires
$titre=get_field('titre', 161);
$description=get_field('description', 161);
$lieu=get_field('lieu', 161);
$date=get_field('date', 161);
$lien=get_field('lien_google_maps', 161);
?>

<div class="popup-overlay">
	<div class="popup-salon">
		<div class="popup-header">
			<h3><?php echo $titre; ?> </h3>
			<span class="popup-close"><i class="fa fa-times"></i></span>
		</div>
		<?php echo $description; ?>
		<?php
		// On insère le formulaire de demandes de renseignements
		$formulaire_shortcode = do_shortcode('[contact-form-7 id="b1992bf" title="Contact"]');
		echo $formulaire_shortcode;
		?>

	</div>
</div>

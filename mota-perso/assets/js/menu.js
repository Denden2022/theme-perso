/**
 * Script pour le menu en mode mobile
 * 
 */
//transformer le burger en croix lorsque l'on rentre dans le menu et ouvre le menu
function toggleBurger() {
  const burgerIcon = document.getElementById('burgerIcon');
  const menuRed = document.querySelector('.close');
  const menuOverlay = document.getElementById('menu-overlay');

  // Vérifie si l'image du burger est actuellement active
  if (burgerIcon.classList.contains('active-icon')) {
      // Désactive l'image du burger et active l'image de la croix
      burgerIcon.classList.remove('active-icon');
      menuRed.classList.remove('open-menu');
      // Masque l'arrière-plan noir
      menuOverlay.style.display = 'none';
  } else {
      // Active l'image du burger et affiche le menu rouge avec fond sombre
      burgerIcon.classList.add('active-icon');
      menuRed.classList.add('open-menu');
      // Affiche l'arrière-plan noir
      menuOverlay.style.display = 'block';
  }
}


/**
 * quand je clique sur un lien du menu, j'arrive sur sa page et le menu se ferme.
 */
document.querySelectorAll('.close ul li a').forEach(link => {
  link.addEventListener('click', () => {
    // Fermer le menu lorsqu'un lien est cliqué
    var toggleCheckbox = document.getElementById('toggle');
    toggleCheckbox.checked = false;
    // Désactiver l'icône de la croix et activer l'icône du burger si nécessaire
    var burgerIcon = document.getElementById('burgerIcon');
    burgerIcon.classList.remove('active-icon');
  });
});




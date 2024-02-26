/**
 * Script pour le menu en mode mobile
 * 
 */
//transformer le burger en croix lorsque l'on rentre dans le menu
function toggleBurger() {
    var burgerIcon = document.getElementById('burgerIcon');
    var crossIcon = document.getElementById('crossIcon');
    
    // Vérifie si l'image du burger est actuellement active
    if (burgerIcon.classList.contains('active-icon')) {
      // Désactive l'image du burger et active l'image de la croix
        burgerIcon.classList.remove('active-icon');
        crossIcon.classList.add('active-icon');
        // Ajoute une classe pour cacher l'image lorsque le menu est ouvert
    } else {
      // Désactive l'image de la croix et active l'image du burger
        burgerIcon.classList.add('active-icon');
        crossIcon.classList.remove('active-icon');
        // Retire la classe pour montrer l'image lorsque le menu est fermé
    }
  }
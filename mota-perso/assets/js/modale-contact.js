// fermeture de la popup modale-contact.js
document.addEventListener('DOMContentLoaded', function () {
    jQuery(document).ready(function($){
        $('.popup-salon .popup-close').click(function(event){
            event.preventDefault();
            $(this).closest('.popup-salon').parent().hide();
        });
    });
});
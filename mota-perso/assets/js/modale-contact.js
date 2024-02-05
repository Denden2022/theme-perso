// fermeture de la popup modale-contact.js
document.addEventListener('DOMContentLoaded', function () {
    jQuery(document).ready(function($){
        $('.popup-contact .popup-header').click(function(event){
            event.preventDefault();
            $(this).closest('.popup-contact').parent().hide();
        });
    });
});

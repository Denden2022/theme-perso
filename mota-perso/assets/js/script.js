// fermeture de la popup modale-contact.js
document.addEventListener('DOMContentLoaded', function () {
    jQuery(document).ready(function ($) {
        $(document).mouseup(function (e) {
            var popupContainer = $('.popup-contact');
            // Si le clic est en dehors de la modale
            if (!popupContainer.is(e.target) && popupContainer.has(e.target).length === 0) {
                popupContainer.parent().hide();
            }
        });
    });
});

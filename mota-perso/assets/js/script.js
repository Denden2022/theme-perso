// fermeture de la popup modale-contact quand je clique à l'extérieur de la modale
document.addEventListener("DOMContentLoaded", function () {
  jQuery(document).ready(function ($) {
    $(document).click(function (e) {
      const popupContainer = $(".popup-contact");
    
      // Si le clic est en dehors de la modale
      if (!popupContainer.is(e.target) && popupContainer.has(e.target).length === 0) {
            popupContainer.parent().hide();
        }
    });
  });
});

jQuery(document).ready(function($) {
  $('.menu-item-contact').click(function(event) {
      event.preventDefault();
      $.ajax({
          url: ajax_object.ajax_url,
          type: 'POST',
          data: {
              'action': 'load_modale_content'
          },
          success: function(response) {
              $('body').append(response);
          }
      });
  });
});







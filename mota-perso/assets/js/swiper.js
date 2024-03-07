/**
 * 
 * swiper effect fade sur la petite image avec pagination flêchée du single page
 * 
 */
var swiper = new Swiper(".Swiper", {
    loop:true,
    spaceBetween: 30,
    effect: "fade",
    grabCursor: true,
    centeredSlides: true,
    slidesPerView: 1,
    navigation: {
      nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    pagination: {
      el: ".swiper-pagination",
      
    },
  });
/**
 * 
 * swiper effect fade sur la petite image avec pagination flêchée du single page
 * 
 */
var swiper = new Swiper(".mySwiper", {
    spaceBetween: 30,
    effect: "fade",
    grabCursor: true,
    centeredSlides: true,
    slidesPerview: 1,
    navigation: {
      nextEl: ".arrow-right",
      clickable: true,
        prevEl: ".arrow-left",
        clickable: true,
    },
    /*pagination: {
      el: ".swiper-pagination",
      
    },*/  
  });
$(document).ready(function(){
  $('.carousel-members').slick({
      arrows: true,
      centerMode: true,
      slidesToShow: 3,
      autoplay: true,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 3,
            infinite: true,
            dots: false,
            autoplay: true
          }
        }
      ]
  });
});

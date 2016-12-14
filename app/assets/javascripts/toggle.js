
$(window).scroll(function(){
  var wScroll = $(this).scrollTop();

  if(wScroll > $('.focus-items').offset().top - ($(window).height()/1.2)) {

    $('.focus-items div').each(function(i){
      setTimeout(function(){
        $('.focus-items div').eq(i).addClass('is-showing');
      }, 150 * (i + 1));
      });
  }
});

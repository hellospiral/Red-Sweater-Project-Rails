$(document).ready(function() {

  $('#mobile-menu-icon').click(function() {
    $('.mobile-menu').toggle(700);
  });

  $('#ashley-arrow-down').click(function() {
    $('#ashley-details').toggle(700);
    $('#ashley-arrow-down').hide();
    $('#ashley-arrow-up').show();
  });
  $('#ashley-arrow-up').click(function() {
    $('#ashley-details').toggle(700);
    $('#ashley-arrow-down').show();
    $('#ashley-arrow-up').hide();
  });
});

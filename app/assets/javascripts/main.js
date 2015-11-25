$(document).ready(function() {

  for(var i=0; i < $('.btn').length; i++) {

    el = $('.btn')[i]; //Javascript
    $el = $(el); //JQuery Element

    $el.click(function(){
      $($('.delete')[4]).hide();
      $($('.update')[4]).show();
    });
    /*
    $('.btn').firt().click(function(){
      $('.update').first().show();
      $(this).hide();

    });
    */
  }

});

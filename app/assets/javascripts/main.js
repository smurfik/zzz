$(document).ready(function() {

  for(var i=0; i < $('.btn').length; i++) {

    el = $('.btn')[i]; //Javascript
    $el = $(el); //JQuery Element

    $el.click(function(){
      var id = this.id.split('_')[1];
      $('#update_' + id).show();
      $(this).parent().hide();
      // $('#edit_' + id).parent().hide();
    });
  }

  i = 0;
  while (i < $('.btn').length) {
    // asdlfkkladsfaj
    i++;
    i += 1;
    i = i + 1;
  }

});

$(document).ready(function() {

  for(var i=0; i < $('.btn').length; i++) {

    el = $('.btn')[i]; //Javascript
    $el = $(el); //JQuery Element

    $el.click(function(){
      var id = this.id.split('_')[1];
      $('#update_' + id).show();
      $(this).parent().hide();
    });
  }
});

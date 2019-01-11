
$(document).on('turbolinks:load', function() {

  $('.slide').on("change", function() {
    var totChance = 0;
    [].forEach.call(  document.querySelectorAll('.slide')  , function(elm){
      totChance = totChance + parseInt(elm.value);
      console.log(totChance);
    });
    [].forEach.call(  document.querySelectorAll('.slide')  , function(elm){
      var formattedChance = Math.round(1000*elm.value/totChance)/10+"%";
      if (elm.value/totChance < .001 && elm.value/totChance > 0) {
      formattedChance = "<0.1%";
    };

    $("." + elm.id + "Label").html(formattedChance);
    });

    //var humSlide = $("#humanSlider");
    //humSlide.value = humSlide +1000 -totChance;
  });

});
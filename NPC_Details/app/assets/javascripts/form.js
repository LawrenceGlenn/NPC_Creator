
    $(document).on('turbolinks:load', function() {

       $('.slide').on("change", function() {
        console.log(this.id + "Label");
            var val = ($(this).val())/10;

              $("." + this.id + "Label").html(val+"%");
       });
    });
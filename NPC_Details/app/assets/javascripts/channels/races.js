$(function() {

   if ($("select#npc_race_id").val() == "") {
    $("select#eyecolor").empty();
    var row = "<option value=\"" + "" + "\">" + "Random" + "</option>";
    $(row).appendTo("select#eyecolor");
   }
   $("select#npc_race_id").change(function() {
    var id_value_string = $(this).val();
    if (id_value_string == "") {
     $("select#eyecolor").empty();
     var row = "<option value=\"" + "" + "\">" + "Random" + "</option>";
     $(row).appendTo("select#eyecolor");
    } else {
     // Send the request and update course dropdown
     $.ajax({
      dataType: "json",
      cache: false,
      url: '/get_races_by_selection/' + id_value_string,
      timeout: 5000,
      error: function(XMLHttpRequest, errorTextStatus, error) {
       alert("Failed to submit : " + errorTextStatus + " ;" + error);
      },
      success: function(data) {
       // Clear all options from course select
       $("select#eyecolor").empty();
       //put in a empty default line
       var row = "<option value=\"" + "" + "\">" + "Random" + "</option>";
       $(row).appendTo("select#eyecolor");
       // Fill course select
       $.each(data[0].eyeColor, function(i, j) {
        row = "<option value=\"" + i + "\">" + i + "</option>";
        $(row).appendTo("select#eyecolor");
       });
      }
     });
    }
   });

  });
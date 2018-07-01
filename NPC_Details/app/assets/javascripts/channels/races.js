document.addEventListener("turbolinks:load", function() {
  $(function() {

    resetDropdownFromRace();
   
   $("select#npc_race_id").change( function() {
    updateDropdownsFromRace("select#eyecolor","eyeColor");

  });


   function resetDropdownFromRace(){
    if ($("select#npc_race_id").val() == "") {
      $("select#eyecolor").empty();
      var row = "<option value=\"" + "" + "\">" + "Random" + "</option>";
      $(row).appendTo("select#eyecolor");
   }}


   function updateDropdownsFromRace(dropdownName, valueName){
    var id_value_string = $("select#npc_race_id").val();
    if (id_value_string == "") {
    resetDropdown();
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
       $(dropdownName).empty();
       //put in a empty default line
       var row = "<option value=\"" + "" + "\">" + "Random" + "</option>";
       $(row).appendTo(dropdownName);
       // Fill course select
       $.each(data[0][valueName], function(i, j) {
        row = "<option value=\"" + i + "\">" + i + "</option>";
        $(row).appendTo(dropdownName);
       });
      }
     });
    }
   }



  });



});
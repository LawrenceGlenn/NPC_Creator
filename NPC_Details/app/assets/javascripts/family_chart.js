$('document').ready(function() {
  var familyList = $('.family_info').data('familyList');

  var formattedLinks = formatLinks;

  //set dimensions for the canvis the graph will be on
  var svgWidth = 1000, svgHeight = 1000;
  var margin = { top: 20, right: 20, bottom: 20, left: 20 };
  var width = svgWidth - margin.left - margin.right;
  var height = svgHeight - margin.top - margin.bottom;

  var svg = d3.select("svg.familyChart")
    .attr("width", svgWidth)
    .attr("height", svgHeight)
    .attr("transform", "translate("+((margin.right-margin.left)/2)+","+"0)");

  // move the drawing area over by margin to make room for the axis
  var g = svg.append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

  var force = d3.layout.force()
    .size([width,height])
    .nodes(familyList)
    .links([{},{}]);




  function formatLinks() {
    var output = [];
    familyList.forEach( function(npc) {
      output.push({source: npc, target: npc.children});
    });
    return output;
  }
});
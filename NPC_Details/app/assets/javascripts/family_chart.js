$(document).on('turbolinks:load', function() {
  var familyList = $('.family_info').data('families');
  var formattedLinks = formatLinks();
  var formattedNodes = formatNodes();
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


svg.append("svg:defs").append("svg:marker")
    .attr("id", "arrow")
    .attr("viewBox", "0 -5 10 10")
    .attr('refX', -20)//so that it comes towards the center.
    .attr("markerWidth", 5)
    .attr("markerHeight", 5)
    .attr("orient", "auto")
  .append("svg:path")
    .attr("d", "M0,-5L10,0L0,5");

  //set up the simulation 
  //nodes only for now 
  var simulation = d3.forceSimulation()
    .nodes(formattedNodes);

  simulation
    .force("charge_force", d3.forceManyBody())
    .force("center_force", d3.forceCenter(width / 2, height / 2));

    var node = svg.append("g")
      .attr("class", "nodes")
      .selectAll("circle")
      .data(formattedNodes)
      .enter()
      .append("circle")
        .attr("r", 5)
        .attr("fill", "red");

  //Create the link force 
  //We need the id accessor to use named sources and targets 
  var link_force =  d3.forceLink(formattedLinks)
    .id(function(d) { return d.id; });
                        
  simulation.force("links",link_force);   

  //draw lines for the links 
  var link = svg.append("g")
    .attr("class", "links")
    .selectAll("line")
    .data(formattedLinks)
    .enter().append("line")
      .attr("stroke-width", 2)
      .attr("stroke", "gray")
      .attr('marker-start', function(d) { return "url(#arrow)"})//attach the arrow from defs
      .attr("opacity", 0.6);      


  simulation.on("tick", tickActions );
  
  // The complete tickActions function    
  function tickActions() {
    //update circle positions each tick of the simulation 
    node
      .attr("cx", function(d) { return d.x; })
      .attr("cy", function(d) { return d.y; });
        
    //update link positions 
    //simply tells one end of the line to follow one node around
    //and the other end of the line to follow the other node around
    link
      .attr("x1", function(d) { return d.source.x; })
      .attr("y1", function(d) { return d.source.y; })
      .attr("x2", function(d) { return d.target.x; })
      .attr("y2", function(d) { return d.target.y; })
      .attr( "d", function(d) {"M" + d.source.x + "," + d.source.y + ", " + d.target.x + "," + d.target.y});

  }                    

  function formatLinks() {
    var output = [];
    familyList.forEach ( function(family) {
      family['children'].forEach ( function(child) {
        output.push({source: family['parent'].id, target: child.id});
      });
    });
    return output;
  }

  function formatNodes() {
    var output = [];
    familyList.forEach ( function(family) {
      output.push({id: family['parent'].id});
    });
    return output;
  }
});
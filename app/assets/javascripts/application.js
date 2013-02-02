// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

 
      //   var map;
 
      // function initialize() {
       
      // /*
      // Basic Setup
      // */
       
      // var latLng = new google.maps.LatLng(53.3350,-6.2292);
       
      // var myOptions = {
      // panControl: false,
      // zoomControl: false,
      // mapTypeControl: false,
      // scaleControl: false,
      // streetViewControl: false,
      // overviewMapControl: false,
      // draggable: true,
      // disableDoubleClickZoom: true, //disable zooming
      // scrollwheel: false,
      // zoom: 18,
      // center: latLng,
      // mapTypeId: google.maps.MapTypeId.HYBRID // ROADMAP; SATELLITE; HYBRID; TERRAIN;
      // };
       
      // map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
       
      // /*
      // MARKER
      // */
       
      // /*
      // //for custom image
      // var image = 'yourflag.png';
      // icon: image
       
      // //for animation marker drop
      // animation: google.maps.Animation.DROP
       
      // */
      // // var markerlatlng = new google.maps.LatLng(53.3608,-6.2513);
       
      // // var marker = new google.maps.Marker({
      // // position: markerlatlng,
      // // title:"Hello World!"
      // // });
       
      // // marker.setMap(map);
       
      
      // INFO Bubble
      
       
      // myInfoWindowOptions = {
      // content: '<div class="info-window-content"><h4>Hello! I am a Google Map custom marker</h4></div>',
      // maxWidth: 275
      // };
       
      // infoWindow = new google.maps.InfoWindow(myInfoWindowOptions);
       
      // google.maps.event.addListener(marker, 'click', function() {
      // infoWindow.open(map,marker);
      // });
       
      // google.maps.event.addListener(marker, 'dragstart', function(){
      // infoWindow.close();
      // });
       
      // infoWindow.open(map,marker);
      //  // 
       
      // }//end initialize
       
       
      // /*
      // onLoad
      // */
      // $(function(){
      // initialize();
       
      // $("#zo").click(function(event){
      // event.preventDefault();
      // map.setZoom( map.getZoom()-1 );
      // //map.setCenter(new google.maps.LatLng(9.825183,15.1975769));
      // });
       
      // $("#zi").click(function(event){
      // event.preventDefault();
      // map.setZoom( map.getZoom()+1 );
      // });
       
      // $("#gt").click(function(event){
      // event.preventDefault();
      // var lt1 = new google.maps.LatLng(53.3428, -6.2661);
      // //map.setZoom( 16 );
      // map.panTo(lt1);
      // });
       
      // });
      
			
		


   function initialize()
            {
            var mapProp = {
              center:new google.maps.LatLng(52.6742,-8.6424),
              zoom:18,
              mapTypeId:google.maps.MapTypeId.HYBRID
              };
            var map=new google.maps.Map(document.getElementById("map_canvas")
              ,mapProp);
            }
      
      
    
    google.maps.event.addDomListener(window, 'load', initialize);




   $(function(){
        $("#event_date").datepicker({dateFormat: "dd/mm/yy"});
      });

    $(document).ready(function(){

      var addresspickerMap = $("#event_address" ).addresspicker({
       elements: {
          map:      "#map",
          lat:      "#event_latitude",
          lng:      "#event_longitude",
          locality: '#event_locality',
          country:  '#event_country'
       }
      });
      var gmarker = addresspickerMap.addresspicker( "marker");
      gmarker.setVisible(true);
      addresspickerMap.addresspicker( "updatePosition");

      });     


      $(function() {
        var availableTags = [
        "sport",
        "music",
        "comedy",
        "people",
        "tv",
        "entertainment",
       
        ];
        $( "#event_category" ).autocomplete({
        source: availableTags
        });
        });
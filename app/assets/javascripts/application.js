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
      
			
	
//google maps for home page

   function initialize()
            {

          

            var myOptions = {
                zoom: 3,

                zoomControl: true,
                zoomControlOptions: {
                    style: google.maps.ZoomControlStyle.MEDIUM,
                    position: google.maps.ControlPosition.RIGHT_CENTER
                },

                scaleControl: true,
                panControl: true,
                navigationControl: false,              
                mapTypeId:google.maps.MapTypeId.HYBRID,
                streetViewControl: false,
                center: new google.maps.LatLng(52.6742,-8.6424)
            }

            var map = new google.maps.Map(document.getElementById("map_canvas")
              ,myOptions);

            $("#zo").click(function(event){
              event.preventDefault();
              map.setZoom( map.getZoom()-1 );
              //map.setCenter(new google.maps.LatLng(9.825183,15.1975769));
              });
               
              $("#zi").click(function(event){
              event.preventDefault();
              map.setZoom( map.getZoom()+1 );
              });
               
              $("#gt").click(function(event){
              event.preventDefault();
              var lt1 = new google.maps.LatLng(53.3428, -6.2661);
              map.setZoom( 16 );
              map.panTo(lt1);
              });


            var json = [
          {"id":101,"latitude":48.85465,"longitude":2.76,"locality":"Mont\u00e9vrain","date":"2013-02-08","url":""},
          {"id":100,"latitude":53.12,"longitude":-6.453,"locality":"new york","date":null,"url":"http://www.ercrugby.com/"},
          {"id":90,"latitude":63.5,"longitude":-6.83,"locality":"melbourne","date":null,"url":"http://www.ercrugby.com/"},
          {"id":80,"latitude":52.8,"longitude":-8.83,"locality":"wellington","date":null,"url":"http://www.ercrugby.com/"},
          {"id":70,"latitude":53.8,"longitude":-6.83,"locality":"toulouse","date":null,"url":"http://www.ercrugby.com/"}

          ] 
    

          var infoWindow = new google.maps.InfoWindow();

          for (var i = 0, length = json.length; i < length; i++) {
              var data = json[i],
                latLng = new google.maps.LatLng(data.latitude, data.longitude); 

          // Creating a marker and putting it on the map
          var marker = new google.maps.Marker({
            position: latLng,
            map: map,
            title: data.title
          });
        

          (function(marker, data) {

            // Attaching a click event to the current marker
            google.maps.event.addListener(marker, "click", function(e) {
              infoWindow.setContent(data.locality);
              infoWindow.open(map, marker);
            });

          })(marker, data);
        }

      }

      
      
      
    
    google.maps.event.addDomListener(window, 'load', initialize);


//datepicker js for event form

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

//drop down list  for categories on event form
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



//add markers to home page map

  

    
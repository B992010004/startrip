


var map;
    function initMap() {
      map = new google.maps.Map(document.getElementById('map'), {
        zoom: 4,
        center: {lat: 24.370364, lng: 121.6066508}
      });
     

      // NOTE: This uses cross-domain XHR, and may not work on older browsers.
     map.data.loadGeoJson("json/Scenic_spot_C_f1.json")
      
      }

			$(".btn-outline-primary.switch").click(
				function(){
				 
						$(".aside").toggle();
						$(".aside1").toggle();}
				
				
		);
		$("#btnday1").click(
			function(){
				$(".day1").fadeToggle(300,0);
		
			}
		)
		
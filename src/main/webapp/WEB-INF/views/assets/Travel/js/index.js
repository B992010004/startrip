


var map;
    function initMap() {
      map = new google.maps.Map(document.getElementById('map'), {
        zoom: 4,
        center: {lat: 24.370364, lng: 121.6066508}
      });
     

      // NOTE: This uses cross-domain XHR, and may not work on older browsers.
     map.data.loadGeoJson("json/Scenic_spot_C_f1.json")
      
      }

			$("#switch").click( 
				function(){
				 			
							$(".aside").toggle(
									function(){
										
								$("#switch").text("旅遊文章")	
									}
									)
						
				
							$(".aside1").toggle(
									function(){$("#switch").text("行程清單")	
									}	
							)
				}
				
		);
			$("#goback").click(
					function(){
				history.go("http://localhost:8080/startrip/");}
			);
			
		$("#btnday1").click(
			function(){
				$(".day1").fadeToggle(300,0);
		
			}
		)
		
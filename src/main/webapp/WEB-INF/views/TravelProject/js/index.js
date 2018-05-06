
/*   表單隨者螢幕移動*/
$(function() {
	$(window).scroll(function() {
			if ($(this).scrollTop() > 0)  {          /* 要滑動到選單的距離 */
		 $('.btn-outline-primary.switch').addClass('navFixedSwitch');   /* 幫選單加上固定效果 */
	} else {
		$('.btn-outline-primary.switch').removeClass('navFixedSwitch'); /* 移除選單固定效果 */
	}

	if ($(this).scrollTop() > 0)  {          /* 要滑動到選單的距離 */
		 $('#tripContext').addClass('navFixedTop');   /* 幫選單加上固定效果 */
	} else {
		$('#tripContext').removeClass('navFixedTop'); /* 移除選單固定效果 */
	}
	if ($(this).scrollTop() > 0)  {          /* 要滑動到選單的距離 */
		 $('.foot').addClass('navFixedBottom');   /* 幫選單加上固定效果 */
	} else {
		$('.foot').removeClass('navFixedBottom'); /* 移除選單固定效果 */
	}
});
});

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
		
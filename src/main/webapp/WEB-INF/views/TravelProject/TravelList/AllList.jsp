<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="/startrip/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="/startrip/assets/css/animate.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/startrip/assets/css/bootstrap/botton.css" type="text/css" />
    <link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/startrip/assets/css/select2.css">
    <link rel="stylesheet" href="/startrip/assets/css/helpers.css">
    <link rel="stylesheet" href="/startrip/assets/css/style.css">



<link href="https://fonts.googleapis.com/css?family=Roboto:100i,300,400,500,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Allura" rel="stylesheet">
<link rel="stylesheet" href="/startrip/assets/Travel/css/style.css">

<!-- <link rel="stylesheet" href="/startrip/assets/Travel/css/lightbox.css"> -->
</head>
<body> 

	<div class="nav" >
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>
	<section class="probootstrap_section bg-dark"  id="section-contact">
	</section>

	<div class="main" >
		<div class="switch">
		    <button id="switch"type="button" class="btn btn-outline-primary switch">切換</button>
		     <a id="goback"  type="button" href="/startrip/" class="btn btn-outline-primary switch">返回</a>
		</div>
    
    <div class="aside1">
          <div class="listcard" id="views">
			<div id="view">
	          	<h5 class="card-title">card title</h5>
	            <div class="card" style="width: 18rem;">
	                <img class="card-img-top"  alt="card image cap">
	                <div class="card-body">
	                </div>
	            </div>
            </div>
    	</div>
	</div>
	
    <div class="aside">
        <div id="tripcontext">
            <h3 id="travelname">tripname</h3>
            <div class="timestyle col-5">
                <span id ="startdate" class="time contex">2015/02/08</span>
                <br>  
                <span style="margin:50px;">|</span>
                <br>
                <span id="enddate"  class="time contex">2015/02/13</span>
            </div>
        </div>
    <div class ="triplist">
		<div class="timeline" >
		
		  <div class="container1 right1" >
		  	<div class="contentDay">
		  		<h2 class="title">2017</h2>
		  	</div>
		  </div>
		  
		  <div class="container1 right">
		    <div class="content">
		      <h2 class=listtitle>2017</h2>
		      <p  class=detail>body</p>
		    </div>
		  </div>
		  
		  <div class="container1 right">
			<div class="content">
			      <h2>2016</h2>
			      <p>body</p>
			</div>
		 </div>
		</div>
	</div>
	
    <div class="foot ">
        <div class="foot main">
        <center><button id=insertday type="button" class="btn btn-outline-primary fmain">+新增天數</button>
        </center>
        
        </div>
    </div>


 </div>  


	<div class="maincontext">
        <div class="search-container">
        </div>
	    <input id="pac-input" class="controls" type="text" placeholder="search box">
	    <div id="map"></div>
	   <div id="viewlist">
	   
	   <div class="card" id="viewmain" >
		  <img class="card-img-top" src="..." alt="card image cap">
		  <div class="card-body">
		    <h5 class="card-title">card title</h5>
		    <p class="card-text">some quick example text to build on the card title and make up the bulk of the card's content.</p>
		  </div>
		  <ul class="list-group list-group-flush">
		    <li class="list-group-item">cras justo odio</li>
		    <li class="list-group-item">dapibus ac facilisis in</li>
		    <li class="list-group-item">vestibulum at eros</li>
		  </ul>
		  <div class="card-body">
		    <a href="#" class="card-link">card link</a>
		    <a href="#" class="card-link">another link</a>
		  </div>
		</div>
	   
	   
	   
	   </div>
    </div>

	<script src="/startrip/assets/js/jquery.min.js"></script>
    <script src="/startrip/assets/js/popper.min.js"></script>
    <script src="/startrip/assets/js/bootstrap.min.js"></script>
    <script src="/startrip/assets/js/owl.carousel.min.js"></script>
    <script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
    <script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
    <script src="/startrip/assets/js/select2.min.js"></script>
    <script src="/startrip/assets/js/main.js"></script>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
    <script src='https://cdn.jsdelivr.net/scrollreveal.js/3.3.1/scrollreveal.min.js'></script>
    <script src="/startrip/assets/Travel/js/index.js"></script>
<!--     <script src="/startrip/assets/Travel/js/lightbox.js"></script> -->
<script>
$(function(e){
	searchDays();
	searchList();
	searchView();
	
	
	$('#'+e.target.id).hover(function(){
		var del =$('<img class="iconImg" src = http://localhost:8080/startrip/assets/Travel/img/close2.png>');
		
	})
	
})



function changetype(){
var k = event.target.id;
	
	$('#'+k).parent().parent().find('.right').slideToggle();
	
}








var add={}

$('#insertday').on('click',function(){
	
	
	add.mail="${LoginOK.mail}"

		$.ajax({
			url:"/startrip/travel/add/day",
			type:"GET",
			dataType:"json",
			data:add,
			contentType: "application/json; charset=utf-8",
			success:function(data){
				console.log(data.travelDays)
				searchDays();
				searchList();
			}
		})
	
})
</script>
<script>

//-----------------------------------
//行程天數生成
function searchDays(){
	var value = {};
	value.mail="${LoginOK.mail}";
	$.ajax({
		url:"/startrip/travel/id",
		type:"GET",
		dataType:"json",
		data:value,
		contentType: "application/json; charset=utf-8",
		success:function(data){
// 			  <div id="tripcontext">
// 	            <h3 id="travelName">tripname</h3>
// 	            <div class="timestyle col-5">
// 	                <span id ="startDate" class="time contex">2015/02/08</span>
// 	                <br>  
// 	                <span style="margin:50px;">|</span>
// 	                <br>
// 	                <span id="endDate"  class="time contex">2015/02/13</span>
// 	            </div>
// 	        </div>
			$('#tripcontext').empty();
			var travelNmae = $("<h3 id='travelName'>"+data.Name.travelName+"</h3>");
			var col =$("<div class='timestyle col-3'></div>");
			var starttime = $('<span id ="startDate" class="time contex">'+data.startDate+'</span>')
			var line=$("<div style='margin-left:25px;'>|</div>");
			var endtime=$("<span id='endDate'  class='time contex'>"+data.endDate+"</span>")
			col.html([starttime,line,endtime]);
			$('#tripcontext').html([travelNmae,col])
// 		<div class="container1 right1">
// 		  	<div class="contentDay">
// 		  		<h2 class="title">2017</h2>
// 		  	</div>
// 		 </div>
		//清空清單 並建立清單項目
		$('.timeline').empty();
		console.log("天數"+data.Name.travelDays)
			var docFrag = $(document.createDocumentFragment());
			var main =$(".timeline");
			for( var i = 1,day=data.Name.travelDays;i<=day;i++){
				//---天數新增
				var title=$('<h2 class="title" onclick="changetype()" id="day'+i+'" >Day'+i+'</h2>');
				var daycontent=$('<div class="contentDay"></div>');
				var right1 = $("<div class='container1 right1 ' id='daybody"+i+"' ></div>");
 
					daycontent.html(title);
					right1.html(daycontent);
				
					docFrag.append(right1);
			}
				main.append(docFrag);
			
		}
		
	})
} 
//------------------------------------------
//查詢行程景點

//  <div class="container1 right">
// 		    <div class="content">
// 		      <h2 class=title>2017</h2>
// 		      <p  class=detail>body</p>
// 		    </div>
// 		  </div>
function searchList(){
	var travel={};
	travel.mail="${LoginOK.mail}"
	$.ajax({
		url:"/startrip/list/travelId",
		type:"GET",
		dataType:"json",
		data:travel,
		contentType: "application/json; charset=utf-8",
		success: function(data){
			var len = data.length;
			console.log(len)
			for(var i = 0;i<len;i++){
				var right=$('<div class="container1 right"  id="dayTile'+i+'"> </div>')
				var content = $('<div class="content"></div>')
				var title = $('<h2 class="listtitle">'+data[i].viewName+'</h2>');
				var start = $('<div class="start">'+data[i].startTime+'</div>');
				var end = $('<div class="end">'+data[i].endTime+'</div>');
				content.append([title,start,end])
				right.append(content)
				var day=data[i].tripday
				
				var tag = "daybody"+day
				console.log(tag)
				$(".timeline").find("#"+tag).append(right);
				} 
			console.log(data)
		}
			
		
	})
}
//-----------------------------------------------------
//推薦景點
function searchView(){
	var value = {};
	value.address= '陽明山';
	$.ajax({
		url:"/startrip/TravelView/place",
		type:"GET",
		dataType:"json",
		data:value,
		contentType: "application/json; charset=UTF-8",
		success:function(data){
// 			<div id="view">
// 				<h5 class="card-title">Card title</h5>
//             <div class="card" style="width: 18rem;">
//                 <img class="card-img-top" src="..." alt="Card image cap">
//                 <div class="card-body">
//                 </div>
//             </div>
// 			</div>
				$('#views').empty();
		console.log(data[0])
		 console.log(data[1])
			var length = data.length;
				var docFrag = $(document.createDocumentFragment());
				
			for(var i=0;i<length;i++){
				var split =data[i].imgName.split(";");
				var img = $('<img class="card-img-top hover-shadow"  alt="Card image cap">').attr("src",'/startrip/showImage/'+split[0]);
				var body = $('<div class="card-body view"></div>');
				var del = $('<img class="iconImg" src = http://localhost:8080/startrip/assets/Travel/img/close2.png>');
// 					del.css({"margin-left":"2em","float":"right"})
				var insert = $('<img class="iconImg" src = http://localhost:8080/startrip/assets/Travel/img/interface.png>');
// 					insert.css({"margin-left":"2em","float":"right"})
					body.html([insert,del]);
				var card = $('<div class="card" style="width: 18rem;"></div>');
				var title = $('<h5 class="card-title"><strong>'+data[i].viewName+'</strong></h5>');
				var view = $('<div class="view"></div>');
				card.html([img,body])

				view.html([title,card])
				docFrag.html(view);
			}
			$('#views').html(docFrag);
		} 
	})
}



</script>
 <script>
        // This example requires the Places library. Include the libraries=places
        // parameter when you first load the API. For example:
        // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
      
        var map;
        var infowindow;
  //所在位置--------------------------------
        

  //------------------------------------
        // var InputName=document.getElementById('view');//由input輸出
      
      
      function initMap() {
   

      var pyrmont = {lat:25.0368706, lng: 121.543766};
      //建立Map,資訊視窗,服務
      map = new google.maps.Map(document.getElementById('map'), {
      center: pyrmont,
      zoom: 15
       });
      infowindow = new google.maps.InfoWindow();
      service = new google.maps.places.PlacesService(map);
  
      var marker = new google.maps.Marker({
          position: pyrmont,
          map: map,
          title: '資策會'})
       
    
  //服務搜尋promont 範圍50000----------------------------------------------------
        
          // service.nearbySearch({
          //   location: pyrmont,
          //   radius: 50000       
          // }, callback);
//-----------------------------------------------
  // Create the search box and link it to the UI element.
  var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        // Bias the SearchBox results towards current map's viewport.
        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
        });

        var markers = [];
        // Listen for the event fired when the user selects a prediction and retrieve
        // more details for that place.
        searchBox.addListener('places_changed', function() {
          var places = searchBox.getPlaces();

          if (places.length == 0) {
            return;
          }

          // Clear out the old markers.
          markers.forEach(function(marker) {
            marker.setMap(null);
          });
          markers = [];

          // For each place, get the icon, name and location.
          var bounds = new google.maps.LatLngBounds();
          places.forEach(function(place,index) {
            if (!place.geometry) {
              console.log("Returned place contains no geometry");
              return;
            }
            var icon = {
              url: place.icon,
              size: new google.maps.Size(71, 71),
              //mark位置
              origin: new google.maps.Point(-25, 0),
              anchor: new google.maps.Point(17, 34),
              scaledSize: new google.maps.Size(25, 25)
            };

            // Create a marker for each place.
          
            markers.push(
              new google.maps.Marker({
                map: map,
                icon: icon,
                title: place.name,
                position: place.geometry.location
              }));
          google.maps.event.addListener(markers[index], 'click', function() {
                    infowindow.setContent('<div><strong>' + place.name + '</strong><br>' 
                  + place.formatted_phone_number+'<br>'
                  +place.rating +'<br>'
                  +place.website  +'<br>'
                  + place.formatted_address + '</div>'
                  +"<img src="+place.photos[0].getUrl({'maxWidth': 100, 'maxHeight': 100})+'>');
                    infowindow.open(map, this);
              });



            if (place.geometry.viewport) {
              // Only geocodes have viewport.
              bounds.union(place.geometry.viewport);
            } else {
              bounds.extend(place.geometry.location);
            }

           
          });

          
          map.fitBounds(bounds);
        });
//------------------------------------------

        }

      
       
        
       
        
        //(回傳直,狀態)
        function callback(results, status) {
          if (status === google.maps.places.PlacesServiceStatus.OK) {
            for (var i = 0; i < results.length; i++) {
              // console.log(results[i].place_id);
              var id = results[i].place_id;
              var service = new google.maps.places.PlacesService(map);
             //--------------------------------------------

             //------------------------------ 
              service.getDetails({placeId:id},function(place,status){
                  if (status === google.maps.places.PlacesServiceStatus.OK) {
              var photos=place.photos;
  
              var marker = new google.maps.Marker({
              map: map,
              position: place.geometry.location,
             
              });

              //-----------------------------
              google.maps.event.addListener(marker, 'click', function() {
  
              infowindow.setContent('<div><strong>' + place.name + '</strong><br>' 
              + place.formatted_phone_number+'<br>'
              +place.rating +'<br>'
              +place.website  +'<br>'
              + place.formatted_address + '</div>'
              +"<img src="+place.photos[0].getUrl({'maxWidth': 100, 'maxHeight': 100})+'>');
                infowindow.open(map, this);
              });
              }
              });
  
              
            }
          }
        }
       
      </script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&libraries=places&callback=initMap&language=zh-tw&sensor=false" async defer></script>
</body>
</html>
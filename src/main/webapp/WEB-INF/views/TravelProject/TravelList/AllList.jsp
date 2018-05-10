<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link href="https://fonts.googleapis.com/css?family=Roboto:100i,300,400,500,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Allura" rel="stylesheet">
<link rel="stylesheet" href="/startrip/assets/Travel/css/style.css">
<!-- <link rel="stylesheet" href="/startrip/assets/Travel/css/lightbox.css"> -->
</head>
<body>

<!-- 	<div class="nav"> -->
<%-- 		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" /> --%>
<!-- 	</div> -->
<!-- 	<section class="probootstrap_section bg-dark" id="section-contact"> -->
<!-- 	</section> -->

<div class="main"> 
	<div class="switch">
	    <button type="button" class="btn btn-outline-primary switch">切換</button>
	</div>
    
    <div class="aside1">
          <div class="listcard" id="views">
			<div id="view">
	          	<h5 class="card-title">Card title</h5>
	            <div class="card" style="width: 18rem;">
	                <img class="card-img-top"  alt="Card image cap">
	                <div class="card-body">
	                </div>
	            </div>
            </div>
    	</div>
	</div>
	
    <div class="aside">
        <div id="tripContext">
            <h3 id="travelName">tripname</h3>
            <div class="timestyle col-5">
                <span id ="startDate" class="time contex">2015/02/08</span>
                <br>  
                <span style="margin:50px;">|</span>
                <br>
                <span id="endDate"  class="time contex">2015/02/13</span>
            </div>
        </div>
    <div class ="triplist">
    <section id="travelList" class="timeline">
        <div class="timeline-item day">
            <div class="timeline-img"></div>
            <div class="timeline-content1 " >
            	<h4>Day1</h4>
            </div>
        </div>   
            
        <div class="day1">
            <div class="timeline-item" >
            <div class="timeline-img" ></div>
            <div class="timeline-content timeline-card " >

                <div class="timeline-img-header">
                    <h2>Card Title</h2>
                </div>
                <div class="date">08:30</div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsa ratione omnis alias cupiditate saepe atque totam aperiam sed nulla voluptatem recusandae dolor, nostrum excepturi amet in dolores. Alias, ullam.</p>
                <a class="bnt-more" href="javascript:void(0)">More</a>
            </div>
            </div>   
       
        <div class="timeline-item">
            <div class="timeline-img" ></div>
            <div class="timeline-content timeline-card ">

                <div class="timeline-img-header">
                <h2>Card Title</h2>
                </div>
                <div class="date">25 MAY 2016</div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsa ratione omnis alias cupiditate saepe atque totam aperiam sed nulla voluptatem recusandae dolor, nostrum excepturi amet in dolores. Alias, ullam.</p>
            <a class="bnt-more" href="javascript:void(0)">More</a>
            </div>
        </div>   
        
    
      
        <div class="timeline-item" >
        <div class="timeline-img"></div>
            <div class="timeline-content timeline-card ">
                <div class="timeline-img-header">
                <h2>Card Title</h2>
                </div>
        	<div class="date">10 JULY 2016</div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsa ratione omnis alias cupiditate saepe atque totam aperiam sed nulla voluptatem recusandae dolor, nostrum excepturi amet in dolores. Alias, ullam.</p>
            <a class="bnt-more" href="javascript:void(0)">More</a>
            </div>
        </div>   
 
    <div class="timeline-item">
        <div class="timeline-img"></div>
        <div class="timeline-content timeline-card ">
        	<div class="timeline-img-header">
          	<h2>Card Title</h2>
        	</div>
        	<div class="date">30 JULY 2016</div>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsa ratione omnis alias cupiditate saepe atque totam aperiam sed nulla voluptatem recusandae dolor, nostrum excepturi amet in dolores. Alias, ullam.</p>
          <a class="bnt-more" href="javascript:void(0)">More</a>
        </div>
    </div>  
</div> 
    
    <div class="timeline-item">
        <div class="timeline-img"></div>
        <div class="timeline-content timeline-card ">
        	<div class="timeline-img-header">
          	<h2>Card Title</h2>
        	</div>
        	<div class="date">19 AUG 2016</div>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsa ratione omnis alias cupiditate saepe atque totam aperiam sed nulla voluptatem recusandae dolor, nostrum excepturi amet in dolores. Alias, ullam.</p>
          <a class="bnt-more" href="javascript:void(0)">More</a>
        </div>
    </div>  
      
    
</div>  
</section>
    <div class="foot ">
        <div class="foot main"><center><button type="button" class="btn btn-outline-primary fmain">+新增天數</button>
        </center>
        
        </div>
    </div>
</div>

 </div>  


	<div class="maincontext">
        <div class="search-container">
        </div>
	    <input id="pac-input" class="controls" type="text" placeholder="Search Box">
	    <div id="map"></div>
	   <div id="viewList">
	   
	   <div class="card" id="viewMain" >
		  <img class="card-img-top" src="..." alt="Card image cap">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		  </div>
		  <ul class="list-group list-group-flush">
		    <li class="list-group-item">Cras justo odio</li>
		    <li class="list-group-item">Dapibus ac facilisis in</li>
		    <li class="list-group-item">Vestibulum at eros</li>
		  </ul>
		  <div class="card-body">
		    <a href="#" class="card-link">Card link</a>
		    <a href="#" class="card-link">Another link</a>
		  </div>
		</div>
	   
	   
	   
	   </div>
    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
    <script src='https://cdn.jsdelivr.net/scrollreveal.js/3.3.1/scrollreveal.min.js'></script>
    <script src="/startrip/assets/Travel/js/index.js"></script>
<!--     <script src="/startrip/assets/Travel/js/lightbox.js"></script> -->
<script>
// $(document).ready(function(){
// 	$('.timeline-item.day').empty();
// 	$('.timeline-content.timeline-card').empty();
// });
//-----------------------------------
//行程天數生成
$(function(){
	var value = {};
	value.id=2;
	$.ajax({
		url:"/startrip/travel/id",
		type:"GET",
		dataType:"json",
		data:value,
		contentType: "application/json; charset=utf-8",
		success:function(data){
// 			  <div id="tripContext">
// 	            <h3 id="travelName">tripname</h3>
// 	            <div class="timestyle col-5">
// 	                <span id ="startDate" class="time contex">2015/02/08</span>
// 	                <br>  
// 	                <span style="margin:50px;">|</span>
// 	                <br>
// 	                <span id="endDate"  class="time contex">2015/02/13</span>
// 	            </div>
// 	        </div>
			$('#tripContext').empty();
			var travelNmae = $("<h3 id='travelName'>"+data.Name.travelName+"</h3>");
			var col =$("<div class='timestyle col-5'></div>");
			var starttime = $('<span id ="startDate" class="time contex">'+data.startDate+'</span><br>')
			var line=$("<span style='margin:50px;''>|</span><br>");
			var endtime=$("<span id='endDate'  class='time contex'>"+data.endDate+"</span>")
			col.html([starttime,line,endtime]);
			$('#tripContext').html([travelNmae,col])
// 		$('#travelName').text(data.Name.travelName);
// 		$('#startDate').text(data.startDate);
// 		$('#endDate').text(data.endDate);
		
		// 		<div class="timeline-item day">
		//         <div class="timeline-img"></div>
		//         <div class="timeline-content1 " >
		//         	<h4>Day1</h4>
		//         </div>
		//     </div>   
		//清空清單 並建立清單項目
	$('.timeline-item.day').empty();
	$('.timeline-content.timeline-card').empty();
			var docFrag = $(document.createDocumentFragment());
			
			for( i = 0;i<=data.Name.travelDays;i++){
				//---天數新增
				var day=$("<div class='timeline-item day' id='daybody"+(i+1)+"'></div>");
				var listImg=$("<div class='timeline-img'></div>");
				var titlecontent=$("<div class='timeline-content1' id='Day"+(i+1)+"'></div>");
				var title=$("<h4 class='daytitle' >Day"+(i+1)+"</h4>");
// 				var main =$('<div class="listmain" >i</div>');
// 				var main =$('<div class="listmain" >i</div>');
				titlecontent.html([title]);
				day.html([listImg,titlecontent]);
				docFrag.append(day);
			}
				$("#travelList").append(docFrag);
			
		}
		
	})
	 
//------------------------------------------
//查詢行程景點
	var travel={};
	travel.id=1
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
				var card=$('<div class="card"></div>')
				var body = $('<div class="card-body"></div>')
				var title = $('<div class="card-header listTitle">'+data[i].viewName+'</div>');
				var start = $('<div class="start">'+data[i].startTime+'</div>');
				var end = $('<div class="end">'+data[i].endTime+'</div>');
				body.append([title,start,end])
				card.append(body)
				var day=data[i].tripday
				
				
				var tag = "daybody"+day
				
				$("#travelList").find("#"+tag).append(card);
				}
			console.log(data)
		}
			
		
	})
//-----------------------------------------------------
//推薦景點
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
					del.css({"margin-left":"2em","float":"right"})
				var insert = $('<img class="iconImg" src = http://localhost:8080/startrip/assets/Travel/img/interface.png>');
					insert.css({"margin-left":"2em","float":"right"})
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
})

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
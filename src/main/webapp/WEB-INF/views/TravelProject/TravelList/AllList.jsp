<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
<link rel="stylesheet" href="/startrip/assets/Travel/css/timepicker.min.css">

<!-- <link rel="stylesheet" href="/startrip/assets/Travel/css/lightbox.css"> -->
</head>
<body> 
<c:if test="${ empty LoginOK }">
			<a class="nav-link" href="" data-toggle="modal" data-target=".bd-example-modal-lg">登入</a>
	</c:if>
	<div class="nav" >
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>
	<section class="probootstrap_section bg-dark"  id="section-contact">
	</section>

	<div class="main" >
		<div class="switch">
		    <button id="switch"type="button" class="btn btn-outline-primary switch">切換</button>
		     <a id="goback"  type="button" href="/startrip/TravelMain" class="btn btn-outline-primary switch">返回</a>
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
		<div class="viewDetail card" style="width: 18rem;">
	<div class="card-title">
	<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button></div>
    <h5 class="card-title">title</h5>
<img class="card-img-top" >
    
      <ul class="list-group list-group-flush">
<li class="list-group-item">Cras justo odio</li><li class="list-group-item">Cras justo odio</li>
    
    <li class="list-group-item">Cras justo odio</li><li class="list-group-item">Cras justo odio</li>
    
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Cras justo odio</li>
</ul>


    
</div>
	
        <div class="search-container">
        </div>
	    <input id="pac-input" class="controls" type="text" placeholder="search box">
	    <div id="map"></div>
	   <div id="viewlist">
	   
	   <div class="card" id="viewmain" >
		  <img class="card-img-top" alt="card image cap">
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
    
   
    </div>
    
    
    
    
 <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" id="addList">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">新增清單</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
	<form id="insertlist">
	  <div class="modal-body">     
		<div class="form-group">
		<label  class="form-control-label" for="formGroupExampleInput">viewName:</label>
		    <input placeholder="請輸入行程名稱" type="text" id="viewName" class="form-control"/>
		  
		</div>
		
		<div class="form-group">
		<label  class="form-control-label" for="formGroupExampleInput">開始時間</label>
		    <input  placeholder="Selected starttime" type="text" id="starttime" class="form-control"/>
		  
		</div>
		
		
		<div class="form-group">
		<label class="form-control-label" for="formGroupExampleInput">結束時間</label>
		    <input  placeholder="Selected endtime" type="text" id="endtime" class="form-control"/>
		  
		</div>
		
		<div class="form-group" id="type">
		<label  class="form-control-label" for="formGroupExampleInput" >travelType:</label>
		    <input  type="hidden" id="travelType" class="form-control"/>
		  
		</div>	
		
		<div class="form-group" id="days">
		<label  class="form-control-label" for="formGroupExampleInput" >tripday:</label>
		    <input  type="hidden" id="travelDay" class="form-control"/>
		</div>	
	</div>
	<div class="modal-footer">
  		<button  type="button" id="checklist"  class="btn btn-primary" data-dismiss="modal">加入行程</button>
  	</div>
	</form>
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
$(function(){
	searchDays()
	searchList();
	searchView();
	placeroad()
	console.log($('.listtitle').text())
	alert($('.listtitle').text())
})

function changetype(){
var k = event.target.id;
	
	$('#'+k).parent().parent().find('.right').slideToggle();
	
}








var add={}

$('#insertday').on('click',function(){
	
	
	add.mail="${LoginOK.mail}"
	add.travelId="${Travel.travelId}"
		$.ajax({
			url:"/startrip/travel/add/day",
			type:"GET",
			dataType:"json",
			data:add,
			contentType: "application/json; charset=utf-8",
			success:function(data){
// 				console.log(data.travelDays)
				searchDays();
				searchList();
				
			}
		})
	
})
//查詢景點相關資訊
$(document).on('click','.card-img-top',function(e){
// 	console.log(e.target.id)
	var viewName=$('#'+e.target.id).parent().prev().text();
	var mail = "${LoginOK.mail}";
	var travelId="${Travel.travelId}"
	$.get("/startrip/view/search",{"viewName":viewName,"mail":mail,"travelId":travelId},function(data){
// 		console.log(data);
		var body=$('.viewDetail');
		var li = body.find('ul');
		body.css("display","block")
		body.find('h5').text(data.view.viewName);
// 		body.find('img').attr('src',imgName);
		var Name= $('<li class="list-group-item">景點名稱:'+data.view.viewaddr+'</li>');
		var phone = $('<li class="list-group-item">電話:'+data.view.viewPhone+'</li>');
		var orgclass = $('<li class="list-group-item">類型'+data.view.orgclass+'</li>');
		var btn = $('<button id="insertList" type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#addList" >加入行程</button>');
		var imgrow = $('<div class="checkview row"></div>');
		var daysrow = $('<div class="checkview row"></div>');
		var imgs=$('<div class="list-group-item col-3" id="food" src="/startrip/assets/Travel/img/food.png"></div><div id="shop" class="list-group-item col-3" src="/startrip/assets/Travel/img/shop.png"></div><div id="travel" class="list-group-item col-3" src="/startrip/assets/Travel/img/mountain.png"></div><div id="rest" class="list-group-item col-3" src="/startrip/assets/Travel/img/zzz.png"><div><hr>');
		var docFrag = $(document.createDocumentFragment());
		for(var i =1;i<=data.travel.travelDays;i++){
			
		var selectday=$('<div class="circle col-2" id="chioceday'+i+'">'+i+'</div>')
		docFrag.append(selectday);
		}
		li.empty();
		li.append(Name);
		$('#viewName').val(data.view.viewName)
		li.append(phone);
		
		li.append(orgclass);
		
		li.append(btn);
		
		imgrow.append(imgs);
		$('#type').html(imgrow)
		daysrow.append(docFrag);
		$('#days').html(daysrow);
	})
	
})

$(document).on('click','.close',function(){
	var body=$('.viewDetail');
	body.css("display","none")
	}
)

$(document).mouseup(function(e){
	  var container =$(".viewDetail"); // 這邊放你想要排除的區塊
	    if (!container.is(e.target) && container.has(e.target).length === 0) {
	       container.hide(); 
	    }
	  })
	var inputType=$('#travelType');
$(document).on('click','.list-group-item.col-3',function(e){
	var all=$('.list-group-item.col-3')
	all.removeClass('active')
	var type = $(e.target);
	
		type.addClass('active');
		var listtype =e.target.id
		inputType.val(listtype)
// 		console.log(inputType.val())
	})

	

	var inputDay = $('#travelDay')
$(document).on('click','.circle',function(e){
	var all = $('.circle')
	all.css({"background-color":"#28b9ff"})
	
	var type = $(e.target)
	type.css({ 'background-color': '#00496c','color':'white'})
	var day =type.text()
	inputDay.val(day)
// 	console.log(inputDay.val())

})
$(document).on('click','#insertList',function(){
// 	alert('here')
	var body=$('.viewDetail')
	var view={} ;
	view.viewName=body.children().eq(1).text();
	view.src=body.children().eq(2).attr('src');
	var ul=body.children().eq(3).children()
	view.score=ul.eq(0).children().text();
	view.phone=ul.eq(1).children().text();
	view.website=ul.eq(2).children().text();
	view.address=ul.eq(3).children().text();
	view.placeId=body.children().eq(4).val();
	view.travelId='${Travel.travelId}'
	view.memberId='${LoginOK.memberid}'
// 	console.log(view)
	$.ajax({
		url:"/startrip/Travel/add/view",
		type:"POST",
// 		dataType:"json",
		data:view,
// 		contentType: "application/json; charset=utf-8",
		success:function(data){
			console.log(data)
		}
	})
})
$(document).on('click','#checklist',function(){

	var datas={} ;
	datas.viewName=$('#viewName').val();
	datas.starttime=$('#starttime').val();
	datas.endtime=$('#endtime').val();
	datas.type=inputType.val();
	datas.day=inputDay.val();
	datas.travelId='${Travel.travelId}'
	datas.memberId='${LoginOK.memberid}'
	
	$.ajax({
		url:"/startrip/Travel/add/list",
		type:"GET",
		dataType:"json",
		data:datas,
		contentType: "application/json; charset=utf-8",
		success:function(data){
			searchList();
		}
	})
})

function placeroad(){
	console.log($('.container .listtitle').text())
	console.log('aaaaa')
	console.log($('.listtitle').text())
	alert($('.listtitle').text())
// 		console.log(index+"="+$(this).text());
	
}



</script>
<script>

//-----------------------------------
//行程天數生成
function searchDays(){
	var value = {};
	value.mail="${LoginOK.mail}";
	value.travelId="${Travel.travelId}"
// 	alert(value)
	$.ajax({
		url:"/startrip/travel/id",
		type:"GET",
		dataType:"json",
		data:value,
		contentType: "application/json; charset=utf-8",
		success:function(data){
// 			console.log(data)
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
			var col =$("<div class='timestyle col-4'></div>");
			var starttime = $('<span id ="startDate" class="time contex">'+data.startDate+'</span>')
			var line=$("<div style='margin-left:25px;'>|</div>");
			var endtime=$("<span id='endDate'  class='time contex'>"+data.endDate+"</span>")
			col.html([starttime,line,endtime]);
			$('#tripcontext').html([travelNmae,col])
		//清空清單 並建立清單項目
		$('.timeline').empty();
// 		console.log("天數"+data.Name.travelDays)
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

function searchList(){
	var travel={};
	travel.mail="${LoginOK.mail}"
	travel.travelId="${Travel.travelId}"
	$.ajax({
		url:"/startrip/list/travelId",
		type:"GET",
		dataType:"json",
		data:travel,
		contentType: "application/json; charset=utf-8",
		success: 
			function(data){
			var len = data.length;
			
			for(var i = 0;i<len;i++){
				var right=$('<div class="container1 right"  id="dayTile'+(i+1)+'"> </div>')
				var content = $('<div class="content"><div class="closelist" id="closelist'+(i+1)+'" ></div></div>')
				var title = $('<h3 class="listtitle" name="title">'+data[i].viewName+'</h3>');
				var start = $('<div class="start">'+data[i].startTime+'</div>');
				var end = $('<div class="end">'+data[i].endTime+'</div>');
				content.append([title,start,end])
				right.append(content)
				var day=data[i].tripday
				var tag = "daybody"+day
// 				console.log(tag)
				$(".timeline").find("#"+tag).append(right);
				
				}
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
// 		console.log(data[0])
// 		 console.log(data[1])
			var length = data.length;
				var docFrag = $(document.createDocumentFragment());
				
			for(var i=0;i<length;i++){
			
				var split =data[i].imgName.split(";");
				var img = $('<img class="card-img-top hover-shadow" id="img'+(i+1)+'"  alt="Card image cap">').attr("src",'/startrip/showImage/'+split[0]);
				var body = $('<div class="card-body view"></div>');
				var detail = $('<p>'+data[i].viewDetail+'</p>')
// 			
					body.html(detail);
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
<script type="text/javascript">
function initMap() {
	  	var pyrmont = new google.maps.LatLng(25.0337409,121.5416216);
		var map;
	    var infowindow;
	    var icon = {
	          url: '/startrip/assets/Travel/img/local.ico',
	          size: new google.maps.Size(90, 90),
	          //mark位置
	          //origin: new google.maps.Point(0, 4),
	          anchor: new google.maps.Point(-0, 80),
	          scaledSize: new google.maps.Size(90, 90)
	        };
		//初始化地圖
	    map = new google.maps.Map(document.getElementById('map'), {
	    center: pyrmont,
	    zoom: 14
	     });
		//標記初始化地圖	      
	     marker = new google.maps.Marker({
	        position: pyrmont,
	        map: map,
	        title: '資策會',
	        icon: icon,
	    })
	    
	    infowindow = new google.maps.InfoWindow();
	    service = new google.maps.places.PlacesService(map);
	    //路線規劃
	    var directionsService = new google.maps.DirectionsService;
	    //路線設定
	    var directionsDisplay = new google.maps.DirectionsRenderer({
	        draggable: true,
	        map: map,
	        //儀錶板(顯示位置)
	        panel: document.getElementById('right-panel')
	      });  
	    //顯示監控
	    directionsDisplay.addListener('directions_changed', function() {
	        computeTotalDistance(directionsDisplay.getDirections());
	      });
			//路線規劃 call function
//	       displayRoute('饒河街', '台北101', directionsService,
//	           directionsDisplay);
	     
	  //初始化end------------------------
	 
	 

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
	      //placechange-----
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
	     

	      // Create a marker for each place.
	      markers.push(
	        new google.maps.Marker({
	          map: map,
	          icon: icon,
	          title: place.name,
	          position: place.geometry.location,
	          animation: google.maps.Animation.DROP
	        })
	        );
	      //-------------------end
	      //markerclick-----------------------------
	    	google.maps.event.addListener(markers[index], 'click', function() {
	  	  
	  	var body=$('.viewDetail');
			var li = body.find('ul');
			body.css("display","block")
			body.find('h5').text(place.name)
			body.append('<input type="hidden" class="placeId" value='+place.place_id+'>') 
	  	body.find('img').attr('src',place.photos[0].getUrl({'maxWidth': 100, 'maxHeight': 100}));
// 			console.log(place.place_id)
	  	var Name= $('<li class="list-group-item">景點評分:<h5>'+place.rating +'</h5></li>');
			var phone = $('<li class="list-group-item">電話:<h5>'+place.formatted_phone_number+'</h5></li>');
			var website = $('<li class="list-group-item">網址:<h5>'+place.website+'</h5></li>');
			var address = $('<li class="list-group-item">地址:<h5>'+place.formatted_address+'</h5></li>');
			var btn = $('<button id="insertList" type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#addList" >加入行程</button>');
			var imgrow = $('<div class="checkview row"></div>');
			var daysrow = $('<div class="checkview row"></div>');
			var imgs=$('<div class="list-group-item col-3" id="food" src="/startrip/assets/Travel/img/food.png"></div><div id="shop" class="list-group-item col-3" src="/startrip/assets/Travel/img/shop.png"></div><div id="travel" class="list-group-item col-3" src="/startrip/assets/Travel/img/mountain.png"></div><div id="rest" class="list-group-item col-3" src="/startrip/assets/Travel/img/zzz.png"><div><hr>');
			var docFrag = $(document.createDocumentFragment());

			var days=${Travel.travelDays};
			
			for(var i =1;i<=days;i++){
			var selectday=$('<div class="circle col-2" id="chioceday'+i+'">'+i+'</div>')
			docFrag.append(selectday);
			}
			li.empty();
			li.append(Name);
			$('#viewName').val(place.name)
			li.append(phone);
			li.append(website);
			li.append(address)
			li.append(btn);
			
			imgrow.append(imgs);
			$('#type').html(imgrow)
			daysrow.append(docFrag);
			$('#days').html(daysrow); 
//	         infowindow.setContent('<div><strong>' + place.name + '</strong><br>' 
//	             + place.formatted_phone_number+'<br>'
//	             +place.rating +'<br>'
//	             +place.website  +'<br>'
//	             + place.formatted_address + '</div>'
//	             +"<img src="+place.photos[0].getUrl({'maxWidth': 100, 'maxHeight': 100})+'>');
//	               infowindow.open(map, this);
	        });
			//markckick-----end


	      if (place.geometry.viewport) {
	        // Only geocodes have viewport.
	        bounds.union(place.geometry.viewport);
	      } else {
	        bounds.extend(place.geometry.location);
	      }

	     
	    	});
			//place.each-----end
	    
	    	map.fitBounds(bounds);
	  	});
			//placechange-----end------------------------------------

	  }//init end
	  


	  //處理
	  function displayRoute(origin, destination,waypts, service, display) {
	      service.route({
	      //起始
	        origin: origin,
	      //目的
	        destination: destination,
	      //中途點
	        waypoints: waypts,
	      //模式
	        travelMode: 'DRIVING'
	      
	      }, function(response, status) {
	        if (status === 'OK') {
	            console.log(response)
	            console.log(response.routes[0].legs[0].distance.text)
	            console.log(response.routes[0].legs[0].duration.text)
	            console.log(response.routes[0].legs[0].start_address)
	            console.log(response.routes[0].legs[0].end_address)
	            console.log(response.routes[0].legs[0].duration.text)
	           
	          display.setDirections(response);
	        } else {
	         console.log('Could not display directions due to: ' + status);
	        }
	      });
	      
	    }
	    //displayRoute -------end---
	    
		//	顯示
// 	    function computeTotalDistance(result) {
// 	      var total = 0;
// 	      var myroute = result.routes[0];
// 	      for (var i = 0; i < myroute.legs.length; i++) {
// 	        total += myroute.legs[i].distance.value;
// 	      }
// 	      total = total / 1000;
// 	      document.getElementById('total').innerHTML = total + ' km';
// 	    }	
	  	//路線規劃end----------------------------------------
	  
	 
	  
	  //(回傳直,狀態)
	  function callback(results, status) {
	    if (status === google.maps.places.PlacesServiceStatus.OK) {
	      for (var i = 0; i < results.length; i++) {
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
// 	        google.maps.event.addListener(marker, 'click', function() {

// // 	        infowindow.setContent('<div><strong>' + place.name + '</strong><br>' 
// // 	        + place.formatted_phone_number+'<br>'
// // 	        +place.rating +'<br>'
// // 	        +place.website  +'<br>'
// // 	        + place.formatted_address + '</div>'
// // 	        +"<img src="+place.photos[0].getUrl({'maxWidth': 100, 'maxHeight': 100})+'>');
// // 	          infowindow.open(map, this);
// 	        });
	        }
	        });

	        
	      }
	    }
	  }
	 //callback-----end


</script>
<script src="/startrip/assets/Travel/js/timepicker.min.js"></script>
<script>
 $(document).ready(function() {
	
		$('#starttime').timepicker();
// 		console.log($('#starttime').val());
		$('#endtime').timepicker();
		
		
		$('#myModal').on('shown.bs.modal', function () {
			  $('#myInput').trigger('focus')
			})

 }); 
 </script>        
 
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf6zB19vCK-owPk0xpD9thNJ9LJaE03eo&libraries=places&callback=initMap&language=zh-tw" async defer></script>
</body>
</html>
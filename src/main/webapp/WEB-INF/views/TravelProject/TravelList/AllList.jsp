<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>行程清單</title>
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
<c:if test="${ empty Travel}">
<script>history.go(0)</script>
</c:if>
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
		    <a id="switch"type="button" class="btn btn-outline-primary switch">切換</a>
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
        <button id="insertday" type="button" class="btn btn-outline-primary fmain">+新增天數</button>
       
        
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
	
        <div class="search-container" style="height:  50px;background-color: #005dff54">
        
	    <input id="pac-input" class="controls" type="text" placeholder="search box">
        </div>
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
		
		<div class="form-group">
		<label  class="form-control-label" for="formGroupExampleInput"  >持續時間</label>
		    <input  placeholder="持續時間" type="text" id="time" class="form-control"/>
		  
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


</script>
<script>
$(function(){
	//搜尋天數
	searchDays();
	//搜尋景點
// 	searchView();
$('.navbar-nav.ml-auto').children().eq(0).removeClass('active');
$('.navbar-nav.ml-auto').children().eq(3).addClass('active')

})




	
//天數行程切換
function changetype(){
	
	var k = event.target.id;
	//當天行程數
	var right=$('#'+k).parent().parent().find('.right')
	var len = right.length
	var start;
	var end;
	var waypts=[];
	
	
	if(right.is(':visible')==true){
		right.hide(1000);
		$('#'+k).parent().parent().find('.timediv').hide(1000); 
		
		if(len>1){
		placeroute(len,right);
		}
	}else{
		right.show(1000);
		$('#'+k).parent().parent().find('.timediv').show(1000);
		if(len>1){
		placeroute(len,right);
		}
					
			}
}//changetype---end
function createMarker(lat,lng){
	 var marker = new google.maps.Marker({
	        position: latlng,
	        title: title,
	        map: map
	    });

	    google.maps.event.addListener(marker, 'click', function () {
	        infowindow.setContent(title);
	        infowindow.open(map, marker);
	    });
}

function placeroute(len,right){
	
	 var icon = {
	          url: '/startrip/assets/Travel/img/local.ico',
	          size: new google.maps.Size(90, 90),
	          //mark位置
	          anchor: new google.maps.Point(-0, 80),
	          scaledSize: new google.maps.Size(90, 90)
	        };
	var pyrmont = new google.maps.LatLng(25.0337409,121.5416216);
	 map = new google.maps.Map(document.getElementById('map'), {
       zoom: 13,
       center:pyrmont
     })
	 infowindow = new google.maps.InfoWindow();
	 directionsService = new google.maps.DirectionsService;
	 directionsDisplay = new google.maps.DirectionsRenderer({
       map: map,
    });
	
	var waypts=[];
	for(var i = 0;i<len;i++){
		if(i==0){
			start =right.eq(i).find('h5').text()
			
			console.log('start'+start)
		}else if(i==(len-1)){
			end = right.eq(i).find('h5').text()
			
		}else{
			waypts.push({
			location: right.eq(i).find('h5').text(),
			stopover: true
				})
			}
		}//for---end	
		directionsService.route({
		      origin: start,//起始
		      destination: end,//目的
		      waypoints: waypts,//中途點
		      travelMode: 'DRIVING'//模式
		      }, function(response, status) {
		        	if (status === 'OK') {
		        		console.log(response)
// 		        		console.log('startlocation='+response.route[0].leg[0].start_location)
			        	directionsDisplay.setDirections(response);
			        	var input = document.getElementById('pac-input');
			        	 var searchBox = new google.maps.places.SearchBox(input);
			             createSearch(icon,map,searchBox)
			        } else {
			         console.log('Could not display directions due to: ' + status);
			        }
				})
			}	


	
//新增行程天數
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
				searchDays();
				var docFrag = $(document.createDocumentFragment());
				for(var i =1;i<=data.travelDays;i++){
					var selectday=$('<div class="circle col-2" id="chioceday'+i+'">'+i+'</div>')
					docFrag.append(selectday);
					}
				$('.modal-body').find('.checkview').empty();
				$('.modal-body').find('.checkview').append(docFrag)
		}
	})
})//新增天數END





$(document).on('click','.closeday',function(e){
	var daybody=$(e.target).parent().attr('id');
	var day = daybody.substr(7,1)
	console.log(day)
	console.log('${Travel.travelId}')
	console.log('${LoginOK.mail}')
	var travel={}
	travel.mail='${LoginOK.mail}'
	travel.travelId ='${Travel.travelId}'
	travel.listday=day;
	
	$.get('/startrip/travel/remove/day',travel,function(data){
		console.log(data)
		searchDays();
		
	})
	
	
})




//查詢景點相關資訊
$(document).on('click','.card-img-top',function(e){
	var viewName=$('#'+e.target.id).parent().prev().text();
	var mail = "${LoginOK.mail}";
	var travelId="${Travel.travelId}"
	$.get("/startrip/view/search",{"viewName":viewName,"mail":mail,"travelId":travelId},function(data){
	var body=$('.viewDetail');
	var li = body.find('ul');
	body.css("display","block")
	body.find('h5').text(data.view.viewName);
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
//顯示詳細資訊功能
$(document).on('click','.close',function(){
	var body=$('.viewDetail');
	body.css("display","none")
	body.animate({left:"-350px"},500);
	}
)

$(document).mouseup(function(e){
	  var container =$(".viewDetail"); // 這邊放你想要排除的區塊
	  if (!container.is(e.target) && container.has(e.target).length === 0) {
	       container.hide(); 
	       container.animate({left:"-350px"},500);
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
	})

	var inputDay = $('#travelDay')
	
//新增行程的圖片css切換
$(document).on('click','.circle',function(e){
	var all = $('.circle')
	all.css({"background-color":"#28b9ff"})
	
	var type = $(e.target)
	var day =type.text()
	type.css({ 'background-color': '#00496c','color':'white'})
	var datas={}
	datas.mail="${LoginOK.mail}";
	datas.travelId="${Travel.travelId}"
	datas.tripday=day
	
	$.ajax({
		url:"/startrip/travel/checkday",
		type:"GET",
		data:datas,
		success:function(data){
			if(data==true){
				console.log('true')
				$('#starttime').parent().css('display','none');
				$('#endtime').parent().css('display','none');
				$('#time').parent().css('display','block');
			} else{
				console.log('false')
				$('#starttime').parent().css('display','block');
				$('#endtime').parent().css('display','block');
				$('#time').parent().css('display','none');
			}
			
		}
	})
	inputDay.val(day)

})
$(document).on('click','#insertList',function(){
	var body=$('.viewDetail')
	var view={} ;
	var ul=body.children().eq(3)
	
	view.viewName=body.children().eq(1).text();
	view.imgName=body.children().eq(2).attr('src');
	view.detail=ul.eq(0).children().text();
	
	if(body.children().eq(3).find('.phone').find('h5').text()=='undefined'){
		view.viewPhone='null'
	}else{view.viewPhone=ul.find('.phone').find('h5').text();}
	
	if(body.children().eq(3).find('.website').find('h5').text()=='undefined'){
		view.website='null'
	}else{view.website=ul.find('.website').find('h5').text();}

	view.viewaddr=body.children().eq(3).find('.address').find('h5').text();
	latlng=body.children().eq(1).attr('data-location')
	latlng=latlng.substring(1,latlng.length-1)
	view.latlng = latlng
	view.travelId='${Travel.travelId}'
	view.memberId='${LoginOK.memberid}'
	console.log(view)
	$.ajax({
		url:"/startrip/Travel/add/view",
		type:"GET",
		data:view,
		success:function(data){
			console.log(data)
			}
		})
	})
	
$(document).on('click','#checklist',function(){
	var day = inputDay.val()
	var travelId="${Travel.travelId}"
	var mail ="${LoginOK.mail}"
	value={}
	value.mail=mail;
	value.travelId=travelId;
	value.tripday=day
	console.log(value)
	console.log('準備判斷天數有沒有行程')
	$.ajax({
		url:"/startrip/travel/checkday",
		type:"GET",
		data:value,
		success:function(check){
			console.log("check="+check)
			if(check==true){
				console.log('有行程')
				list={}
				list.tripday=day
				list.travelId=travelId
				list.mail=mail
				$.get("/startrip/listday/lasttime",list,function(data){
					var datas={}
					
					datas.viewName=$('#viewName').val();
					  	directionsService = new google.maps.DirectionsService;
					  	request={}
					  	request.origin=data.viewName//起始
						request.destination= datas.viewName//目的
						request.travelMode= 'DRIVING'//模式
						directionsService.route(request, function(response,status){
					  	if (status === 'OK') {
					  		var result=response.routes[0];
					  		var duration=result.legs[0].duration.value;
					  		var routehour=Math.round((duration/3600)); 
				        	var routemin = Math.ceil(duration%3600/60);
				        	if(routemin==0){
				        		routemin=1;
				        	}
					  	console.log('routehour = '+routehour+',routemin = '+routemin)
					   
					datas.starttime=data.endTime;
					
					var time = data.endTime.split(":")
					
					var insert =$('#time').val().split(":")
					
					var starthour =parseInt(time[0])+routehour
					var startmin =parseInt(time[1])+routemin
					
					var endhour =parseInt(time[0])+parseInt(insert[0])+routehour
					var endmin =parseInt(time[1])+parseInt(insert[1])+routemin
					
					if(starthour>23){
						starthour = starthour-23;
						
					}
					if(endhour>23){
						endhour=endhour-23;	
						
					}
					if(startmin>60){
						startmin =	startmin-60;
						starthour = starthour+1;
						
					}
					if(endmin>60){
						endmin =	endmin-60;
						endhour = endhour+1;
						
					}
					
					var twobit = function( num ) {
						return num >= 10 ? num + '' : '0' + num;
					};
					twobit(starthour)
					twobit(startmin)
					twobit(endhour)
					twobit(endmin)
					
					datas.starttime=twobit(starthour)+":"+twobit(startmin);
					datas.endtime=twobit(endhour)+":"+twobit(endmin);
					datas.travelType=inputType.val();
					datas.tripday=inputDay.val();
					datas.travelId='${Travel.travelId}';
					datas.memberId='${LoginOK.memberid}';
					
				$.ajax({
				url:"/startrip/Travel/add/list",
				type:"GET",
				dataType:"json",
				data:datas,
				contentType: "application/json; charset=utf-8",
				success:function(data){
					console.log('新增行程');
					console.log('tripday = '+data.tripday);
					searchList(data.tripday);
					
					
					}
				
				})
			}
			})
		})
				
		}else if(check==false){
				console.log('沒有行程')
			
				var datas={} ;
				datas.viewName=$('#viewName').val();
				datas.starttime=$('#starttime').val();
				datas.endtime=$('#endtime').val();
				datas.travelType=inputType.val();
				datas.tripday=inputDay.val();
				datas.travelId='${Travel.travelId}';
				datas.memberId='${LoginOK.memberid}';
				$.ajax({
				url:"/startrip/Travel/add/list",
				type:"GET",
				dataType:"json",
				data:datas,
				contentType: "application/json; charset=utf-8",
				success:function(data){
					
					console.log('新增行程')
					console.log(data)
					searchList(data.tripday);
					
				}
			})
			}
			
			
			
			
		}
	})
})
//刪除清單
$(document).on('click','.closelist',function(e){
	var nextid=e.target
	var daybody=$(nextid).parent().parent().parent().attr('id');
	var day = daybody.substr(7,1);
	var list={}
	
	list.travelId=${Travel.travelId}
	list.tripday=day  
  	list.endtime=$(nextid).parent().find('.end').text()
 	$.get('/startrip/list/remove',list,function(data){
 		console.log($('.'+e.target.id))
 		$(nextid).parent().parent().remove();
		 searchList(data)
		 
 	})
 		
})

$(document).on('mouseenter',".contentDay",function(e){
	$(e.target).prev().css('display','block')
})

$(document).on('mouseleave',".right1",function(e){
	
	$('.closeday').css('display','none')
})

$(document).on('mouseenter',".content",function(e){
	$(e.target).find('.closelist').css('display','block')
})

$(document).on('mouseleave',".content",function(e){
	
	$('.closelist').css('display','none')
})



//-----------------------------------
//行程天數生成
function searchDays(){
	var value = {};
	value.mail="${LoginOK.mail}";
	value.travelId="${Travel.travelId}"
	$.ajax({
		url:"/startrip/travel/id",
		type:"GET",
		dataType:"json",
		data:value,
		contentType: "application/json; charset=utf-8",
		
		success:function(data){
			$('#tripcontext').empty();
			var bg=$('<div class="bgImg"></div>')
			var travelNmae = $("<h3 id='travelName'>"+data.Name.travelName+"</h3>");
			var col =$("<div class='timestyle col-5'></div>");
			var starttime = $('<span id ="startDate" class="time contex">'+data.startDate+'</span><br>')
			var line=$("<span class='time contex' style='margin-left:40px;'>|</span><br>");
			var endtime=$("<span id='endDate'  class='time contex'>"+data.endDate+"</span>")
			col.html([starttime,line,endtime]);
			bg.html([travelNmae,col])
			$('#tripcontext').html(bg)
		//清空清單 並建立清單項目
		$('.timeline').empty();
		//console.log("天數"+data.Name.travelDays)
			var docFrag = $(document.createDocumentFragment());
			var main =$(".timeline");
			for( var i = 1,day=data.Name.travelDays;i<=day;i++){
				console.log('第'+i+'天')
				//---天數新增
				var title=$('<h2 class="title" onclick="changetype()" id="day'+i+'" >Day'+i+'</h2>');
				var dayremove=$('<div class="closeday" style="float:right;"></div>')
				var daycontent=$('<div class="title contentDay"></div>');
				var right1 = $("<div class='container1 right1 ' id='daybody"+i+"' ></div>");
 				
					daycontent.html(title);
					right1.html([dayremove,daycontent]);
					docFrag.append(right1);
					console.log('i='+i)
					
					searchList(i);
			}
			main.append(docFrag);
			  
		}
	})
} 
//------------------------------------------
//查詢行程景點

function searchList(day){
	var travel={};
	travel.mail="${LoginOK.mail}"
	travel.travelId="${Travel.travelId}"
	travel.day=day
	$('#daybody'+day).find('.right').remove();
	$('#daybody'+day).find('.timediv').remove();
	console.log("day="+day)
	
	$.ajax({
		url:"/startrip/list/travelId",
		type:"GET",
		dataType:"json",
		data:travel,
		contentType: "application/json; charset=utf-8",
	
		success: 
			function(data){
				var len = data.length;
				var waypts=[];
				for(var i = 0;i<len;i++){//產生天數清單
					
					
					var right=$('<div class="container1 right"  id="dayTile'+(i+1)+'"> </div>')
					var content = $('<div class="content"><div class="closelist" id="closelist'+(i+1)+'" ></div></div>')
					var title = $('<h5 class="listtitle" name="title" data-viewLatLng="'+data[i].viewbean.latlng+'">'+data[i].viewName+'</h5>');
				
					var start = $('<div class="start">'+data[i].startTime+'</div>');
					var line = $('<div class= "line" style="margin-left:15px;">|</div>');
					var end = $('<div class="end">'+data[i].endTime+'</div>');
					content.append([title,start,line,end])
					right.append(content)
					var day1=data[i].tripday
					
					var tag = "daybody"+day1
					
					$(".timeline").find("#"+tag).append(right);
					waypts.push({
						location: data[i].viewName,
						stopover: true
						})
					}//for----end
			   directionsService = new google.maps.DirectionsService;
				//中途點
				var wlen = waypts.length
				if(wlen>2){
				  waypts.splice(0,1);
				  waypts.pop()
				}
			
			  if(len<2){
				  console.log("只有一個點")
			  }else{
				var request={}
				
				if(wlen>2){
				request.waypoints= waypts//模式
				}
				
				request.origin=data[0].viewName//起始
				request.destination= data[len-1].viewName//目的
				request.travelMode= 'DRIVING'//模式
				directionsService.route(request, function(response,status){
			  	if (status === 'OK') {
			        var result=response.routes[0]
			        var rlen=result.legs.length
			          road=[]
			        if(rlen<0){
			         	console.log("沒有行程")
		          	}else{
		          		
				          for(var i = 0;i<(len-1);i++){
				        	  
				        	var distance=result.legs[i].distance.text;
				        	var duration=result.legs[i].duration.text;
				        	
				        	var distanceval=result.legs[i].distance.value;
				        	var durationval=result.legs[i].duration.value;
				        	var body = $('<div class="timediv" id="time'+(i+1)+'"> </div>')
				        	var road=$('<span class="col-4" data-googledistance='+distanceval+'>'+distance+'</span><div class="placeImg"></div><span  data-googledistance='+durationval+'>'+duration+'</span></div>')
				        	body.append(road)
				        	daybody=$(".timeline").find("#"+tag)
				        	daybody.find('#dayTile'+(i+1)).after(body);
							}
				      	
							var twobit = function( num ) {
								return num >= 10 ? num + '' : '0' + num;
							};
				  	     	var listlen =  daybody.find('.right').length
				  	    	var tripday=daybody;
				  	     	console.log('listlen='+listlen)
				  			for(var j = 0;j<listlen;j++){
				  				
				  				if(j==0){
				  					var firstend=daybody.find('.right').eq(0).find('.end').text();
				  					console.log('firstend = '+ firstend)
				  				}else{
				  					
					  				var prevend = daybody.find('.right').eq(j-1).find('.end').text()
					  				var duration =daybody.find('.timediv').eq(j-1).find('span').eq(1).data('googledistance')
					  				var start = daybody.find('.right').eq(j).find('.start').text()
					  				var end = daybody.find('.right').eq(j).find('.end').text()
					  				var sstart =start.split(":");
					  				var send = end.split(":");
					  				
					  				console.log(prevend,duration,start,end)
					  				
					  				console.log(send[0],sstart[0])
				  				hour=parseInt(send[0])-parseInt(sstart[0]);
				  				min=parseInt(send[1])-parseInt(sstart[1]);
				  				console.log('持續時間='+hour+','+min )
				  				if(min<0){
				  						hour =hour-1;
				  						min = min+60;
				  					}
				  				var pend =prevend.split(":");
				  				starthour = parseInt(pend[0])+(Math.floor(duration/3600));
				  				startmin = parseInt(pend[1])+(Math.round((duration%3600)/60));
				  				
				  				endhour = starthour+hour
				  				endmin = startmin+min
				  				if(endmin>60){
				  						endmin = endmin-60;
				  						endhour = endhour+1;
				  					}
				  				if(startmin>60){
				  					startmin = startmin-60;
			  						starthour = starthour+1;
			  					}
				  				var stime= twobit(starthour)+":"+twobit(startmin)
				  				var etime=	twobit(endhour)+":"+twobit(endmin)
				  				console.log('新的開始時間'+stime+','+etime)
				  				daybody.find('.right').eq(j).find('.start').text(twobit(starthour)+":"+twobit(startmin));
			  					daybody.find('.right').eq(j).find('.end').text(twobit(endhour)+":"+twobit(endmin));
			  					var value = {};
			  					console.log('stime='+stime+',etime='+etime) 
			  					value.startTime=stime
			  					value.endTime=etime
			  					value.travelId="${Travel.travelId}"
			  					value.mail="${LoginOK.mail}"
			  					value.tripday=day;
			  					value.viewName=daybody.find('.right').eq(j).find('h5').text();
			  					$.get("/startrip/list/update",value,function(data){
			  						console.log(data)
			  					})
				  					} //else end
				  				}
			  			}         
					}
				})//directionsService end
				return day;
			  }
		},
	complete:function(){
		 document.execCommand('Refresh') 
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
				$('#views').empty();
				var length = data.length;
				var docFrag = $(document.createDocumentFragment());
				
				for(var i=0;i<length;i++){
			
				var split =data[i].imgName.split(";");
				var img = $('<img class="card-img-top hover-shadow" id="img'+(i+1)+'"  alt="Card image cap">').attr("src",'/startrip/showImage/'+split[0]);
				var body = $('<div class="card-body view"></div>');
				var detail = $('<p>'+data[i].viewDetail+'</p>')
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
	})//ajax end
}


function initMap() {
  	var pyrmont = new google.maps.LatLng(25.0337409,121.5416216);
	var map;
    var infowindow;
    var icon = {
          url: '/startrip/assets/Travel/img/local.ico',
          size: new google.maps.Size(90, 90),
          //mark位置
          anchor: new google.maps.Point(-0, 80),
          scaledSize: new google.maps.Size(90, 90)
        };
	//初始化地圖
	    map = new google.maps.Map(document.getElementById('map'), {
	    center: pyrmont,
	    zoom: 14
	      });
	
	//--------------------------------
	//標記初始化地圖	      
     marker = new google.maps.Marker({
        position: pyrmont,
        map: map,
        title: '資策會',
        icon: icon,
    })
    service = new google.maps.places.PlacesService(map);
     var input = document.getElementById('pac-input');
     var searchBox = new google.maps.places.SearchBox(input);
     createSearch(icon,map,searchBox)
     
  }//init end 
  
	function createSearch(icon,map,searchBox){
	    // Bias the SearchBox results towards current map's viewport.
	      map.addListener('bounds_changed', function() {
	        searchBox.setBounds(map.getBounds());
	      });
			
	      var markers = [];
	      // Listen for the event fired when the user selects a prediction and retrieve
	      // more details for that place.
	      //placechange-----
	      searchBox.addListener('places_changed', function() {
	    	  marker.setMap(null);
	   var places = searchBox.getPlaces();
			console.log(places)
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
	    	var photoslen = place.photos
	    	console.log("photoslen="+photoslen)
	    	if (!place.geometry||(photoslen.length!=1)||(photoslen==undefined)) {
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
			li.empty();
			
			body.css("display","block")
			body.find('h5').text(place.name)
			body.find('h5').attr('data-location',place.geometry.location)
			body.append('<input type="hidden" class="placeId" value='+place.place_id+'>') 
	  		body.find('img').attr('src',place.photos[0].getUrl({'maxWidth': 100, 'maxHeight': 100}));
			li.empty();
			var address = $('<li class="list-group-item address">地址:<h5>'+place.formatted_address+'</h5></li>');
			li.append(address)
			if(!(place.rating==undefined)){
		  		var rating= $('<li class="list-group-item rating">景點評分:<h5>'+place.rating +'</h5></li>');
		  		li.append(rating);
			}
			if(!(place.formatted_phone_number==undefined)){
				var phone = $('<li class="list-group-item phone">電話:<h5>'+place.formatted_phone_number+'</h5></li>');
				li.append(phone);
			}
		
			if(!(place.website==undefined)){
				var website = $('<li class="list-group-item website">網址:<h5>'+place.website+'</h5></li>');
				li.append(website);
			}
			var btn = $('<button id="insertList" type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#addList" >加入行程</button>');
			var imgrow = $('<div class="checkview row"></div>');
			var daysrow = $('<div class="checkview row"></div>');
			var imgs=$('<div class="list-group-item col-3" id="food" src="/startrip/assets/Travel/img/food.png"></div><div id="shop" class="list-group-item col-3" src="/startrip/assets/Travel/img/shop.png"></div><div id="travel" class="list-group-item col-3" src="/startrip/assets/Travel/img/mountain.png"></div><div id="rest" class="list-group-item col-3" src="/startrip/assets/Travel/img/zzz.png"><div><hr>');
			var docFrag = $(document.createDocumentFragment());

			var days=${Travel.travelDays};
			var day1=$('#daybody1').find('.right').length;
			console.log(day1)
			
			if(!(day1==0)){
				$('#starttime').parent().css('display','none');
				$('#endtime').parent().css('display','none');
				
			}else{
				$('#time').parent().css('display','none');
				
			}
			for(var i =1;i<=days;i++){
				console.log('circle days='+days)
				var selectday=$('<div class="circle col-2" id="chioceday'+i+'">'+i+'</div>')
				docFrag.append(selectday);
				}
			$('#viewName').val(place.name)
			li.append(btn);
			
			imgrow.append(imgs);
			$('#type').html(imgrow)
			daysrow.append(docFrag);
			$('#days').html(daysrow); 
	        
			
	    	body.animate({left:"+350px"},500);
	       
	       
	    	});


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

	      directionsService = new google.maps.DirectionsService;
		   directionsDisplay = new google.maps.DirectionsRenderer({
	          draggable: true,
	          map: map,
	       });
		}
  
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
        }
        });

        
      }
    }
  }
 //callback-----end


</script>
<script type="text/javascript">


</script>
<script src="/startrip/assets/Travel/js/timepicker.js"></script>
<script>
 $(document).ready(function() {
	
		$('#starttime').timepicker();
		$('#endtime').timepicker();
		$('#time').timepicker();
		
// 		$('#myModal').on('shown.bs.modal', function () {
// 			  $('#myInput').trigger('focus')
// 			})

 }); 
 </script>        
 <script>
 //api
// 			<div id="view">
// 	          	<h5 class="card-title">card title</h5>
// 	            <div class="card" style="width: 18rem;">
// 	                <img class="card-img-top"  alt="card image cap">
// 	                <div class="card-body"></div>
// 	            </div>
//             </div>
        
              $.getJSON("https://emma.pixnet.cc/mainpage/blog/categories/hot_weekly/28?page=1&per_page=100&api_version=2&format=json&filter=top_authors",function(){
                  format:"json";
              }).done(function(data){
            	  
            	
          		$('#views').empty();
				var length = data.articles.length;
				var docFrag = $(document.createDocumentFragment());
				
				for(var i=0;i<length;i++){
			
			      
			        
// 	                  console.log(data.articles.length)
// 	                  console.log(data.articles[i])
	                 
	         if(!(data.articles[i].location==undefined)){
// 	            	 console.log(data.articles[i].title)
// 	                  console.log("tumb="+data.articles[i].thumb)
// 	                  console.log(data.articles[i].link)
// 	                  console.log(data.articles[i].cover) 
// 	                  console.log("i =" +data.articles[i].location)
// 	                console.log(data.articles[i])
// 				var split =data[i].imgName.split(";");
				var img = $('<img  class="card-img-top hover-shadow" id="img'+(0+1)+'"  alt="Card image cap">').attr("src",data.articles[i].thumb);
				var a = $('<a href="'+data.articles[i].link+'"></a>')
				a.append(img)
				var body = $('<div class="card-body view"></div>');
				var detail = $('<p>'+data.articles[i].location+'</p>')
					body.html(detail);
				var card = $('<div class="card" style="width: 18rem;"></div>');
				var title = $('<h6 class="card-title"><strong>'+data.articles[i].title+'</strong></h6>');
				var view = $('<div class="view"></div>');
				card.html([a])
				view.html([title,card])
				docFrag.html(view);
				}
				}
			$('#views').html(docFrag); 
				
              })
 
 </script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDcJ_tKbqeZBaicggo1H1eTzqQZCx_EOK0&libraries=places&callback=initMap&language=zh-tw" async defer></script>
</body>
</html>
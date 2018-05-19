<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Free Bootstrap 4 Theme by ProBootstrap.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700"
	rel="stylesheet">

<link rel="stylesheet"
	href="/startrip/assets/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="/startrip/assets/css/animate.css">
<link rel="stylesheet"
	href="/startrip/assets/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/startrip/assets/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet"
	href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="/startrip/assets/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/startrip/assets/css/select2.css">
<link rel="stylesheet" href="/startrip/assets/css/helpers.css">
<link rel="stylesheet" href="/startrip/assets/css/style.css">
<style>
#showMap {
            width: 300px; height: 300px;
        }


#inputState {
	height: 46px;
	color: rgb(151, 148, 148)
}

.inputState label, .inputState select {
	height: 46px;
	width: 100%;
	color: rgb(151, 148, 148)
}

.probootstrap-cover .overlay {
	position: absolute;
	background: rgba(0, 0, 0, 0.2);
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}
.adbody {
        text-align: center;
        width: 600px;
        margin: auto;
    }
</style>
<title>站名編號查詢</title>
</head>
<body>
	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>



	<!-- 以下為訂票功能 -->

	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/transport/images/into.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-md probootstrap-animate">
				<form action="stationEdit" class="probootstrap-form"
					style="border-radius: 30px;">
					<div class="form-group">
						<div class="row">
							<!-- 							選擇出發日期 -->
							<div class="col-md">
								<div class="form-group inputState">
									<div class="probootstrap-date-wrap">
										<label for="probootstrap-date-arrival"> <span
											class="icon ion-calendar"></span> <input type="text"
											id="probootstrap-date-arrival" name="checkin"
											class="form-control" placeholder="請選擇出發日期">
										</label>
									</div>
								</div>
							</div>
							<!-- 							以上選擇出發日期 -->

							<!-- 選擇出發地點 -->
							<div class="col-md">
								<div class="form-group inputState">
									<label for="id_label_people"> <select id="inputState"
										class="form-control" name="poeple">
											<option value="">請選擇出發地點</option>
											<option value="基隆">基隆</option>
											<option value="台北">台北</option>
											<option value="新北">新北</option>
											<option value="桃園">桃園</option>
											<option value="新竹">新竹</option>
											<option value="苗栗">苗栗</option>
											<option value="台中">台中</option>
											<option value="彰化">彰化</option>
											<option value="南投">南投</option>
											<option value="雲林">雲林</option>
											<option value="嘉義">嘉義</option>
											<option value="台南">台南</option>
											<option value="高雄">高雄</option>
											<option value="屏東">屏東</option>
											<option value="宜蘭">宜蘭</option>
											<option value="花蓮">花蓮</option>
											<option value="台東">台東</option>
									</select>
									</label>
								</div>
							</div>

							<!-- 選擇出發地點 -->
							<!-- 選擇出發站名 -->
							<div class="col-md">
								<div class="form-group inputState">
									<label for="id_label_people"> <select id="inputState"
										class="form-control" name="poeple">

											<option value="" selected="selected">選擇出發車站</option>
											<c:forEach items='${stationList}' var='select'>


												<option value="">${select.stationName}</option>

											</c:forEach>
									</select>
									</label>
								</div>
							</div>
							<!-- 選擇出發站名 -->
							<!-- 選擇到達地點 -->
							<div class="col-md">
								<div class="form-group inputState">
									<label for="id_label_people"> <select id="inputState"
										class="form-control" name="poeple">
											<option value="">請選擇前往地點</option>
											<option value="基隆">基隆</option>
											<option value="台北">台北</option>
											<option value="新北">新北</option>
											<option value="桃園">桃園</option>
											<option value="新竹">新竹</option>
											<option value="苗栗">苗栗</option>
											<option value="台中">台中</option>
											<option value="彰化">彰化</option>
											<option value="南投">南投</option>
											<option value="雲林">雲林</option>
											<option value="嘉義">嘉義</option>
											<option value="台南">台南</option>
											<option value="高雄">高雄</option>
											<option value="屏東">屏東</option>
											<option value="宜蘭">宜蘭</option>
											<option value="花蓮">花蓮</option>
											<option value="台東">台東</option>
									</select>
									</label>
								</div>
							</div>
							<!-- 選擇到達地點 -->
							<!-- 選擇到達車站 -->
							<div class="col-md">
								<div class="form-group inputState">
									<label for="id_label_people"> <select id="inputState"
										class="form-control" name="poeple">
											<option value="">請選擇目的車站</option>

											<c:forEach items='${stationList}' var='select'>


												<option value="">${select.stationName}</option>

											</c:forEach>
									</select>
									</label>
								</div>
							</div>
							<!-- 選擇到達車站 -->
							<!-- 							送出 -->
							<!-- summit -->
							<div class="col-md">
								<div class="form-group">
									<div class="col-md">
										<input type="submit" value="送出"
											class="btn btn-primary btn-block">
									</div>
								</div>
							</div>
							<!-- summit -->

							<!-- 							送出 -->

						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- 以上為訂票功能版面 -->

<a href="/startrip/assets/transport/images/AD/mainview1-p.jpg">測試網址</a>


<!-- 輪播牆 -->

<!-- 輪播牆 -->


	<!-- 以下為地圖查車站function -->
	<script>
		document.addEventListener("DOMContentLoaded", function() {

			var areas = document.querySelectorAll("area.imgbut");
			var areasLen = areas.length;
			console.log(areas);
			console.log(areasLen);
			for (var i = 0; i < areasLen; i++) {
				areas[i].addEventListener("mouseover", mouseOver);
				areas[i].addEventListener("mouseout", mouseOut);
//				areas[i].addEventListener("click", Click);
			}
		});

		function mouseOver() {
			console.log(this.id);
			// document.images[0].src = "images/MapTaipei.gif"; 
			//console.log("QQQ");
			document.images[0].src = "/startrip/assets/transport/images/map/map"+this.id+".png";
			//console.log("/startrip/assets/transport/images/map/map"+ this.id +".png");
		}

		function mouseOut() {
			document.images[0].src = "/startrip/assets/transport/images/taiwan.png";
		}

//		function Click() {
			// document.getElementById("mapdiv").innerHTML = "<img src='images/Taipei.gif'/>";
//			document.getElementById("mapdiv").innerHTML = "<img src='images/"
//					+ this.id.substr(2) + ".gif'/>";
//					this.innerHTML = '您選的座位為' + this.id.substr(5) + '號';
//			$("#xx").html("<span>"+'您選的座位為'+this.id.substr(5)+'號'+"</span>");
//		}
	</script>
	
	
	

	<!-- 以上為地圖查車站function -->

	<!-- 以下為地圖標註顯示 -->
	<section>
	<div class="container">
		<div class="row text-center mb-5 probootstrap-animate">
			<div class="col-md-12">
				<h4 class="display-4 probootstrap-section-heading">查詢車站(地圖)</h4>
			</div>
		</div>
		<div class="row">
			<div>
				<a class="probootstrap-thumbnail"> 
				<img id="imgMap"
					class="img-fluid" alt="Free Template by ProBootstrap.com"
					src="/startrip/assets/transport/images/taiwan.png" usemap="#FPMap0"
					width="280" height="460" usemap="#Map" border="0"> <map
						id="FPMap0" name="FPMap0">
						<area class=imgbut shape="rect" coords="201,54,248,76" id=01 onclick="getArea('新北')">
						<area class=imgbut shape="rect" coords="181,23,228,44" id=02  onclick="getArea('台北')">
						<area class=imgbut shape="rect" coords="229,28,274,52" id=03 onclick="getArea('基隆')">
						<area class=imgbut shape="rect" coords="122,186,170,208" id=04 onclick="getArea('南投')">
						<area class=imgbut shape="rect" coords="53,303,100,328" id=05 onclick="getArea('高雄')">
						<area class=imgbut shape="rect" coords="208,99,260,122" id=06 onclick="getArea('宜蘭')">
						<area class=imgbut shape="rect" coords="176,196,224,215" id=07 onclick="getArea('花蓮')">
						<area class=imgbut shape="rect" coords="136,278,185,302" id=08 onclick="getArea('台東')">
						<area class=imgbut shape="rect" coords="84,335,132,359" id=09 onclick="getArea('屏東')">
						<area class=imgbut shape="rect" coords="54,260,100,283" id=10 onclick="getArea('台南')">
						<area class=imgbut shape="rect" coords="37,227,86,252" id=11 onclick="getArea('嘉義')">
						<area class=imgbut shape="rect" coords="36,193,85,212" id=12 onclick="getArea('雲林')">
						<area class=imgbut shape="rect" coords="69,161,119,185" id=13 onclick="getArea('彰化')">
						<area class=imgbut shape="rect" coords="111,137,160,160" id=14 onclick="getArea('台中')">
						<area class=imgbut shape="rect" coords="92,104,142,128" id=15 onclick="getArea('苗栗')">
						<area class=imgbut shape="rect" coords="155,93,204,114" id=16 onclick="getArea('新竹')">
						<area class=imgbut shape="rect" coords="148,44,197,67" id=17 onclick="getArea('桃園')">
					</map>
					
				</a>
			</div>


	<!-- 以上為地圖顯示區塊 -->
<!-- 	以下為顯示地區車站 -->
<script>

function getArea(data){
// 	alert($('#FPMap0'));
//	alert(data);
	var abb = {};
	abb.local=data;
	$.ajax({
		type: 'POST',
		url: 'selectArea',
		data: abb,
// 		dataType: dataType,
		success: function(response) 
		{
// 			alert("response: "+ response);
//			console.log(response);
			
			
			$("#tbo").empty();
			for(var i=0;i<response.length;i++){
				$("#tbo").append("<tr><td>"+response[i].area+ "</td>"+
								 	 "<td>"+response[i].stationName+"</td>"+
								 	 "<td id='getAddress'>"+response[i].address+"</td>"+
								 	 "<td>"+"<img width='30' height='30' src='/startrip/assets/transport/images/mapicon.png'>"+"</td></tr>");
// 				$("#tbo").append("<td>"+response[i].area+ "<tr>");
// 				$("#tbo").append("<td>"+response[i].stationName+ "</td>");
// 				$("#tbo").append("<td>"+response[i].address+ "</td>");
// 				alert(response[i].stationName);
			}
			
		},error: function(jqXHR, textStatus, errorThrown) {alert("no")},
		
});


};
document.addEventListener("DOMContentLoaded", function makeMap() {
    
        
        document.getElementById("getAddress").addEventListener("click", click1);   
        
    
        document.getElementById("random" ).addEventListener("click", getRandom);   
}); 
function click1() {
// 	this.src = "/startrip/assets/transport/images/setOn.png";
// 	 this.innerHTML = '您選的座位為' + this.id.substr(5) + '號';
     $("#gm").html("<span>"+'

    		 <div class="col-md">
     <!-- 地圖 -->"
<a href='http://maps.google.com/maps?q=新北市金山區中山路87號	&amp;z=1" data-geo="" target="_blank">
<img class="map" alt="新北市金山區中山路87號	" src="https://maps.google.com/maps/api/staticmap?zoom=15&size=300x300&maptype=terrain&sensor=false&center=新北市金山區中山路87號	&markers=color:blue%7Clabel:S%7C新北市金山區中山路87號&key=AIzaSyARfDct4ecrevMJjHgcrjmPOLfbM6X9N7w">
</a>
</div>
    		 
    		 
    		 
    		 
    		 '+"</span>");	
}	
</script>

         
    

<div >
<!-- 滑鼠擊點產生地圖script -->



</div>
<!-- 產生出的車站資訊表格 -->
<div >
<table  class="for-table table" >
                       <thead>
                          <tr>
                             <th width="100">地區</th>
							<th width="100">站名</th>
							<th>車站地址</th>
							<th>地圖</th>
							
                          </tr>
                       </thead>
                      <tbody id="tbo">
                      </tbody>
                       <tfoot>
                   
</table>
<div id="gm">

</div>

</div>
<div class="row">
   <div class="col-md">
                                <!-- 地圖 -->
   <a href="http://maps.google.com/maps?q=新北市金山區中山路87號	&amp;z=1" data-geo="" target="_blank">
          <img class="map" alt="新北市金山區中山路87號	" src="https://maps.google.com/maps/api/staticmap?zoom=15&size=300x300&maptype=terrain&sensor=false&center=新北市金山區中山路87號	&markers=color:blue%7Clabel:S%7C新北市金山區中山路87號&key=AIzaSyARfDct4ecrevMJjHgcrjmPOLfbM6X9N7w">
            </a>
    </div>
 </div>

<!-- googleMapFunction -->
  
<!-- googleMapFunction -->
    
			
		</div>
	</div>



</section>
<!-- 以上為地區顯示車站 -->



	<script src="/startrip/assets/js/jquery.min.js"></script>

	<script src="/startrip/assets/js/popper.min.js"></script>
	<script src="/startrip/assets/js/bootstrap.min.js"></script>
	<script src="/startrip/assets/js/owl.carousel.min.js"></script>

	<script src="/startrip/assets/js/bootstrap-datepicker.js"></script>
	<script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
	<script src="/startrip/assets/js/jquery.easing.1.3.js"></script>

	<script src="/startrip/assets/js/select2.min.js"></script>

	<script src="/startrip/assets/js/main.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
				areas[i].addEventListener("click", Click);
			}
		});

		function mouseOver() {
			console.log(this.id);
			// document.images[0].src = "images/MapTaipei.gif"; 
			//console.log("QQQ");
			document.images[0].src = "/startrip/assets/transport/images/map/map"
					+ this.id + ".png";
			//console.log("/startrip/assets/transport/images/map/map"+ this.id +".png");
		}

		function mouseOut() {
			document.images[0].src = "/startrip/assets/transport/images/taiwan.png";
		}

		function Click() {
			// document.getElementById("mapdiv").innerHTML = "<img src='images/Taipei.gif'/>";
			document.getElementById("mapdiv").innerHTML = "<img src='images/"
					+ this.id.substr(2) + ".gif'/>";
					this.innerHTML = '您選的座位為' + this.id.substr(5) + '號';
			$("#xx").html("<span>"+'您選的座位為'+this.id.substr(5)+'號'+"</span>");
		}
	</script>
	<script>
	function test(){
		if($(".tt").text()=="台北"){
			alert("台北");
		}else{
			alert($(".tt").text());
		}
			
		
	}
	
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
						<area class=imgbut shape="rect" coords="201,54,248,76" id=01 alt="aa"  onclick="test()">
						<area class=imgbut shape="rect" coords="181,23,228,44" id=02>
						<area class=imgbut shape="rect" coords="229,28,274,52" id=03>
						<area class=imgbut shape="rect" coords="122,186,170,208" id=04>
						<area class=imgbut shape="rect" coords="53,303,100,328" id=05>
						<area class=imgbut shape="rect" coords="208,99,260,122" id=06>
						<area class=imgbut shape="rect" coords="176,196,224,215" id=07>
						<area class=imgbut shape="rect" coords="136,278,185,302" id=08>
						<area class=imgbut shape="rect" coords="84,335,132,359" id=09>
						<area class=imgbut shape="rect" coords="54,260,100,283" id=10>
						<area class=imgbut shape="rect" coords="37,227,86,252" id=11>
						<area class=imgbut shape="rect" coords="36,193,85,212" id=12>
						<area class=imgbut shape="rect" coords="69,161,119,185" id=13>
						<area class=imgbut shape="rect" coords="111,137,160,160" id=14>
						<area class=imgbut shape="rect" coords="92,104,142,128" id=15>
						<area class=imgbut shape="rect" coords="155,93,204,114" id=16>
						<area class=imgbut shape="rect" coords="148,44,197,67" id=17>
					</map>
					<div>
						<h3 id="xx"></h3>
					</div>
				</a>
			</div>
<div>
<table border="1" cellpadding="10" cellspacing="0"class="table  table-bordered">
		<tr>
			
			<th>地區</th>
			<th>站名</th>
			<th>車站地址</th>
		</tr>

		<c:forEach items='${stationList}' var='select'>
			<tr class="trr">
			
				<td class="tt">${select.area}</td>
				<td>${select.stationName}</td>
				<td>${select.address}</td>

			</tr>
		</c:forEach>
	</table>
						<h3>8</h3>
					</a>
				</div>
		</div>
	</div>
	</section>


	<!-- 以上為地圖顯示區塊 -->

	<h2 class="title01">1 起迄地區查詢</h2>
	<div class="search">
		<form id="form1" name="form1" method="post">
			<label for="city1" class=""> 起站地區：</label>
			<div>
				<select id="city1" name="city1" style="width: 120px">
					<option value="">請選擇</option>
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
			</div>
			<label for="city2" class=""> 訖站地區：</label>
			<div>
				<select id="city2" name="city2" style="width: 120px">
					<option value="">請選擇</option>
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
			</div>
		</form>
	</div>
	<!--以下為起訖站查詢 	-------------------------------------------------------------------------------------------- -->

	<!-- 起訖站查詢function -->
	<script>
       
        document.addEventListener("DOMContentLoaded", function () {
           
            var areas=document.querySelectorAll("area.imgbut");
            var areasLen=areas.length;
            console.log(areas);
            console.log(areasLen);
            for(var i=0;i<areasLen;i++){
                areas[i].addEventListener("mouseover",mouseOver);
                areas[i].addEventListener("mouseout",mouseOut);
                areas[i].addEventListener("click",Click);
            }
        });  

     
        function mouseOver() {  
        	console.log(this.id);    
            // document.images[0].src = "images/MapTaipei.gif"; 
            //console.log("QQQ");
            document.images[0].src = "/startrip/assets/transport/images/map/map"+ this.id + ".png"; 
            //console.log("/startrip/assets/transport/images/map/map"+ this.id +".png");
        }


        function mouseOut() {            
            document.images[0].src = "/startrip/assets/transport/images/taiwan.png" ;
        }


        function Click() {            
            // document.getElementById("mapdiv").innerHTML = "<img src='images/Taipei.gif'/>";
            document.getElementById("mapdiv").innerHTML = 
            "<img src='images/"+this.id.substr(2)+".gif'/>";
        }
        
    </script>
	<!-- 以上為起訖站查詢function -->
	<!-- 起訖站查詢版面開始 -->
	<h2 class="title01">2 起迄站查詢</h2>
	<div class="search">

		<label for="area" class=""> 起站地區：</label>
		<div>
			<select id="area" name="area" style="width: 120px">
				<option value="" selected="selected">請選擇</option>
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
		</div>
		<label for="origin" class=""> 上車站：</label>
		<div>
			<select id="origin" name="origin" style="width: 120px">
				<option value="" selected="selected">請選擇</option>
				<c:forEach items='${stationList}' var='select'>


					<option value="">${select.stationName}</option>

				</c:forEach>
			</select>
		</div>
		<label for="destination" class=""> 下車站：</label>
		<div>
			<select id="destination" name="destination" style="width: 120px">
				<option value="" selected="selected">請選擇</option>
				<c:forEach items='${stationList}' var='select'>


					<option value="">${select.stationName}</option>

				</c:forEach>

			</select>
		</div>
	</div>
	<!-- 以上為起訖站查詢版面----------------------------- -->


	<!--      以下為用地區選車站----------- -->
	<h2 class="title04">3 營業據點路線列表</h2>

	<script>	
document.addEventListener("DOMContentLoaded", function () {
document.getElementById("area3").addEventListener("change", createStation);
	

function setdisplay() {
	var y = document.getElementById("idSelectYear").value;
	document.getElementById("area3").innerHTML = ${select.stationName};
	
}

function prepareyear() {
    for (i = 2010; i <= 2020; i++) {   //新增年
        var opt = document.createElement("option");
        opt.setAttribute("value", i);
        var optTxt = document.createTextNode(i);
        opt.appendChild(optTxt);

        document.getElementById('point').appendChild(opt);

    }
    function createday() {
    	 var y = document.getElementById("point").value;
    	
    }
}
	
	
	
</script>
	<div class="search">
		<label for="area3" class="">請選擇地區：</label>
		<div>
			<select id="area3" name="area3" style="width: 120px">
				<option value="" selected="selected">請選擇</option>

				<option value="14">基隆</option>

				<option value="1">台北</option>

				<option value="16">新北</option>

				<option value="3">桃園</option>

				<option value="4">新竹</option>

				<option value="5">苗栗</option>

				<option value="6">台中</option>

				<option value="7">南投</option>

				<option value="8">彰化</option>

				<option value="9">雲林</option>

				<option value="10">嘉義</option>

				<option value="11">台南</option>

				<option value="12">高雄</option>

				<option value="13">屏東</option>

				<option value="15">宜蘭</option>

				<option value="17">台東</option>
			</select>
		</div>
		<label for="point" class="">營業據點：</label>
		<div>
			<select id="point" name="point" style="width: 120px">
				<option value="" selected="selected">請選擇</option>
				<option value="" selected="selected">請選擇</option>


			</select>
		</div>

		<input type="submit" value="查詢" name="submit" style="width: 60px">
		<input type="hidden" id="opt" name="opt" value="search">
	</div>

	<!-- 以上為用地區選車站------------------- -->




	<!-- 	<div id="mapdiv" style="float:left;width:auto;height:auto;"></div>	 -->




	<table border="1" cellpadding="10" cellspacing="0"
		class="table  table-bordered">
		<tr>
			<th>站名編號</th>
			<th>地區</th>
			<th>站名</th>
			<th>車站地址</th>
		</tr>

		<c:forEach items='${stationList}' var='select'>
			<tr>
				<td>${select.stationId}</td>
				<td>${select.area}</td>
				<td>${select.stationName}</td>
				<td>${select.address}</td>

			</tr>
		</c:forEach>
	</table>


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
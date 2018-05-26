<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>StarTrip-${RtId.rtName}</title>
<meta name="description"
	content="Free Bootstrap 4 Theme by ProBootstrap.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

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

<link rel="stylesheet" href="/startrip/assets/css/select2.css">


<link rel="stylesheet" href="/startrip/assets/css/helpers.css">
<link rel="stylesheet" href="/startrip/assets/css/style.css">
<link rel="stylesheet" href="/startrip/assets/css/rthome.css">
<link rel="stylesheet" href="/startrip/assets/css/rthome2.css">
<link rel="stylesheet" href="/startrip/assets/css/rthome3.css">
<link rel="stylesheet" href="/startrip/assets/css/rthome4.css">

<style>
.probootstrap-cover .overlay {
	position: absolute;
	background: rgba(0, 0, 0, 0.2);
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}

.col-md-123 {
	padding: 3%;
}

.border-bottom {
	padding: 2%;
}

.littletitle1 {
	text-align: left;
}

#section-home {
	padding-top: 45px;
	padding-bottom: 45px;
}

.probootstrap-form {
	margin-bottom: 0;
	padding-top: 15px;
	padding-bottom: 15px;
}

.owl-dots {
	display: none;
}

.owl-stage-outer {
	padding-top: 0px !important;
	padding-bottom: 0px !important;
}

#inputState {
	height: 46px;
	color: rgb(151, 148, 148)
}

.commentdate {
	text-align: right;
}

.inputState label, .inputState select {
	height: 46px;
	width: 100%;
	color: rgb(151, 148, 148)
}

.imgmaxsize {
	width: 795px;
	height: 550px;
}

.popwindow {
	margin: 100px
}

.imglist {
	height: 80px;
}

tbody th img {
	max-width: 180px;
	height: 130px;
}

.review {
	text-align: right;
	padding: 2%;
}

.probootstrap-section-heading {
	border-bottom: #00CA4C 5px solid;
	padding: 1%;
}

.littletitle1 {
	padding-top: 2%;
}

.map {
	height: 200%;
	width: 435.5%;
}

.row2 {
	padding-top: 20%;
}

.col-md-1234 {
	width: 100%;
	text-align: center;
}

.probootstrap_section {
	padding-top: 0%;
	padding-bottom: 3%;
}

.btn {
	display: inline-block;
	font-weight: 300;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	padding: 0.5rem 0.75rem;
	font-size: 1rem;
	line-height: 1.25;
	border-radius: 0.25rem;
	-webkit-transition: all 0.15s ease-in-out;
	-o-transition: all 0.15s ease-in-out;
	transition: all 0.15s ease-in-out;
}

.btn:focus, .btn:hover {
	text-decoration: none;
}

.btn:focus, .btn.focus {
	outline: 0;
	-webkit-box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.25);
	box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.25);
}

.btn.disabled, .btn:disabled {
	opacity: .65;
}

.btn:active, .btn.active {
	background-image: none;
}

.progress-bar {
	/* 	    	margin-top: 10px; */
	
}

.progress-label {
	margin-top: 5px;
	width: 50px;
}

.travler-rank {
	width: 300px;
}

.review-image {
	height: 120px;
	margin: 5px;
}

.review-memberphoto {
	/* 照片圓圈大小倚靠各div的class設定 */
	width: 80px;
	height: 80px;
	border-radius: 50%;
}

.ul li {
	list-style-type: none;
}

.container1 {
	text-align: center;
	width: 100%;
	height: 200px;
}

.mid {
	padding-top: 4%;
	width: 135%;
	height: 200%;
}

ul li {
			list-style-type: none;
		}
</style>

</head>

<body>

	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/rt/03.jpg');">
		<div class="overlay"></div>
	</section>

	<!-- END section -->


	<div class="container">
		<div class="row">
			<div class="col-md">
				<div class="col-md-123">
					<h2 class="display-4 probootstrap-section-heading">${RtId.rtName}</h2>

					<div class="littletitle1">
						<div>${RtId.rtCuisine}</div>
						<div>${RtId.teCategory}</div>
						<div>${RtId.rtPhone}</div>
						<div>${RtId.rtCounty}</div>
						<div>${RtId.rtArea}</div>
					</div>
				</div>
				<div class="col-md-1234">
					<a href="/startrip/reservation/${RtId.rtId}"
						class="btn btn-primary btn-block">立&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;即&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;訂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位</a>
				</div>
			</div>
		</div>
	</div>

	<!-- END section -->

	<div class="container">
		<div class="row">
			<!-- 相片 + 評分 + 地圖 -->
			<div class="container">
				<div class="col-md-9">
					<!-- 相片 section -->
					<section class="probootstrap_section">
						<div class="container">
							<div class="mid">
								<div class="owl-carousel js-owl-carousel-2">

									<!-- photo slide item -->
									<div
										class="media probootstrap-media d-block align-items-stretch">
										<img src="/startrip/getPicture/rtImage/${OneImage1}" value="1"
											class="img-fluid mainimg">
									</div>
									<!-- END photo slide item -->
									<!-- photo slide item -->
									<div
										class="media probootstrap-media d-block align-items-stretch">
										<img src="/startrip/getPicture/rtImage/${OneImage2}" value="2"
											class="img-fluid mainimg">
									</div>
									<!-- END photo slide item -->
									<!-- photo slide item -->
									<div
										class="media probootstrap-media d-block align-items-stretch">
										<img src="/startrip/getPicture/rtImage/${OneImage3}" value="3"
											class="img-fluid mainimg">
									</div>
									<!-- END photo slide item -->
									<!-- photo slide item -->
									<div
										class="media probootstrap-media d-block align-items-stretch">
										<img src="/startrip/getPicture/rtImage/${OneImage4}" value="3"
											class="img-fluid mainimg">
									</div>
									<!-- END photo slide item -->
									<!-- photo slide item -->
									<div
										class="media probootstrap-media d-block align-items-stretch">
										<img src="/startrip/getPicture/rtImage/${OneImage5}" value="3"
											class="img-fluid mainimg">
									</div>
									<!-- END photo slide item -->
									<!-- photo slide item -->
									<div
										class="media probootstrap-media d-block align-items-stretch">
										<img src="/startrip/getPicture/rtImage/${OneImage6}" value="3"
											class="img-fluid mainimg">
									</div>
									<!-- END photo slide item -->

								</div>
							</div>
						</div>
					</section>
					<!-- END section -->
				</div>
			</div>
			<div class="col-md-3">
				<div class="container1">
					<a href="http://maps.google.com/maps?q=${RtId.rtAddress}&amp;z=11"
						data-geo="" target="_blank"> <img class="map"
						alt="${RtId.rtAddress}"
						src="http://maps.google.com/maps/api/staticmap?zoom=15&size=500x200&maptype=terrain&sensor=false&center=${RtId.rtAddress}&markers=color:green%7Clabel:H%7C${RtId.rtAddress}&key=AIzaSyARfDct4ecrevMJjHgcrjmPOLfbM6X9N7w">
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- 政策提示： -->

	<div class="container">

		<div class="row">
			<div class="row2">
				<div class="col-md">
					<!-- 規定 -->
					<br>
					<h5>餐廳詳細資料：</h5>
					<br>
					<table rules="none" class="table table-hover ml-3">
						<tbody>
							<tr>
								<th width="4%" scope="row">1.</th>
								<td>營業時間&nbsp;:&nbsp;${RtId.rtBusinesshours}</td>
							</tr>
							<!-- 政策提示生成起始 -->
							<tr>
								<th width="4%" scope="row">2.</th>
								<td>價位&nbsp;:&nbsp;${RtId.rtPricepount}</td>
							</tr>
							<!-- 政策提示生成結束 -->
							<tr>
								<th scope="row">3.</th>
								<td>地址 &nbsp;:&nbsp;${RtId.rtAddress}</td>
							</tr>
							<tr>
								<th scope="row">4.</th>
								<td>網址 &nbsp;:&nbsp;${RtId.rtUrl}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>



	<!-- 規定 -->

	<!--評論 -->
	<div class="container">
		<hr>
		<div class="row justify-content-between">
			<div class="col-md-8">
				<div class="title_text">
					<h5>評論</h5>
				</div>
			</div>
			<div class="col-md-4">
				<a href="/startrip/review/restaurantReviewEdit/${RtId.rtId }"
					class="btn btn-primary">發表評論</a> <a href=""
					class="btn btn-outline-primary">即時客服</a>
			</div>
		</div>
		<div class="row">
			<!-- 旅客評等 -->
			<!-- <p class="col-md-3">旅客評等</p> -->
			<label class="sr-only-focusable">旅客評等</label>
			<!-- 旅客評等 -->
			<div class="travler-rank col-md-3">
				<div class="progress">
					<span class="progress-label">很棒</span>
					<div class="progress-bar" role="progressbar"
						style="width: ${rankArr[4]/rankSize *100}%"
						aria-valuenow="${rankArr[4]/rankSize *100}" aria-valuemin="0"
						aria-valuemax="100">
						<fmt:formatNumber type="number" value="${rankArr[4]/rankSize *100}"
							maxFractionDigits="0" />
						%
					</div>
				</div>

				<div class="progress">
					<span class="progress-label">非常好</span>
					<div class="progress-bar" role="progressbar"
						style="width: ${rankArr[3]/rankSize *100}%"
						aria-valuenow="${rankArr[3]/rankSize *100}" aria-valuemin="0"
						aria-valuemax="100">
						<fmt:formatNumber type="number" value="${rankArr[3]/rankSize *100}"
							maxFractionDigits="0" />
						%
					</div>
				</div>

				<div class="progress">
					<span class="progress-label">普通</span>
					<div class="progress-bar" role="progressbar"
						style="width: ${rankArr[2]/rankSize *100}%"
						aria-valuenow="${rankArr[2]/rankSize *100}" aria-valuemin="0"
						aria-valuemax="100">
						<fmt:formatNumber type="number" value="${rankArr[2]/rankSize *100}"
							maxFractionDigits="0" />
						%
					</div>
				</div>

				<div class="progress">
					<span class="progress-label">差</span>
					<div class="progress-bar" role="progressbar"
						style="width: ${rankArr[1]/rankSize *100}%"
						aria-valuenow="${rankArr[1]/rankSize *100}" aria-valuemin="0"
						aria-valuemax="100">
						<fmt:formatNumber type="number" value="${rankArr[1]/rankSize *100}"
							maxFractionDigits="0" />
						%
					</div>
				</div>

				<div class="progress">
					<span class="progress-label">糟透了</span>
					<div class="progress-bar" role="progressbar"
						style="width: ${rankArr[0]/rankSize *100}%"
						aria-valuenow="${rankArr[0]/rankSize *100}" aria-valuemin="0"
						aria-valuemax="100">
						<fmt:formatNumber type="number" value="${rankArr[0]/rankSize *100}"
							maxFractionDigits="0" />
						%
					</div>
				</div>
			</div>

			<!-- 旅客類型 -->

			<div class="travler-rank col-md-2" id="selectCheckBox">
				<label class="sr-only-focusable">旅客類型</label>
				<ul>
					<li><input id="cr1" type="checkbox" name="family" value="家庭" onclick="selectByCriteria('${hotel.hotelid }')">家庭出遊</li>
					<li><input id="cr2" type="checkbox" name="couple" value="伴侶旅行" onclick="selectByCriteria('${hotel.hotelid }')">伴侶旅行</li>
					<li><input id="cr3" type="checkbox" name="alone" value="單獨旅行" onclick="selectByCriteria('${hotel.hotelid }')">單獨旅行</li>
					<li><input id="cr4" type="checkbox" name="business" value="商務" onclick="selectByCriteria('${hotel.hotelid }')">商務出差</li>
					<li><input id="cr5" type="checkbox" name="friends" value="朋友" onclick="selectByCriteria('${hotel.hotelid }')">好友旅行</li>
				</ul>
			</div>

			<!-- 月份 -->
			<div class="travler-rank col-md-3">
				<label class="sr-only-focusable">月份</label>
				<ul>
					<li><input type="checkbox" />3 月到 5 月</li>
					<li><input type="checkbox" />6 月到 8 月</li>
					<li><input type="checkbox" />9 月到 11 月</li>
					<li><input type="checkbox" />12 月到 2 月</li>
				</ul>
			</div>
		</div>

		<div id="displayReview">
			<c:forEach var='review' items='${reviews}'>
				<div class="row" style="margin: 16px;">
					<div class="col-md-1">
						<div class="row justify-content-center" style="margin: 16px;">
							<img class="review-memberphoto"
								src="<c:url value='/getPicture/memberIcon/${review.memberBean.avatar}'/>">
						</div>
						<div class="row justify-content-center">
							<div>
								<h6>${review.memberBean.username }</h6>
							</div>
						</div>
					</div>
					<div class="col-md-9">
						<div class="probootstrap_font-18">
							<h5>${review.title}</h5>
						</div>
						<div>${review.content }</div>
						<c:if test="${not empty review.photoPathList }">
							<c:forEach var="photoPath" items="${review.photoPathList }">
								<img src="/startrip/getPicture/reviewUpload/${photoPath }"
									class="review-image" />
							</c:forEach>
						</c:if>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- 訊息聊天框  -->
	<div style="float: right">

		<button class="btn btn-secondary" type="button"
			id="dropdownMessageButton" onclick="slideFrame()">聊天框</button>
		<div id="dropdownMessage"
			style="padding: 0px; display: none; border: #F8F8FF 1px solid">
			<div
				style="color: #fff; background-color: #00CA4C; border-color: #00CA4C;">
				對方帳號名</div>
			<div id="displayMessage"
				style="width: 250px; height: 250px; overflow-y: auto;"></div>
			<div class="dropdown-divider "></div>
			<div>
				<textarea id="messages" rows="1" cols="25;" style="resize: none;"
					placeholder="請輸入訊息" maxlength="250"></textarea>
			</div>
			<div class="btn btn-secondary" id="sendText"
				onclick="initChat('${LoginOK.memberid }', 6)">傳二</div>
		</div>

	</div>


	<div>
		<jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
	</div>
	<div>
		<jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" />
	</div>
	<!-- END footer -->


	<script src="/startrip/assets/js/jquery.min.js"></script>

	<script src="/startrip/assets/js/popper.min.js"></script>
	<script src="/startrip/assets/js/bootstrap.min.js"></script>
	<script src="/startrip/assets/js/owl.carousel.min.js"></script>

	<script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
	<script src="/startrip/assets/js/jquery.easing.1.3.js"></script>

	<script src="/startrip/assets/js/select2.min.js"></script>

	<script src="/startrip/assets/js/main.js"></script>

	<!-- 即時聊天 -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.0.3/sockjs.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>

	<script>
		//現在測試傳2號
		//不如這樣 自行實作三向交握
		//三向交握成功!!
		//接下來解決 廣播收到後建立聊天框
		function slideFrame() {
			$('#dropdownMessage').slideToggle(200);
		}

		var subscribedArr = [];

		var url = 'https://' + window.location.host + '/startrip/chat';
		var sock = new SockJS(url);
		var stomp = Stomp.over(sock);
		stomp.connect('guest', 'guest', function (frame) {
			console.log('*****  Connected  *****');
			// 	      stomp.subscribe("/brocast/message/" + '${LoginOK.memberid }', handleText);
			//訂閱廣播
			//一開始大家只有廣播
			stomp.subscribe("/brocast/message/" + '${LoginOK.memberid }', handleInitP2P);
		});

		function initChat(senderPk, receiverPk) {
			if (!issubscribed(receiverPk)) {
				stomp.subscribe("/target/message/" + senderPk + "/" + receiverPk, handleText);
				subscribedArr.push(receiverPk);
				console.log('subscribed!!');
			}
			//檢查是否有值 有值動作
			if ($('#messages').val()) {
				//清空輸入欄 並加入文字至上方顯示窗
				var message = $('#messages').val();
				$('#messages').val("");
				var myText = $("<span class='myText' style='color:#FFFFFF;text-align:center;'></span>").text(message);
				var myTextdiv = $("<div class='myTextDiv' style='border-radius:10px;background-color:#0066FF;float:right;clear:both;max-width:146px;word-wrap: break-word;margin-bottom:5px;'></div>").append(myText);
				$('#displayMessage').append(myTextdiv);
				//       var payload = JSON.stringify({'message':'Marco!'});
				var payload = JSON.stringify({ "message": message, "messageStatus": "1" });
				//stomp.send("/app/chatRoom/" + senderPk + "/" + receiverPk, {}, payload);
				//一開始先推到對方廣播
				stomp.send("/app/brocast/message/" + senderPk + "/" + receiverPk, {}, payload);
			}
		}

		function sendMessage(senderPk, receiverPk) {
			if (!issubscribed(receiverPk)) {
				stomp.subscribe("/target/message/" + senderPk + "/" + receiverPk, handleText);
				subscribedArr.push(receiverPk);
				console.log('subscribed!!');
			}
			//檢查是否有值
			if ($('#messages').val()) {
				//清空輸入欄 並加入文字至上方顯示窗
				var message = $('#messages').val();
				$('#messages').val("");
				var myText = $("<span class='myText' style='color:#FFFFFF;text-align:center;'></span>").text(message);
				var myTextdiv = $("<div class='myTextDiv' style='border-radius:10px;background-color:#0066FF;float:right;clear:both;max-width:146px;word-wrap: break-word;margin-bottom:5px;'></div>").append(myText);
				$('#displayMessage').append(myTextdiv);

				//       var payload = JSON.stringify({'message':'Marco!'});
				var payload = JSON.stringify({ "message": message });
				//stomp.send("/app/chatRoom/" + senderPk + "/" + receiverPk, {}, payload);
				//點對點通道
				stomp.send("/app/chatRoom/" + senderPk + "/" + receiverPk, {}, payload);
			}
		}

		function handleInitP2P(message) {
			console.log('handleInitP2P message:', message);
			var object = JSON.parse(message.body);
			//$('#output').append("<b>Received spittle: " + JSON.parse(message.body).message + "</b><br/>");
			var callBackText = $("<span class='callBackText' style='text-align:center;'></span>").text(JSON.parse(message.body).message);
			var callBackTextdiv = $("<div class='callBackTextDiv' style='border-radius:10px;background-color:#DDDDDD;float:left;clear:both;max-width:146px;word-wrap:break-word;margin-bottom:5px;'></div>").html(callBackText);
			$('#displayMessage').append(callBackTextdiv);
			//更改訊息發送位置
			//硬改改掉 好醜
			$('#sendText').attr('onclick', "sendMessage(" + object.receiverAccount + "," + object.senderAccount + ")");
			$('#sendText').text("發送至" + object.senderAccount);

			if (object.messageStatus == 1) {
				//通知對方 建立點對點通道
				var payload = JSON.stringify({ "messageStatus": "2" });
				//stomp.send("/app/chatRoom/" + senderPk + "/" + receiverPk, {}, payload);
				//利用brocast通知對方建立點對點通道
				stomp.send("/app/brocast/message/" + object.receiverAccount + "/" + object.senderAccount, {}, payload);
			} else if (object.messageStatus == 2) {
				console.log("連線成功");
			}
		}

		function handleText(message) {
			console.log('message:', message);
			//$('#output').append("<b>Received spittle: " + JSON.parse(message.body).message + "</b><br/>");
			var callBackText = $("<span class='callBackText' style='text-align:center;'></span>").text(JSON.parse(message.body).message);
			var callBackTextdiv = $("<div class='callBackTextDiv' style='border-radius:10px;background-color:#DDDDDD;float:left;clear:both;max-width:146px;word-wrap:break-word;margin-bottom:5px;'></div>").html(callBackText);
			$('#displayMessage').append(callBackTextdiv);
		}
		function issubscribed(receiverPk) {
			if (subscribedArr.indexOf(receiverPk) != -1) {
				return true;
			}
			return false;
		}

		$('#stopSTOMP').click(function () { sock.close() });
	</script>

	<script>
	//為了傳Id 此段沒用
//  $(document).ready(function(){
//		for(i=1;i<=5;i++){
//			$('#cr' + i).on('change',function(){
//				selectByCriteria();
//				console.log("繫結成功");
//			})
//		}
//	});

	function selectByCriteria(hotelId){
		var criteriaData = {};
		
//		criteriaData.family = $("#cr1").val();
//		criteriaData.couple = $("#cr2").val();
//		criteriaData.alone = $("#cr3").val();
//		criteriaData.business = $("#cr4").val();
		
		$("#selectCheckBox input:checked").each(function(idx,checkbox){
			console.log("A");
			console.log(checkbox);
			console.log(checkbox.attributes["name"].value);
			console.log(checkbox.attributes["value"].value);
			console.log("B");
			criteriaData[checkbox.attributes["name"].value] = checkbox.attributes["value"].value;
			console.log("C");
		});
		criteriaData.pK = hotelId;
		console.log(criteriaData);

		$.ajax({
			url : '/startrip/review/selectByCriteria',
			type : 'GET',
			data : criteriaData,
			//enctype: "multipart/form-data",
			//contentType : false,
			//processData : false,
			//dataType:"json",
			success : function(responce) {
				$('#displayReview').empty();				
				console.log(responce);				
				var docFrag = $(document.createDocumentFragment());
				for(i=0;i<responce.length;i++){
					console.log(responce[i].content);
					//大row
					var row = $('<div class="row" style="margin:16px;"></div>');

					var col1 = $('<div class="col-md-1"></div>');
					var innerRow1 = $('<div class="row justify-content-center" style="margin:16px;"></div>');
						if(responce[i].memberBean.avatar != null){
							var memberImg = $('<img class="review-memberphoto" src="/startrip/getPicture/memberIcon/' + responce[i].memberBean.avatar +'" />');
						}						
					var innerRow2 = $('<div class="row justify-content-center"></div>');
					var innerRow2content = $('<div><h6>' + responce[i].memberBean.username + '</h6></div>');
					innerRow2.append(innerRow2content);
					innerRow1.append(memberImg);
					col1.append([innerRow1, innerRow2]);

					var col2 = $('<div class="col-md-9"></div>');
					var title = $('<div class="probootstrap_font-18"><h5>' + responce[i].title + '</h5></div>');
					var content = $('<div>' + responce[i].content + '</div>');

					col2.append([title, content]);
					if(responce[i].photoPathList!=null){
					$.each(responce[i].photoPathList, function(idx,photoPath){
						var contentImg = $('<img src="/startrip/getPicture/reviewUpload/hotel/' + photoPath + '" class="review-image" />');
						col2.append(contentImg);
					});
					}
					row.append([col1, col2]);
					docFrag.append(row);
				}

				$('#displayReview').html(docFrag);
				
			},
			error:function(e){
				console.log(e);
			}
	
		});
	}
	</script>
	<script>
		 $(document).ready(function () {
             $("#my_popup").attr("hidden", false)
         })

         $('.js-owl-carousel-2').owlCarousel({
             loop: false,
             margin: 20,
             nav: false,
             autoplay: true,
             autoplayTimeout: 5000,
             smartSpeed: 800,
             stagePadding: 0,
             navText: ["<span class='ion-chevron-left'></span>", "<span class='ion-chevron-right'></span>"],
             responsive: {
                 0: {
                     items: 1
                 }
             }
         });

         $('#bookingnow').click(function () {
             $('html,body').animate({
                 scrollTop: $('#bookingposition').offset().top
             }, 800);
         });
         // 滑動至預定區間

         $(document).ready(function () {
             $('#my_popup').popup();

         });
         // 初始化跳出視窗區間
         $('#my_popup').popup({
             opacity: 0.4,
             // 設定不透明度

         });

         $('.imglist').click(function () {
             var imgval = $(this).attr("value")
             var clickimg = $(".mainimg[value=" + imgval + "]").parent().parent().parent()
             var activeimg = $(".owl-stage-outer>div .active").children().children().children()
             var activeimgval = activeimg.attr("value")
             if (imgval == activeimgval)
                 return
             var b = clickimg.parent().parent().parent()
             b.attr("class", "owl-carousel js-owl-carousel-2 owl-loaded owl-drag owl-grab")
             b.attr("class", "owl-carousel js-owl-carousel-2 owl-loaded owl-drag")
             b.children().children().css("transition", "0.8s")
             var imgwidthstart = clickimg.parent().attr("style").lastIndexOf(": ")
             var imgwidthend = clickimg.parent().attr("style").lastIndexOf("px;")
             var imgwidth = clickimg.parent().attr("style").substr(imgwidthstart + 2, imgwidthend - imgwidthstart - 2)
             var imglength = $("div .col-md.popwindow").children().length
             var a = imgwidth * -1 / imglength * (imgval - 1)
             var imgchoice = clickimg.parent().css("transform", "translate3d(" + a + "px, 0px, 0px)")
             activeimg.parent().parent().parent().removeClass("active")
             clickimg.attr("class", "owl-item active")

         })

         $(function () {
             $(document).tooltip({
                 items: "[title]",
                 content: function () {
                     var element = $(this);
                     if (element.is("[data-geo]")) {
                         var text = element.children().attr("map");
                         console.log(text)
                         return "<img class='map' alt='" + text +
                             "' src='https://maps.google.com/maps/api/staticmap?" +
                             "zoom=16&size=350x350&maptype=terrain&sensor=false&center=" +
                             text + "&key=AIzaSyAphlUZhilGS44rk9TBLOoMluxpNJa0Cfk'>";
                     }
                     if (element.is("[title]")) {
                         return element.attr("title");
                     }
                     if (element.is("img")) {
                         return element.attr("alt");
                     }
                 }
             });
         });
	</script>

</body>

</html>
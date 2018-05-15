<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>餐廳名稱</title>
	<meta name="description" content="Free Bootstrap 4 Theme by ProBootstrap.com">
	<meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

	<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

	<link rel="stylesheet" href="/startrip/assets/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="/startrip/assets/css/animate.css">
	<link rel="stylesheet" href="/startrip/assets/fonts/ionicons/css/ionicons.min.css">

	<link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">

	<link rel="stylesheet" href="/startrip/assets/fonts/flaticon/font/flaticon.css">

	<link rel="stylesheet" href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">

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

		.inputState label,
		.inputState select {
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
			padding-top: 15%;
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

		.btn:focus,
		.btn:hover {
			text-decoration: none;
		}

		.btn:focus,
		.btn.focus {
			outline: 0;
			-webkit-box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.25);
			box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.25);
		}

		.btn.disabled,
		.btn:disabled {
			opacity: .65;
		}

		.btn:active,
		.btn.active {
			background-image: none;
		}
		
		.progress-bar {
/* 	    	margin-top: 10px; */
 	    	
	    }
	    
	    .progress-label{
	    	margin-top: 5px;
	    	width: 50px; 
	    }
	    .travler-rank{
	    	width: 300px; 
	    
	    }
	    
	    .review-image{
	    	 height:120px;
	    	 margin:5px;
	    }
	    
	     .review-memberphoto {
            /* 照片圓圈大小倚靠各div的class設定 */
            
           	width: 80px;
           	height: 80px; 
           	border-radius: 50%;
        }
	</style>

</head>

<body>

	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/images/03.jpg');">
		<div class="overlay"></div>
	</section>

	<!-- END section -->


	<div class="container">
		<div class="row">
			<div class="col-md">
				<div class="col-md-123">
					<h2 class="display-4 probootstrap-section-heading">餐廳名稱</h2>

					<div class="littletitle1">
						<div>台灣台北中山區敬業二路69巷55號</div>
						<div>+886 2 8502 5779</div>
						<div>網址 : https://www.indianfoodtaiwan.com/?utm_source=tripadvisor&utm_medium=referral
						</div>

						<div>中山區</div>
						<div>高級餐廳</div>
						<div>日式料理</div>
						<div>下午茶</div>
					</div>


				</div>
				<div class="col-md-1234">
					<a href="/startrip/reservation" class="btn btn-primary">立&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;即&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;訂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位</a>
				</div>
			</div>
		</div>
	</div>

	<!-- END section -->

	<div class="container">
		<div class="row">
			<!-- 相片 + 評分 + 地圖 -->
			<div class="container">
				<!-- 相片 section -->
				<section class="probootstrap_section">
					<div class="container">
						<div class="row">
							<div class="col-md-123">
								<div class="owl-carousel js-owl-carousel-2">
									<!-- photo slide item -->
									<div>
										<div class="media probootstrap-media d-block align-items-stretch imgmaxsize">
											<img src="/startrip/assets\images\test1.jpg" value="1" name="XX" class="img-fluid mainimg">
										</div>
									</div>
									<!-- END photo slide item -->
									<!-- photo slide item -->
									<div>
										<div class="media probootstrap-media d-block align-items-stretch imgmaxsize">
											<img src="/startrip/assets\images\sq_img_1.jpg" value="2" name="AA" class="img-fluid mainimg">
										</div>
									</div>
									<!-- END photo slide item -->
									<!-- photo slide item -->
									<div>
										<div class="media probootstrap-media d-block align-items-stretch imgmaxsize">
											<img src="/startrip/assets\images\sq_img_2.jpg" value="3" name="BB" class="img-fluid mainimg">
										</div>
									</div>
									<!-- END photo slide item -->
								</div>
								<div></div>
							</div>
						</div>
					</div>
				</section>
				<!-- END section -->
			</div>
			<div class="col-md-3">
				<div class="row">
					<div class="container">
						<iframe class="map" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12159.728261117327!2d121.55548566496115!3d25.030380117784713!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442abc98a381297%3A0xe822c38c9e07609e!2sWoolloomooloo!5e0!3m2!1szh-TW!2stw!4v1525934478377"
						 width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
					</div>
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
								<td></td>
							</tr>
							<!-- 政策提示生成起始 -->
							<tr>
								<th width="4%" scope="row">2.</th>
								<td></td>
							</tr>
							<!-- 政策提示生成結束 -->
							<tr>
								<th scope="row">3.</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row">4.</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row">5.</th>

								<td></td>

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
				<a href="/startrip/review/UserReviewEdit/1" class="btn btn-primary">發表評論</a>
				<a href="" class="btn btn-outline-primary">即時客服</a>
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
					<div class="progress-bar" role="progressbar" style="width: ${ranks[0]/rankSize *100}%" aria-valuenow="${ranks[0]/rankSize *100}"
					 aria-valuemin="0" aria-valuemax="100">
						<fmt:formatNumber type="number" value="${ranks[0]/rankSize *100}" maxFractionDigits="0" />%</div>
				</div>

				<div class="progress">
					<span class="progress-label">非常好</span>
					<div class="progress-bar" role="progressbar" style="width: ${ranks[1]/rankSize *100}%" aria-valuenow="${ranks[1]/rankSize *100}"
					 aria-valuemin="0" aria-valuemax="100">
						<fmt:formatNumber type="number" value="${ranks[1]/rankSize *100}" maxFractionDigits="0" />%</div>
				</div>

				<div class="progress">
					<span class="progress-label">普通</span>
					<div class="progress-bar" role="progressbar" style="width: ${ranks[2]/rankSize *100}%" aria-valuenow="${ranks[2]/rankSize *100}"
					 aria-valuemin="0" aria-valuemax="100">
						<fmt:formatNumber type="number" value="${ranks[2]/rankSize *100}" maxFractionDigits="0" />%</div>
				</div>

				<div class="progress">
					<span class="progress-label">差</span>
					<div class="progress-bar" role="progressbar" style="width: ${ranks[3]/rankSize *100}%" aria-valuenow="${ranks[3]/rankSize *100}"
					 aria-valuemin="0" aria-valuemax="100">
						<fmt:formatNumber type="number" value="${ranks[3]/rankSize *100}" maxFractionDigits="0" />%</div>
				</div>

				<div class="progress">
					<span class="progress-label">糟透了</span>
					<div class="progress-bar" role="progressbar" style="width: ${ranks[4]/rankSize *100}%" aria-valuenow="${ranks[4]/rankSize *100}"
					 aria-valuemin="0" aria-valuemax="100">
						<fmt:formatNumber type="number" value="${ranks[4]/rankSize *100}" maxFractionDigits="0" />%</div>
				</div>
			</div>

			<!-- 旅客類型 -->
			<p class="col-md-3">旅客類型</p>
			<!-- 旅客類型 -->

			<!-- 月份 -->
			<p class="col-md-3">月份</p>
			<!-- 月份 -->
		</div>


		<c:forEach var='review' items='${reviews}'>
			<div class="row" style="margin:16px;">
				<div class="col-md-1">
					<div class="row justify-content-center" style="margin:16px;">
						<img class="review-memberphoto" src="<c:url value='/getPicture/${review.memberBean.mail}'/>">
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
					<div class="">${review.content }</div>
					<c:if test="${not empty review.photoPathList }">
						<c:forEach var="photoPath" items="${review.photoPathList }">
							<img src="/startrip/getPicture/reviewUpload/${photoPath }" class="review-image" />
						</c:forEach>
					</c:if>
				</div>
			</div>
		</c:forEach>

	</div>

	<div style="float:right">

		<button class="btn btn-secondary" type="button" id="dropdownMessageButton" onclick="slideFrame()">
			聊天框
		</button>
		<div id="dropdownMessage" style="padding:0px;display:none;border:#F8F8FF 1px solid">
			<div style="color: #fff;background-color: #00CA4C;
            border-color: #00CA4C;"> 對方帳號名</div>
			<div id="displayMessage" style="width:250px;height:250px;overflow-y:auto;"></div>
			<div class="dropdown-divider "></div>
			<div>
				<textarea id="messages" rows="1" cols="25;" style="resize:none;" placeholder="請輸入訊息" maxlength="250"></textarea>
			</div>
			<div class="btn btn-secondary" id="sendText" onclick="initChat('${LoginOK.memberid }', 6)">傳二</div>
		</div>

	</div>


	<section class="probootstrap_section">
		<div class="container">
			<div class="row text-center mb-5 probootstrap-animate">
				<div class="col-md-12">
					<h2 class="display-4 probootstrap-section-heading">附近美食</h2>
				</div>
			</div>

			<div class="row probootstrap-animate">
				<div class="col-md-12">
					<div class="owl-carousel js-owl-carousel">
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-teatro-de-la-caridad"></span>
							<em>Teatro de la Caridad</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-royal-museum-of-the-armed-forces"></span>
							<em>Royal Museum of the Armed Forces</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-parthenon"></span>
							<em>Parthenon</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-marina-bay-sands"></span>
							<em>Marina Bay Sands </em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-samarra-minaret"></span>
							<em>Samarra Minaret</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-chiang-kai-shek-memorial"></span>
							<em>Chiang Kai Shek Memorial</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-heuvelse-kerk-tilburg"></span>
							<em>Heuvelse Kerk Tilburg</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-cathedral-of-cordoba"></span>
							<em>Cathedral of Cordoba</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-london-bridge"></span>
							<em>London Bridge</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-taj-mahal"></span>
							<em>Taj Mahal</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-leaning-tower-of-pisa"></span>
							<em>Leaning Tower of Pisa</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-burj-al-arab"></span>
							<em>Burj al Arab</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-gate-of-india"></span>
							<em>Gate of India</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-osaka-castle"></span>
							<em>Osaka Castle</em>
						</a>
						<a class="probootstrap-slide" href="#">
							<span class="flaticon-statue-of-liberty"></span>
							<em>Statue of Liberty </em>
						</a>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->



	<footer class="probootstrap_section probootstrap-border-top">
		<div class="row pt-5">
			<div class="col-md-12 text-center">
				<p class="probootstrap_font-14">
					&copy; 2017. All Rights Reserved.
					<br> Designed &amp; Developed by
					<a href="https://probootstrap.com/" target="_blank">ProBootstrap</a>
					<small> (Don't remove credit link on this footer. See
						<a href="https://probootstrap.com/license/">license</a>)
					</small>
				</p>
				<p class="probootstrap_font-14">
					Demo Images:
					<a href="https://unsplash.com/" target="_blank">Unsplash</a>
				</p>
			</div>
		</div>
	</footer>


	<script src="/startrip/assets/js/jquery.min.js"></script>

	<script src="/startrip/assets/js/popper.min.js"></script>
	<script src="/startrip/assets/js/bootstrap.min.js"></script>
	<script src="/startrip/assets/js/owl.carousel.min.js"></script>

	<script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
	<script src="/startrip/assets/js/jquery.easing.1.3.js"></script>

	<script src="/startrip/assets/js/select2.min.js"></script>

	<script src="/startrip/assets/js/main.js"></script>

	<!-- 即時聊天 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.0.3/sockjs.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>

	<script>
		//現在測試傳2號
		//不如這樣 自行實作三向交握
		//三向交握成功!!
		//接下來解決 廣播收到後建立聊天框
		function slideFrame() {
			$('#dropdownMessage').slideToggle(200);
		}

		var subscribedArr = [];

		var url = 'http://' + window.location.host + '/startrip/chat';
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

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>餐廳名稱</title>
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
<link rel="stylesheet" href="/startrip/assets/css/jquery-ui.css">

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
	padding: 1%;
}

.col-md {
	text-align: left;
}

.border-bottom {
	padding: 2%;
}

.littletitle1 {
	text-align: left;
	padding-top: 2%;
}

.probootstrap-section-heading {
	border-bottom: #00CA4C 5px solid;
	padding: 2%;
}

.headline1 {
	color: #00CA4C;
	display: inline;
}

.bigheadline1 {
	padding-bottom: 4%;
}

.headline2 {
	color: #e1e100;
	display: inline;
}

.img-fluid {
	width: 255px;
	height: 200px;
}

.intermediate {
	padding: 0em 30em;
}

.probootstrap_section {
	text-align: center;
}

.col-md {
	padding: 10px;
}

.col-md1 {
	width: 50%;
	margin: 0px auto
}

.review {
	text-align: right;
	padding: 2%;
}

.probootstrap_section {
	padding-top: 1%;
	padding-bottom: 1%;
}

.bookingbutton {
	text-align: center;
}

.form-group {
	text-align: left;
}

.ion-calendar {
	text-align: right;
	padding-right: 78%;
}

.button1 {
	text-align: right;
	padding-yop: 4%;
	padding-bottom: 2%;
}

.modal-title {
	color: #FF3333;
	text-align: center;
	border-bottom: #00CA4C 2px solid;
}
</style>

</head>

<body>

	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/03.jpg');">
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
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- END section -->
	<section class="probootstrap_section">
		<form:form method="post" modelAttribute="RtBookingBean"
			action="insertRtBooking">
			<!--  method="post" modelAttribute="RtDetailsBean" action="insertRestaurant" -->
			<div class="intermediate">
				<div class="container">
					<div class="bigheadline1">
						<h1 class="headline1">訂位基本資訊</h1>
					</div>


					<div class="form-group">
						<label for="account">訂位者姓名&nbsp;:&nbsp;</label>
						<form:input type="text" class="form-control" path="crName"
							placeholder="王大明等..." autofocus="autofocus" />
						<!-- 							<p>(不可空白,至少兩個字且必須為中文字)</p> -->
						<!-- required="required" -->
					</div>
					<div class="form-group">
						<label>連絡電話&nbsp;:&nbsp;</label>
						<form:input type="text" class="form-control" path="crPhone"
							placeholder="09XX-XXXXXX" autofocus="autofocus" />
						<!-- required="required" -->
					</div>

					<div class="form-group">大人幾位&nbsp;:&nbsp;</div>
					<form:select path="bgPeople" class="js-states form-control"
						id="id_label_single" style="width: 100%;">
						<form:option value="1">1</form:option>
						<form:option value="2">2</form:option>
						<form:option value="3">3</form:option>
						<form:option value="4">4</form:option>
						<form:option value="5">5</form:option>
						<form:option value="6">6</form:option>
						<form:option value="7">7</form:option>
						<form:option value="8">8</form:option>
					</form:select>
					<br>
					<div class="form-group">小孩幾位&nbsp;:&nbsp;</div>
					<form:select path="cnPeople" class="js-states form-control"
						id="id_label_single" style="width: 100%;">
						<form:option value="0">0</form:option>
						<form:option value="1">1</form:option>
						<form:option value="2">2</form:option>
						<form:option value="3">3</form:option>
						<form:option value="4">4</form:option>
						<form:option value="5">5</form:option>
						<form:option value="6">6</form:option>
						<form:option value="7">7</form:option>
						<form:option value="8">8</form:option>
					</form:select>
					<br>
					<div class="form-group">兒童專用座椅&nbsp;:&nbsp;</div>
					<form:select path="cnChair" class="js-states form-control"
						id="id_label_single" style="width: 100%;">
						<form:option value="0">0</form:option>
						<form:option value="1">1</form:option>
						<form:option value="2">2</form:option>
						<form:option value="3">3</form:option>
						<form:option value="4">4</form:option>
						<form:option value="5">5</form:option>
						<form:option value="6">6</form:option>
						<form:option value="7">7</form:option>
						<form:option value="8">8</form:option>
					</form:select>
					<br>
					<div class="form-group">用餐日期&nbsp;:&nbsp;</div>
					<div class="form-group inputState">
						<div class="probootstrap-date-wrap">
							<label for="probootstrap-date-arrival"> <span
								class="icon ion-calendar"></span> <form:input path="bgDate"
									type="text" id="probootstrap-date-arrival" name="checkin"
									class="form-control" placeholder="日期" />
							</label>
						</div>
					</div>
					<div class="form-group">用餐時段&nbsp;:&nbsp;</div>
					<form:select path="bgPeriod" class="js-states form-control"
						id="id_label_single" style="width: 100%;">
						<form:option value="11:00">11:00</form:option>
						<form:option value="11:30">11:30</form:option>
						<form:option value="12:00">12:00</form:option>
						<form:option value="12:30">12:30</form:option>
						<form:option value="13:00">13:00</form:option>
						<form:option value="13:30">13:30</form:option>
						<form:option value="14:00">14:00</form:option>
						<form:option value="14:30">14:30</form:option>
						<form:option value="17:00">17:00</form:option>
						<form:option value="17:30">17:30</form:option>
						<form:option value="18:00">18:00</form:option>
						<form:option value="18:30">18:30</form:option>
						<form:option value="19:00">19:00</form:option>
						<form:option value="19:30">19:30</form:option>
						<form:option value="20:00">20:00</form:option>
						<form:option value="20:30">20:30</form:option>
						<form:option value="21:00">21:00</form:option>
						<form:option value="21:30">21:30</form:option>
						<form:option value="22:00">22:00</form:option>
					</form:select>
					<br>
					<div class="form-group">
						<label>其他注意事項&nbsp;:&nbsp;</label>
						<form:textarea cols="40" rows="8" class="form-control" path="bgNote"
							placeholder="如需特別告知等..." autofocus="autofocus" />
						<!-- required="required" -->
					</div>



					<div class="container">

						<div class="row">

							<div class="col-md">
								<!-- 規定 -->
								<br>
								<h5>訂位注意事項：</h5>
								<br>
								<table rules="none" class="table table-hover ml-3">
									<tbody>
										<tr>
											<th width="4%" scope="row">1.</th>
											<td>連絡電話如實填寫，方便通知您</td>
										</tr>
										<!-- 政策提示生成起始 -->
										<tr>
											<th width="4%" scope="row">2.</th>
											<td>用餐時間限制請依照餐廳公告為主</td>
										</tr>
										<!-- 政策提示生成結束 -->
										<tr>
											<th scope="row">3.</th>
											<td>訂位僅保留15分鐘</td>
										</tr>
										<tr>
											<th scope="row">4.</th>
											<td>明確標註，「幾位大人幾位小孩」，並寫上「所需兒童椅數量」</td>
										</tr>
										<tr>
											<th scope="row">5.</th>
											<td>如有特殊需求，標註於「其他注意事項」</td>
										</tr>
										<tr>
											<th scope="row">6.</th>
											<td>線上訂位完全及無法更改</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>
					</div>
					<!-- 規定 -->
					<!-- Button trigger modal -->
					<div class="bookingbutton">


						<input type="submit"
							value="確&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;認&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;訂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位"
							class="btn btn-primary btn-block">
						<!-- 						<button type="button" class="btn btn-primary" data-toggle="modal" -->
						<!-- 							data-target="#exampleModalCenter"> -->
						<!-- 							確&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;認&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;訂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位 -->
						<!-- 						</button> -->


					</div>
					<!-- Modal -->
					<!-- 					<div class="modal fade" id="exampleModalCenter" tabindex="-1" -->
					<!-- 						role="dialog" aria-labelledby="exampleModalCenterTitle" -->
					<!-- 						aria-hidden="true"> -->
					<!-- 						<div class="modal-dialog modal-dialog-centered" role="document"> -->
					<!-- 							<div class="modal-content"> -->
					<!-- 								<div class="modal-header" -->
					<!-- 									style="border-bottom: #00CA4C 3px solid;"> -->
					<!-- 									<h5 class="modal-title" id="exampleModalLongTitle">Star -->
					<!-- 										Trip 感謝您</h5> -->
					<!-- 								</div> -->
					<!-- 								<div class="modal-body"> -->
					<!-- 									<h3>餐廳名稱</h3> -->
					<!-- 									<br>已訂位完成 -->
					<!-- 								</div> -->
					<!-- 								<div class="modal-footer"> -->
					<!-- 									<div class="container"> -->
					<!-- 										<div class="review"> -->
					<!-- 											<a href="/startrip/" class="btn btn-primary">回首頁</a> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 								</div> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
				</div>
			</div>
		</form:form>

		<!-- 政策提示： -->

	</section>

	<!-- END section -->

	<div class="container">
		<div class="review">
			<a href="/startrip/restaurantHome" class="btn btn-primary">回餐廳首頁</a>
		</div>
	</div>




	<!-- Button trigger modal -->

	<!-- <div class="container"> -->
	<!-- <div class="button1"> -->
	<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"> -->
	<!--   回餐廳首頁 -->
	<!-- </button> -->
	<!-- </div> -->

	<!-- <!-- Modal -->
	-->
	<!-- <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"> -->
	<!--   <div class="modal-dialog" role="document"> -->
	<!--     <div class="modal-content"> -->
	<!--       <div class="modal-header">  -->
	<!--         <h5 class="modal-title">警語&nbsp;&nbsp;!&nbsp;&nbsp;!&nbsp;&nbsp;!</h5> -->
	<!--       </div> -->
	<!--       <div class="modal-body"> -->
	<!--       <p>離開此頁面，資料將消失</p> -->
	<!--       <p>如需再次訂位，須重填您的資料</p> -->
	<!--       </div> -->
	<!--       <div class="modal-footer"> -->
	<!--         <button type="button" class="btn btn-secondary" href="/startrip/">繼續離開</button> -->
	<!--         <button type="button" class="btn btn-primary" data-dismiss="modal">返回訂位</button> -->
	<!--       </div> -->
	<!--     </div> -->
	<!--   </div> -->
	<!-- </div> -->
	<!-- </div> -->

	<!-- END section -->


	<footer class="probootstrap_section probootstrap-border-top">
		<div class="row pt-5">
			<div class="col-md-12 text-center">
				<p class="probootstrap_font-14">
					&copy; 2017. All Rights Reserved. <br> Designed &amp;
					Developed by <a href="https://probootstrap.com/" target="_blank">ProBootstrap</a>
					<small> (Don't remove credit link on this footer. See <a
						href="https://probootstrap.com/license/">license</a>)
					</small>
				</p>
				<p class="probootstrap_font-14">
					Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a>
				</p>
			</div>
		</div>
	</footer>


	<script src="/startrip/assets/js/jquery.min.js"></script>

	<script src="/startrip/assets/js/popper.min.js"></script>
	<script src="/startrip/assets/js/bootstrap.min.js"></script>
	<script src="/startrip/assets/js/owl.carousel.min.js"></script>

	<script src="/startrip/assets/js/bootstrap-datepicker.js"></script>
	<script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
	<script src="/startrip/assets/js/jquery.easing.1.3.js"></script>

	<script src="/startrip/assets/js/select2.min.js"></script>

	<script src="/startrip/assets/js/main.js"></script>

	<script src="/startrip/assets/js/range.js"></script>


	<script src="/startrip/assets/js/jquery-ui.js"></script>
	<script src="/startrip/assets/js/jquery.popupoverlay.js"></script>
	<!-- 	<script src="/startrip/assets/js/reservation1.js"></script> -->


</body>
</html>
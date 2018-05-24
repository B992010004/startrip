<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>StarTrip&mdash;星遊網</title>
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
<link rel="stylesheet"
	href="/startrip/assets/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/startrip/assets/css/select2.css">
<link rel="stylesheet" href="/startrip/assets/css/helpers.css">
<link rel="stylesheet" href="/startrip/assets/css/style.css">
<link href="/startrip/assets/css/bootstrap/botton.css" rel="stylesheet"
	type="text/css" />
<style>
#section-home {
	padding-top: 45px;
	padding-bottom: 45px;
}.modal-body{
	border-top: #00CA4C 2px solid;
}
</style>
</head>
<body>
	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>
	<!-- END nav -->
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
	</section>
	<section class="probootstrap_section bg-light" id="section-contact">
		<div class="container">
			<div style="margin: auto" class="col-md-6  probootstrap-animate">
				<div class="probootstrap-form probootstrap-form-box mb60">
					<div class="row mb-3">
						<h2>忘記您的密碼嗎?</h2>

						<P>StarTrip 會寄送一封電子郵件給您，幫助您修改您的密碼</P>
						<div class="col-md-6">

							<div class="form-group">
								<label for="fgmail">信箱:</label> <input type="text"
									class="form-control" name="fgmail" placeholder="請輸入"
									id="fgmail" autofocus="autofocus" required="required" />
							</div>
							<div class="col-md-10" id="errorMsg"></div>
						</div>
					</div>
					<div style="margin: auto" class="col-md-6  probootstrap-animate">
				<div class="form-group">
						<button id="submitbutton" class="btn btn-primary">寄送電子郵件</button>
					</div>
				</div>
				
				</div>
				
			</div>
		</div>
	</section>

	<div><jsp:include page="/WEB-INF/views/member/login.jsp"
			flush="true" /></div>
	<div><jsp:include page="/WEB-INF/views/footer.jsp" flush="true" /></div>
	<script src="/startrip/assets/js/jquery.min.js"></script>
	<script src="/startrip/assets/js/popper.min.js"></script>
	<script src="/startrip/assets/js/bootstrap.min.js"></script>
	<script src="/startrip/assets/js/owl.carousel.min.js"></script>
	<script src="/startrip/assets/js/bootstrap-datepicker.js"></script>
	<script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
	<script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
	<script src="/startrip/assets/js/select2.min.js"></script>
	<script src="/startrip/assets/js/main.js"></script>

	<script>
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("submitbutton").addEventListener("click",
					fgpassword);
		})

		function fgpassword() {

			var ajaxdata = {
				mail : $('#fgmail').val(),
			}

			$
					.ajax({
						url : "/startrip/member/forgetpassword",
						type : "POST",
						data : ajaxdata,
						async : false,
						success : function(responseText, textStatus) {
							if (responseText == 0) {
								document.getElementById("errorMsg").innerHTML = "<font color=\"green\">已發送信件至您的信箱，請在30分鐘內重新設定密碼</BR>網頁將在五秒後返回上一頁</font>"
								var speed = 5000
								setTimeout("history.back()", speed);

							} else if (responseText == 1) {
								document.getElementById("errorMsg").innerHTML = "<font color=\"red\">帳號不存在</red>"
							} else {
								document.getElementById("errorMsg").innerHTML = "<font color=\"red\">請不要玩系統</red>"
							}
						},
						error : function() {

						}
					});

		}
	</script>
</body>
</html>
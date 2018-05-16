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
.img1 {
	width: 150px;
	height: 150px;
	border: 2px solid silver;
	margin: 10px;
}
</style>





</head>
<body>

	<div><jsp:include page="/WEB-INF/views/header.jsp" flush="true" /></div>

	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center text-center">
				<div class="col-md">
					<h2 class="heading mb-2 display-4 font-light probootstrap-animate">Get
						In Touch</h2>

					<p class="lead mb-5 probootstrap-animate"></p>
					<p>
						<a href="https://themewagon.com/theme_tag/free/" target="_blank"
							role="button"
							class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">More
							Templates Here</a>
					</p>
				</div>
			</div>
		</div>

	</section>
	<!-- END section -->


	<section class="probootstrap_section bg-light" id="section-contact">

		<div class="container" id="SignUp">


			<form:form method="post" modelAttribute="MemberBean"
				class="probootstrap-form probootstrap-form-box mb60"
				enctype="multipart/form-data" id="insertform">

				<H2 class="display-4 border-bottom probootstrap-section-heading"
					style="text-align: center">Sign Up</H2>
				<div class="row">

					<div class="col-md-6  probootstrap-animate">
						<div class="form-group">
							<label>信箱:</label>
							<form:input type="text" class="form-control" id="mail"
								name="mail" path='mail' placeholder="請輸入" autofocus="autofocus"
								required="required"></form:input>
							<span id="tips"></span>
						</div>
						<form:input type="text" path='validataCode' value=""
							style="display: none;" />
						<form:input type="text" path='registerDate' value=""
							style="display: none;" />
						<div class="form-group">
							<label>密碼:</label>
							<form:input type="password" class="form-control" name="mPwd"
								path="password" placeholder="請輸入" autofocus="autofocus"
								required="required" />
						</div>
						<div class="form-group">
							<label>姓名:</label>
							<form:input type="text" class="form-control" name="mName"
								path="username" placeholder="請輸入" autofocus="autofocus"
								required="required" />
						</div>
						<div class="form-group">
							<label>地址:</label>
							<form:input type="text" class="form-control" name="mAdd"
								path="address" placeholder="請輸入" autofocus="autofocus"
								required="required" />
						</div>
						<div class="form-group">
							<label>電話:</label>
							<form:input type="tel" class="form-control" id="phone"
								name="mPhone" path="phone" placeholder="請輸入"
								autofocus="autofocus" required="required" />
							<span id="err"></span>
						</div>

					</div>
					<div class="col-md-6  probootstrap-animate">
						<div class="form-group">
							<label>生日:</label>
							<form:input type="text" class="form-control" name="mbday"
								path="birthday" placeholder="請輸入" autofocus="autofocus"
								required="required" />
						</div>

						<div class="form-group">
							<img id="preview_progressbarTW_img" class="img1"
								src="/startrip/assets/images/membericon/user.jpg" /> <label
								for="progressbarTWInput" class="btn btn-primary"> input
								file</label>
							<form:input type="file" path="avatarImage"
								id="progressbarTWInput" name="mAvatar"
								accept="image/gif, image/jpeg, image/png" style="display: none;" />
						</div>

						<div class="form-group">
							<input type="button" id="hahaha" class="btn btn-primary"
								id="hahaha" style='position: absolute; right: 0;'
								value="Sign Up">
						</div>

					</div>
				</div>
			</form:form>
		</div>

		<div class="modal fade" id="chmodel" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalCenterTitle" aria-hidden="true"
			data-backdrop="static" data-keyboard="false">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">Star Trip</h5>
					</div>
					<div class="modal-body" style="text-align: center">成功加入會員
						，請登入繼續使用</div>
					<div class="modal-footer">
						<button type="button"
								class="btn btn-primary" id="backbutton">回首頁</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->
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
	<script src='https://www.google.com/recaptcha/api.js'></script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script
		src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
		async defer></script>

	<script>
		$("#progressbarTWInput").change(function() {
			readURL(this);
		});
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$("#preview_progressbarTW_img")
							.attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>
	<script>		
			$("#backbutton").click(function() {
				$("#insertform").submit();			
			})
		

		$(function insertform() {
			$("#hahaha")
					.click(
							function() {

								if ($('#phone').val().match(/^09[0-9]{8}$/)) {
									$("#err").html("");
								} else {
									$("#err")
											.html(
													"<font color=\'red\'>請輸入正確的手機</font> ");
								}
								var ajaxdata = {
									mail : $('#mail').val()
								}
								var aa = $('#mail').val();
								var aa1 = aa.match('@gmail.com');
								var aa2 = aa.match('@yahoo.com.tw');
								var aa3 = aa.match('@outlook.com');

								if (aa == "") {
									$("#tips").html(
											"<font color=\'red\'>請輸入帳號</font>");
								} else if (aa1 != null || aa2 != null
										|| aa3 != null) {
									$
											.ajax({
												url : "/startrip/checkid",
												type : "GET",
												data : ajaxdata,
												success : function(
														responseText,
														textStatus) {
													if (responseText == 0
															&& $('#phone')
																	.val()
																	.match(
																			/^09[0-9]{8}$/)) {
														$("#tips")
																.html(
																		"<font color=\"green\">恭喜，此帳號可以使用！</font>")
														$("#chmodel").modal({
															show : true
														});

													} else if (responseText == 1) {
														$("#tips")
																.html(
																		"<font color=\"red\">帳號已存在，請重新輸入！</font>");
													} else if (responseText == 0) {
														$("#tips")
																.html(
																		"<font color=\"green\">恭喜，此帳號可以使用！</font>")
													}

												},
												error : function() {
													alert("error");
												}
											});
								} else {
									$("#tips")
											.html(
													" <font color=\'red\'>信箱格式不正確  請使用Google，Yahoo或者outlook信箱</font> ");
								}

							})
		});
	</script>

</body>
</html>
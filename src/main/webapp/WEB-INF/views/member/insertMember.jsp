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

#section-home {
	padding-top: 45px;
	padding-bottom: 45px;
}
.modal-body{
	border-top: #00CA4C 2px solid;
}
</style>





</head>
<body>

	<div><jsp:include page="/WEB-INF/views/header.jsp" flush="true" /></div>

	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
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
								name="mail" path='mail' placeholder="YourEmail"
								autofocus="autofocus" required="required"></form:input>
							<span id="tips"></span>
						</div>
						<form:input type="text" path='validataCode' value=""
							style="display: none;" />
						<form:input type="text" path='registerDate' value=""
							style="display: none;" />
						<div class="form-group">
							<label>密碼:</label>
							<form:input type="password" class="form-control" name="mPwd"
								id="passck" maxlength="12" path="password"
								placeholder="請輸入6至12位密碼" autofocus="autofocus"
								required="required" />
							<span id="passtext"></span>
						</div>
						<div class="form-group">
							<label for="passck2">確認您的密碼:</label> <input type="password"
								maxlength="12" class="form-control" name="ckpassword"
								placeholder="CheckYourPASSWORD" id="passck2"
								autofocus="autofocus" required="required" /> <span
								class="col-md-10" id="errarea"></span>
						</div>
						<div class="form-group">
							<label>姓:</label>
							<form:input type="text" class="form-control" name="mName"
								path="firstname" placeholder="FirstName" autofocus="autofocus"
								required="required" />
						</div>
						<div class="form-group">
							<label>名:</label>
							<form:input type="text" class="form-control" name="mName"
								path="lastname" placeholder="LastName" autofocus="autofocus"
								required="required" />
						</div>
						<div class="form-group">
							<label>地址:</label>
							<form:input type="text" class="form-control" name="mAdd"
								path="address" placeholder="Address" autofocus="autofocus"
								required="required" />
						</div>


					</div>
					<div class="col-md-6  probootstrap-animate">

						<div class="form-group">
							<label>電話:</label>
							<form:input type="tel" class="form-control" id="phone"
								name="mPhone" path="phone" placeholder="Phone"
								autofocus="autofocus" required="required" />
							<span id="err"></span>
						</div>
						<div class="form-group">
							<label>生日:</label>
							<form:input type="text" class="form-control" name="mbday"
								id="probootstrap-date-departure" path="birthday"
								placeholder="Birthday" autofocus="autofocus" required="required" />
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
						<button type="button" class="btn btn-primary" id="backbutton">回首頁</button>
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
 
		
		
		$(function ckpass() {
			$("#passck").on('keyup',
							function() {
								var ckpassword = document
										.getElementById("passck").value;
								var strongRegex = new RegExp(
										"^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$",
										"g");
								var mediumRegex = new RegExp(
										"^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$",
										"g");
								var enoughRegex = new RegExp("(?=.{6,}).*", "g");
								if (ckpassword == "") {
									document.getElementById("passtext").innerHTML = "";
								} else if (strongRegex.test(ckpassword)) {
									document.getElementById("passtext").innerHTML = "<img src='/StarTrip/assets/images/membericon/e.jpg'>";
								} else if (mediumRegex.test(ckpassword)) {
									document.getElementById("passtext").innerHTML = "<img src='/StarTrip/assets/images/membericon/c.jpg'>";
								} else if (enoughRegex.test(ckpassword)) {
									document.getElementById("passtext").innerHTML = "<img src='/StarTrip/assets/images/membericon/b.jpg'>";
								}

							})
		})

		var flag1= false;
		var flag2= false;
		var flag3= false;
		var flag4= false;
		
		
		$(function insertform() {
			$("#hahaha").click(function() {
								$("#err").html("");
								document.getElementById("errarea").innerHTML = "";
								$("#tips").html("");

								if ($('#phone').val().match(/^09[0-9]{8}$/)) {
									$("#err").html("");
								} else {
									$("#err").html("<font color=\'red\'>請輸入正確的手機</font> ");
								}
								var ajaxdata = {
									mail : $('#mail').val()
								}
								var aa = $('#mail').val();
								var aa1 = aa.match('@gmail.com');
								var aa2 = aa.match('@yahoo.com.tw');
								var aa3 = aa.match('@outlook.com');
								var fgpassword = document
										.getElementById("passck").value;
								var ckpassword = document
										.getElementById("passck2").value;
								var passwordlength = document
										.getElementById("passck").value.length

								if (fgpassword == "" || ckpassword == "") {
									document.getElementById("errarea").innerHTML = "<font color=\'red\'>請輸入密碼</font>";
								} else if (passwordlength < 6) {
									document.getElementById("errarea").innerHTML = "<font color=\'red\'>密碼長度小於6</font>";
								} else if (fgpassword != ckpassword) {
									document.getElementById("errarea").innerHTML = "<font color=\'red\'>請輸入相同密碼</font>";
								}

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
															&& passwordlength >= 6
															&& fgpassword == ckpassword
															&& $('#phone')
																	.val()
																	.match(
																			/^09[0-9]{8}$/)) {
														$("#tips")
																.html(
																		"<font color=\"green\">恭喜，此帳號可以使用！</font>")
														document
																.getElementById("errarea").innerHTML = "";
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
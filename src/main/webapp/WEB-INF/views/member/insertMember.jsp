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
				enctype="multipart/form-data">
			
				<H2 class="display-4 border-bottom probootstrap-section-heading"
					style="text-align: center">Sign Up</H2>
				<div class="row">

					<div class="col-md-6  probootstrap-animate">
						<div class="form-group">
							<label>信箱:</label>
							 <form:input type="text" class="form-control"
								name="mEmail" path='mail' placeholder="請輸入" autofocus="autofocus"  required="required" ></form:input>
						</div>

						<div class="form-group">
							<label>密碼:</label> <form:input type="password" class="form-control"
								name="mPwd" path="password" placeholder="請輸入" autofocus="autofocus"  required="required" />
						</div>
						<div class="form-group">
							<label>姓名:</label> <form:input type="text" class="form-control"
								name="mName" path="username" placeholder="請輸入"  autofocus="autofocus"  required="required" />
						</div>
						<div class="form-group">
							<label>地址:</label> <form:input type="text" class="form-control"
								name="mAdd" path="address" placeholder="請輸入"  autofocus="autofocus"  required="required" /> 
						</div>
						<div class="form-group">
							<label>電話:</label> <form:input type="text" class="form-control"
								name="mPhone" path="phone" placeholder="請輸入"   autofocus="autofocus"  required="required"/>
						</div>

					</div>
					<div class="col-md-6  probootstrap-animate">
						<div class="form-group">
							<label>生日:</label> <form:input type="text" class="form-control"
								name="mbday" path="birthday" placeholder="請輸入"  autofocus="autofocus"  required="required" />
						</div>

						<div class="form-group">
							<img id="preview_progressbarTW_img" class="img1" value=""
								src="/WEB-INF/views/assets/images/membericon/snop.jpg" />
								 <label for="progressbarTWInput" class="btn btn-primary"> input
								file</label> 
								<form:input type="file" path="avatarImage" id="progressbarTWInput" name="mAvatar"
								accept="image/gif, image/jpeg, image/png"  style="display: none;" />
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary" id="submit"
								name="submit" value="Sign Up"
								style='position: absolute; right: 0;'>
						</div>

					</div>
				</div>
			</form:form>
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
</body>
</html>
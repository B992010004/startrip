<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>StarTrip&mdash;星遊網</title>
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet"
	href="assets/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="assets/css/select2.css">
<link rel="stylesheet" href="assets/css/helpers.css">
<link rel="stylesheet" href="assets/css/style.css">
<link href="assets/css/bootstrap/botton.css" rel="stylesheet" type="text/css" />
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/bootstrap-datepicker.js"></script>
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/select2.min.js"></script>
<script src="assets/js/main.js"></script>
<script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script
	src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
	async defer></script>
<meta name="description"
	content="Free Bootstrap 4 Theme by ProBootstrap.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

<script>
	document.addEventListener("DOMContentLoaded", function() {
		document.getElementById("nameid").addEventListener("blur", ckname);
		document.getElementById("idPwd").addEventListener("blur", chkPassword);
	})
	function ckname() {
		var getname = document.getElementById("nameid").value;
		if (getname == "") {
			document.getElementById("nname").innerHTML = "請輸入帳號"
		} else {
			document.getElementById("nname").innerHTML = ""
		}
	}

	function chkPassword() {

		var getPwd = document.getElementById("idPwd").value;

		if (getPwd == "") {
			document.getElementById("pswid").innerHTML = "請輸入密碼"
		} else {
			document.getElementById("pswid").innerHTML = ""
		}
	}
</script>
</head>


<body>

	<div><jsp:include page="/WEB-INF/views/header.jsp" flush="true" /></div>
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md">
					<h2 class="heading mb-2 display-4 font-light probootstrap-animate">Explore
						The World With Ease</h2>
					<p class="lead mb-5 probootstrap-animate"></p>
					<a href="onepage.html" role="button"
						class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">See
						OnePage Verion</a>
					</p>
				</div>
				<div class="col-md probootstrap-animate">
					<form action="#" class="probootstrap-form">
						<div class="form-group">
							<div class="row mb-3">
								<div class="col-md">
									<div class="form-group">
										<label for="id_label_single">From</label> <label
											for="id_label_single" style="width: 100%;"> <select
											class="js-example-basic-single js-states form-control"
											id="id_label_single" style="width: 100%;">
												<option value="Australia">Australia</option>
												<option value="Japan">Japan</option>
												<option value="United States">United States</option>
												<option value="Brazil">Brazil</option>
												<option value="China">China</option>
												<option value="Israel">Israel</option>
												<option value="Philippines">Philippines</option>
												<option value="Malaysia">Malaysia</option>
												<option value="Canada">Canada</option>
												<option value="Chile">Chile</option>
												<option value="Chile">Zimbabwe</option>
										</select>
										</label>


									</div>
								</div>
								<div class="col-md">
									<div class="form-group">
										<label for="id_label_single2">To</label>
										<div class="probootstrap_select-wrap">
											<label for="id_label_single2" style="width: 100%;"> <select
												class="js-example-basic-single js-states form-control"
												id="id_label_single2" style="width: 100%;">
													<option value="Australia">Australia</option>
													<option value="Japan">Japan</option>
													<option value="United States">United States</option>
													<option value="Brazil">Brazil</option>
													<option value="China">China</option>
													<option value="Israel">Israel</option>
													<option value="Philippines">Philippines</option>
													<option value="Malaysia">Malaysia</option>
													<option value="Canada">Canada</option>
													<option value="Chile">Chile</option>
													<option value="Chile">Zimbabwe</option>
											</select>
											</label>
										</div>
									</div>
								</div>
							</div>
							<!-- END row -->
							<div class="row mb-5">
								<div class="col-md">
									<div class="form-group">
										<label for="probootstrap-date-departure">Departure</label>
										<div class="probootstrap-date-wrap">
											<span class="icon ion-calendar"></span> <input type="text"
												id="probootstrap-date-departure" class="form-control"
												placeholder="">
										</div>
									</div>
								</div>
								<div class="col-md">
									<div class="form-group">
										<label for="probootstrap-date-arrival">Arrival</label>
										<div class="probootstrap-date-wrap">
											<span class="icon ion-calendar"></span> <input type="text"
												id="probootstrap-date-arrival" class="form-control"
												placeholder="">
										</div>
									</div>
								</div>
							</div>
							<!-- END row -->
							<div class="row">
								<div class="col-md">
									<label for="round" class="mr-5"><input type="radio"
										id="round" name="direction"> Round</label> <label for="oneway"><input
										type="radio" id="oneway" name="direction"> Oneway</label>
								</div>
								<div class="col-md">
									<input type="submit" value="Submit"
										class="btn btn-primary btn-block">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

	</section>
	<div><jsp:include page="/WEB-INF/views/footer.jsp" flush="true" /></div>
	<div><jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" /></div>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Free Bootstrap 4 Theme by ProBootstrap.com">
	<meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">


	<title>StarTrip&mdash;星遊網</title>

	<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

	<link rel="stylesheet" href="/startrip/assets/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="/startrip/assets/css/animate.css">
	<link rel="stylesheet" href="/startrip/assets/fonts/ionicons/css/ionicons.min.css">

	<link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">

	<link rel="stylesheet" href="/startrip/assets/fonts/flaticon/font/flaticon.css">

	<link rel="stylesheet" href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/startrip/assets/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="/startrip/assets/css/select2.css">


	<link rel="stylesheet" href="/startrip/assets/css/helpers.css">
	<link rel="stylesheet" href="/startrip/assets/css/style.css">
	<style>
		#inputState {
			height: 46px;
			color: rgb(151, 148, 148)
		}

		.inputState label,
		.inputState select {
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
</head>

<body>

	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>
	<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/images/bg_1.jpg');"
	 data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md probootstrap-animate">
					<form action="HotelsSearchResult.html" class="probootstrap-form" style="border-radius:125px;">
						<div class="form-group">
							<div class="row">
								<!-- place -->
								<div class="col-md-4">
									<div class="form-group inputState">
										<label for="id_label_location">
											<input type="text" id="id_label_location" name="location" class="form-control" placeholder="地點或飯店名稱">
										</label>
									</div>
								</div>
								<!-- place -->
								<!-- arrival -->
								<div class="col-md">
									<div class="form-group inputState">
										<div class="probootstrap-date-wrap">
											<label for="probootstrap-date-arrival">
												<span class="icon ion-calendar"></span>
												<input type="text" id="probootstrap-date-arrival" name="checkin" class="form-control" placeholder="入住">
											</label>
										</div>
									</div>
								</div>
								<!-- arrival -->
								<!-- departure -->
								<div class="col-md">
									<div class="form-group inputState">
										<div class="probootstrap-date-wrap">
											<label for="probootstrap-date-departure">
												<span class="icon ion-calendar"></span>
												<input type="text" id="probootstrap-date-departure" name="checkout" class="form-control" placeholder="退房">
											</label>
										</div>
									</div>
								</div>
								<!-- departure -->
								<!-- people -->
								<div class="col-md">
									<div class="form-group inputState">
										<label for="id_label_people">
											<select id="inputState" class="form-control" name="poeple">
												<option selected value="1">人數</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
											</select>
										</label>
									</div>
								</div>
								<!-- people -->
								<!-- summit -->
								<div class="col-md">
									<div class="form-group">
										<div class="col-md">
											<input type="submit" value="送出" class="btn btn-primary btn-block">
										</div>
									</div>
								</div>
								<!-- summit -->
							</div>
							<!-- END row -->
						</div>
					</form>
				</div>
			</div>
		</div>

	</section>
	<!-- END section -->

	<section class="probootstrap_section" id="section-city-guides">
		<div class="container">
			<div class="row text-center mb-5 probootstrap-animate">
				<div class="col-md-12">
					<h4 class="display-4 probootstrap-section-heading">精選推薦</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
					<a href="#" class="probootstrap-thumbnail">
						<img src="assets\images\test1.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
						<div class="probootstrap-text">
							<h3>1</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
					<a href="#" class="probootstrap-thumbnail">
						<img src="assets\images\test1.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
						<h3>2</h3>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
					<a href="#" class="probootstrap-thumbnail">
						<img src="assets\images\test1.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
						<h3>3</h3>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
					<a href="#" class="probootstrap-thumbnail">
						<img src="assets\images\test1.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
						<h3>4</h3>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->

	<section class="probootstrap_section bg-light">
		<div class="container">
			<div class="row text-center mb-5 probootstrap-animate">
				<div class="col-md-12">
					<h4 class="display-4 probootstrap-section-heading">精選推薦2</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
					<a href="#" class="probootstrap-thumbnail">
						<img src="/startrip/assets/images/img_1.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
						<div class="probootstrap-text">
							<h3>5</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
					<a href="#" class="probootstrap-thumbnail">
						<img src="/startrip/assets/images/img_2.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
						<h3>6</h3>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
					<a href="#" class="probootstrap-thumbnail">
						<img src="/startrip/assets/images/img_3.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
						<h3>7</h3>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
					<a href="#" class="probootstrap-thumbnail">
						<img src="/startrip/assets/images/img_4.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
						<h3>8</h3>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->


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

	<script src="/startrip/assets/js/bootstrap-datepicker.js"></script>
	<script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
	<script src="/startrip/assets/js/jquery.easing.1.3.js"></script>

	<script src="/startrip/assets/js/select2.min.js"></script>

	<script src="/startrip/assets/js/main.js"></script>

</body>

</html>
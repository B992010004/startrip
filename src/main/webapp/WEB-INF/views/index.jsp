<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Free Bootstrap 4 Theme by ProBootstrap.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">


<title>StarTrip&nbsp;星遊網&mdash;歡迎您</title>

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
</head>

<body>

	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md probootstrap-animate">
					<form action="/startrip/HotelsSearchResult"
						class="probootstrap-form" style="border-radius: 30px;">
						<div class="form-group">
							<div class="row">
								<!-- place -->
								<div class="col-md-4">
									<div class="form-group inputState">
										<label for="id_label_location"> <input type="text"
											id="id_label_location" name="searchSrting"
											class="form-control" placeholder="地點或飯店名稱"> <!-- 											<select id="inputState" class="form-control" name="searchSrting"> -->
											<!-- 												<option value="">請選擇旅遊目的地</option> --> <!-- 												<option value="基隆">基隆</option> -->
											<!-- 												<option value="台北">台北</option> --> <!-- 												<option value="新北">新北</option> -->
											<!-- 												<option value="桃園">桃園</option> --> <!-- 												<option value="新竹">新竹</option> -->
											<!-- 												<option value="苗栗">苗栗</option> --> <!-- 												<option value="台中">台中</option> -->
											<!-- 												<option value="彰化">彰化</option> --> <!-- 												<option value="南投">南投</option> -->
											<!-- 												<option value="雲林">雲林</option> --> <!-- 												<option value="嘉義">嘉義</option> -->
											<!-- 												<option value="台南">台南</option> --> <!-- 												<option value="高雄">高雄</option> -->
											<!-- 												<option value="屏東">屏東</option> --> <!-- 												<option value="宜蘭">宜蘭</option> -->
											<!-- 												<option value="花蓮" selected="selected">花蓮</option> -->
											<!-- 												<option value="台東">台東</option> --> <!-- 											</select> -->
										</label>

									</div>
								</div>
								<!-- place -->
								<!-- arrival -->
								<div class="col-md">
									<div class="form-group inputState">
										<div class="probootstrap-date-wrap">
											<label for="probootstrap-date-arrival"> <span
												class="icon ion-calendar"></span> <input type="text"
												id="probootstrap-date-arrival" name="checkIn"
												class="form-control" placeholder="入住">
											</label>
										</div>
									</div>
								</div>
								<!-- arrival -->
								<!-- departure -->
								<div class="col-md">
									<div class="form-group inputState">
										<div class="probootstrap-date-wrap">
											<label for="probootstrap-date-departure"> <span
												class="icon ion-calendar"></span> <input type="text"
												id="probootstrap-date-departure" name="checkOut"
												class="form-control" placeholder="退房">
											</label>
										</div>
									</div>
								</div>
								<!-- departure -->
								<!-- people -->
								<div class="col-md">
									<div class="form-group inputState">
										<label for="id_label_people"> <select id="inputState"
											class="form-control" name="personNum">
												<option selected value="1">人數</option>
												<option value="1">1人</option>
												<option value="2" selected="selected">2人</option>
												<option value="3">3人</option>
												<option value="4">4人</option>
												<option value="5">5人</option>
												<option value="6">6人</option>
												<option value="7">7人</option>
												<option value="8">8人</option>
												<option value="9">9人</option>
												<option value="10">10人</option>
												<option value="11">11人</option>
												<option value="12">12人</option>
												<option value="13">13人</option>
												<option value="14">14人</option>
												<option value="15">15人</option>
												<option value="16">16人</option>
												<option value="17">17人</option>
												<option value="18">18人</option>
												<option value="19">19人</option>
												<option value="20">20人</option>
										</select>
										</label>
									</div>
								</div>
								<!-- people -->
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
					<a href="/startrip/Rooms/${hotelList[0].hotelid }"
						class="probootstrap-thumbnail"> <img
						src="/startrip/getPicture/hotel/${hotelList[0].hotelid }/${hotelList[0].photoArr[0] }"
						alt="Free Template by ProBootstrap.com" class="img-fluid">
						<div class="probootstrap-text">
							<h3>${hotelList[0].hotelname }</h3>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
					<a href="/startrip/Rooms/${hotelList[1].hotelid }"
						class="probootstrap-thumbnail"> <img
						src="/startrip/getPicture/hotel/${hotelList[1].hotelid }/${hotelList[1].photoArr[0] }"
						alt="Free Template by ProBootstrap.com" class="img-fluid">
						<h3>${hotelList[1].hotelname }</h3>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
					<a href="/startrip/Rooms/${hotelList[2].hotelid }"
						class="probootstrap-thumbnail"> <img
						src="/startrip/getPicture/hotel/${hotelList[2].hotelid }/${hotelList[2].photoArr[0] }"
						alt="Free Template by ProBootstrap.com" class="img-fluid">
						<h3>${hotelList[2].hotelname }</h3>
					</a>
				</div>
				<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
					<a href="/startrip/Rooms/${hotelList[3].hotelid }"
						class="probootstrap-thumbnail"> <img
						src="/startrip/getPicture/hotel/${hotelList[3].hotelid }/${hotelList[3].photoArr[0] }"
						alt="Free Template by ProBootstrap.com" class="img-fluid">
						<h3>${hotelList[3].hotelname }</h3>
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

	<script>
	
	
	
	
		$('#probootstrap-date-departure, #probootstrap-date-arrival')
				.datepicker({
					'format' : 'yyyy/m/d',
					'autoclose' : true,
					'startDate' : new Date(),
				});

		$('#probootstrap-date-arrival').datepicker().on('changeDate',
				function(ev) {

					//不知道為啥沒反應
					$('#probootstrap-date-departure').datepicker({
						'startDate' : '2018-5-27',
					});
					console.log('日期改變瞜' + ev.date);

				});
	</script>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>餐廳嘉年華</title>

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
<link rel="shortcut icon" type="image/x-icon"
	href="/startrip/assets/images/rt/favicon.ico" />

<style>
.probootstrap-cover .overlay {
	position: absolute;
	background: rgba(0, 0, 0, 0.2);
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}

.probootstrap_section {
	padding-top: 0%;
}

.portfolio-item {
	padding-top: 6%;
}

.col-md1 {
	width: 50%;
	margin: 0px auto
}

.bigheadline1 {
	padding-top: 7%;
	text-align: center;
}

.probootstrap-section-heading {
	border-bottom: #00CA4C 5px solid;
	padding: 2%;
}

.card-text {
	margin: 0%;
}

.btn11 {
	text-align: center;
}

.card {
	border: #00CA4C 2px outset;
}

.container {
	padding: 0%;
}

.portfolio-item {
	weight: 100px;
}

.row {
	margin-left: 10%;
	margin-right: 10%;
	margin-bottom: 4%;
}

.row2 {
	margin-left: 15%;
	margin-right: 15%;
}

</style>


</head>



<body>
	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />

	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/rt/03.jpg');">
		<div class="overlay"></div>
	</section>

	<!-- Page Heading -->


	<!------------------------------------------------------------------------------>




	<div class="col-md1">
		<div class="bigheadline1">
			<h2 class="display-4 probootstrap-section-heading">★餐廳嘉年華★</h2>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------- -->

	<div class="row">
		<c:forEach var='rtDetails' items='${RtDetails}'>
			<div class="col-lg-3 portfolio-item">
				<div class="card h-100">
					<a href="/startrip/restaurant/${rtDetails.rtId}"><img
						class="card-img-top"
						src="/startrip/getPicture/rtImage/${rtDetails.photoArr[0]}" alt=""
						height='229.2' width='345.98'></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="/startrip/restaurant/${rtDetails.rtId}">${rtDetails.rtName}</a>
						</h4>
						<p class="card-text">${rtDetails.rtCuisine}</p>
						<p class="card-text">${rtDetails.teCategory}</p>
						<p class="card-text">${rtDetails.rtPricepount}</p>
						<p class="card-text">${rtDetails.rtCounty}</p>
						<div class="btn11">
							<a href="/startrip/restaurant/${rtDetails.rtId}"
								class="btn btn-primary">去了解</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<!-- --------------------------------------------------------------------------------------------------- -->
	
	
		<div class="container">
			<div class="row">
				<div class="col">
					<div id="selectCheckBox">
						<label class="sr-only-focusable">菜系類別&nbsp;:&nbsp;</label>
						<ul>
							<li><input id="cr1" type="checkbox" name="family" value="家庭">中式料理</li>
							<li><input id="cr2" type="checkbox" name="couple"
								value="伴侶旅行">日式料理</li>
							<li><input id="cr3" type="checkbox" name="alone"
								value="單獨旅行">港式料理</li>
							<li><input id="cr4" type="checkbox" name="business"
								value="商務">韓式料理</li>
							<li><input id="cr5" type="checkbox" name="friends"
								value="朋友">泰式料理</li>
							<li><input id="cr6" type="checkbox" name="friends"
								value="朋友">法式料理</li>
							<li><input id="cr7" type="checkbox" name="friends"
								value="朋友">印度料理</li>
							<li><input id="cr8" type="checkbox" name="friends"
								value="朋友">南洋料理</li>
							<li><input id="cr9" type="checkbox" name="friends"
								value="朋友">墨西哥料理</li>
							<li><input id="cr10" type="checkbox" name="business"
								value="商務">新疆料理</li>
							<li><input id="cr11" type="checkbox" name="friends"
								value="朋友">四川料理</li>
							<li><input id="cr12" type="checkbox" name="friends"
								value="朋友">美式料理</li>
							<li><input id="cr13" type="checkbox" name="friends"
								value="朋友">英式料理</li>
							<li><input id="cr14" type="checkbox" name="friends"
								value="朋友">台式料理</li>
							<li><input id="cr15" type="checkbox" name="friends"
								value="朋友">素食料理</li>

						</ul>
					</div>
				</div>
				<div class="col">
					<div id="selectCheckBox">
						<label class="sr-only-focusable">餐點類別&nbsp;:&nbsp;</label>
						<ul>
							<li><input id="cr1" type="checkbox" name="family" value="家庭"
								onclick="selectByCriteria('${hotel.hotelid }')">早餐</li>
							<li><input id="cr2" type="checkbox" name="couple"
								value="伴侶旅行">早午餐</li>
							<li><input id="cr3" type="checkbox" name="alone"
								value="單獨旅行">午餐</li>
							<li><input id="cr4" type="checkbox" name="business"
								value="商務">下午茶</li>
							<li><input id="cr5" type="checkbox" name="friends"
								value="朋友">午晚餐</li>
							<li><input id="cr5" type="checkbox" name="friends"
								value="朋友">晚餐</li>
							<li><input id="cr5" type="checkbox" name="friends"
								value="朋友">宵夜</li>
						</ul>
					</div>

				</div>
				<div class="col">
					<div id="selectCheckBox">
						<label class="sr-only-focusable">餐點類別&nbsp;:&nbsp;</label>
						<ul>
							<li><input id="cr1" type="checkbox" name="family" value="家庭"
								onclick="selectByCriteria('${hotel.hotelid }')">早餐</li>
							<li><input id="cr2" type="checkbox" name="couple"
								value="伴侶旅行">早午餐</li>
							<li><input id="cr3" type="checkbox" name="alone"
								value="單獨旅行">午餐</li>
							<li><input id="cr4" type="checkbox" name="business"
								value="商務">下午茶</li>
							<li><input id="cr5" type="checkbox" name="friends"
								value="朋友">午晚餐</li>
							<li><input id="cr5" type="checkbox" name="friends"
								value="朋友">晚餐</li>
							<li><input id="cr5" type="checkbox" name="friends"
								value="朋友">宵夜</li>
						</ul>
					</div>
				</div>
			</div>
		</div>


	<!-- --------------------------------------------------------------------------------------------------- -->


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
		$(function() {
			$('.navbar-nav.ml-auto').children().eq(0).removeClass('active');
			$('.navbar-nav.ml-auto').children().eq(1).addClass('active')
		})
	</script>

	<script>
		$(document).ready(function() {
			$(document).on('click', '#cr2', function() {

				
			})
		});
	</script>

</body>



</html>
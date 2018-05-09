<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>StarTrip 餐廳</title>

<!-- 
    More Templates Visit ==> ProBootstrap.com
    Free Template by ProBootstrap.com under the License Creative Commons 3.0 ==> (probootstrap.com/license)

    IMPORTANT: You can do whatever you want with this template but you need to keep the footer link back to ProBootstrap.com
    -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>StarTrip</title>
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





<link rel="stylesheet" href="/startrip/assets/restaurant/Css/rthome.css">
<link rel="stylesheet"
	href="/startrip/assets/restaurant/Css/rthome2.css">




<style>
.probootstrap-cover .overlay {
	position: absolute;
	background: rgba(0, 0, 0, 0.2);
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}

.bigheadline1 {
	padding-bottom: 3%;
	text-align: center;
}

.headline1 {
	color: #00CA4C;
	display: inline;
}

.headline2 {
	color: #e1e100;
	display: inline;
}

.img-fluid {
	width: 255px;
	height: 200px;
}

.col-md-12 {
	padding: 2%;
}

</style>

</head>

<body>
	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>
	<!-- END nav -->


	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/03.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center text-center">
				<div class="input-group mb-3">
					<input type="text" class="form-control" placeholder="城市、餐廳名稱等"
						aria-label="Recipient's username" aria-describedby="basic-addon2">
					<div>
						<input type="submit" value="找餐廳" class="btn btn-primary btn-block">
					</div>
				</div>
			</div>
		</div>

	</section>
	<!-- END section -->

	<section class="probootstrap_section" id="section-city-guides">
		<div class="bigheadline1">
			<h1 class="headline1">搜尋美食盡在</h1>
			<h1 class="headline2">Star</h1>
			<h1 class="headline1">Trip</h1>
			<p>在 StarTrip 內總共為您準備了超過 10000 筆的餐廳資訊、價格以及評分，協助尋找最適合您的餐廳喜好。</p>
		</div>
		<div class="container">
			<div class="row text-center mb-5 probootstrap-animate">
				<div class="col-md-12">
					<h2 class="display-4 border-bottom probootstrap-section-heading">熱門餐廳</h2>
				</div>
				<div class="row">
					<c:forEach var='rtDetails' items='${RtDetails}'>
						<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
							<a href="#" class="probootstrap-thumbnail"> <img
								src="/startrip/assets/images/01.jpg"
								alt="Free Template by ProBootstrap.com" class="img-fluid">

								<h3>${rtDetails.rtName}</h3> <span>${rtDetails.rtCuisine}</span>
								<span>${rtDetails.teCategory}</span> <span>${rtDetails.rtPricepount}</span>
								<span>${rtDetails.rtCounty}</span> <span>評分星等</span>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row text-center mb-5 probootstrap-animate">
				<div class="col-md-12">
					<h2 class="display-4 border-bottom probootstrap-section-heading">附近餐廳</h2>
				</div>
				<div class="row">
					<c:forEach var='rtDetails' items='${RtDetails}'>
						<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
							<a href="#" class="probootstrap-thumbnail"> <img
								src="/startrip/assets/images/01.jpg"
								alt="Free Template by ProBootstrap.com" class="img-fluid">

								<h3>${rtDetails.rtName}</h3> <span>${rtDetails.rtCuisine}</span>
								<span>${rtDetails.teCategory}</span> <span>${rtDetails.rtPricepount}</span>
								<span>${rtDetails.rtCounty}</span> <span>評分星等</span>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row text-center mb-5 probootstrap-animate">
				<div class="col-md-12">
					<h2 class="display-4 border-bottom probootstrap-section-heading">高級餐廳</h2>
				</div>
				<div class="row">
					<c:forEach var='rtDetails' items='${RtDetails}'>
						<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
							<a href="#" class="probootstrap-thumbnail"> <img
								src="/startrip/assets/images/01.jpg"
								alt="Free Template by ProBootstrap.com" class="img-fluid">

								<h3>${rtDetails.rtName}</h3> <span>${rtDetails.rtCuisine}</span>
								<span>${rtDetails.teCategory}</span> <span>${rtDetails.rtPricepount}</span>
								<span>${rtDetails.rtCounty}</span> <span>評分星等</span>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row text-center mb-5 probootstrap-animate">
				<div class="col-md-12">
					<h2 class="display-4 border-bottom probootstrap-section-heading">中等價位</h2>
				</div>
				<div class="row">
					<c:forEach var='rtDetails' items='${RtDetails}'>
						<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
							<a href="#" class="probootstrap-thumbnail"> <img
								src="/startrip/assets/images/01.jpg"
								alt="Free Template by ProBootstrap.com" class="img-fluid">

								<h3>${rtDetails.rtName}</h3> <span>${rtDetails.rtCuisine}</span>
								<span>${rtDetails.teCategory}</span> <span>${rtDetails.rtPricepount}</span>
								<span>${rtDetails.rtCounty}</span> <span>評分星等</span>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
			<div class="container">
			<div class="row text-center mb-5 probootstrap-animate">
				<div class="col-md-12">
					<h2 class="display-4 border-bottom probootstrap-section-heading">平價美食</h2>
				</div>
				<div class="row">
					<c:forEach var='rtDetails' items='${RtDetails}'>
						<div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
							<a href="#" class="probootstrap-thumbnail"> <img
								src="/startrip/assets/images/01.jpg"
								alt="Free Template by ProBootstrap.com" class="img-fluid">

								<h3>${rtDetails.rtName}</h3> <span>${rtDetails.rtCuisine}</span>
								<span>${rtDetails.teCategory}</span> <span>${rtDetails.rtPricepount}</span>
								<span>${rtDetails.rtCounty}</span> <span>評分星等</span>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

	</section>
	<!-- END section -->


	<section class="probootstrap_section">
		<div class="container">
			<div class="row text-center mb-5 probootstrap-animate">
				<div class="col-md-12">
					<h2 class="display-4 border-bottom probootstrap-section-heading">StarTrip精選美食</h2>
				</div>
			</div>

			<div class="row probootstrap-animate">
				<div class="col-md-12">
					<div class="owl-carousel js-owl-carousel">
						<a class="probootstrap-slide" href="#"> <span
							class="flaticon-teatro-de-la-caridad"></span> <em>Teatro de
								la Caridad</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-royal-museum-of-the-armed-forces"></span> <em>Royal
								Museum of the Armed Forces</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-parthenon"></span> <em>Parthenon</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-marina-bay-sands"></span> <em>Marina Bay
								Sands </em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-samarra-minaret"></span> <em>Samarra Minaret</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-chiang-kai-shek-memorial"></span> <em>Chiang
								Kai Shek Memorial</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-heuvelse-kerk-tilburg"></span> <em>Heuvelse
								Kerk Tilburg</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-cathedral-of-cordoba"></span> <em>Cathedral
								of Cordoba</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-london-bridge"></span> <em>London Bridge</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-taj-mahal"></span> <em>Taj Mahal</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-leaning-tower-of-pisa"></span> <em>Leaning
								Tower of Pisa</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-burj-al-arab"></span> <em>Burj al Arab</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-gate-of-india"></span> <em>Gate of India</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-osaka-castle"></span> <em>Osaka Castle</em>
						</a> <a class="probootstrap-slide" href="#"> <span
							class="flaticon-statue-of-liberty"></span> <em>Statue of
								Liberty </em>
						</a>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->


	<footer class="probootstrap_section probootstrap-border-top">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-3">
					<h3 class="probootstrap_font-18 mb-3">菜系類別</h3>
					<ul class="list-unstyled">
						<li><a href="https://free-template.co" target="_blank">中式料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">日式料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">港式料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">韓式料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">泰式料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">法式料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">印度料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">南洋料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">墨西哥料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">新疆料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">四川料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">美式料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">英式料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">台式料理</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">素食料理</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3 class="probootstrap_font-18 mb-3">餐點類別</h3>
					<ul class="list-unstyled">
						<li><a href="https://free-template.co" target="_blank">早餐</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">早午餐</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">午餐</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">下午茶</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">晚餐</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">宵夜</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3 class="probootstrap_font-18 mb-3">價位類別</h3>
					<ul class="list-unstyled">
						<li><a href="https://free-template.co" target="_blank">平價美食</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">中等價位</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">高級餐廳</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3 class="probootstrap_font-18 mb-3">縣市分類</h3>
					<ul class="list-unstyled">
						<li><a href="https://free-template.co" target="_blank">臺北市</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">新北市</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">桃園市</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">臺中市</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">臺南市</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">高雄市</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">基隆市</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">新竹市</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">嘉義市</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">新竹縣</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">苗栗縣</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">彰化縣</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">南投縣</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">雲林縣</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">嘉義縣</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">屏東縣</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">宜蘭縣</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">花蓮縣</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">臺東縣</a>
						</li>
						<li><a href="https://free-template.co" target="_blank">澎湖縣</a>
						</li>
					</ul>
				</div>
			</div>
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
</body>

</html>
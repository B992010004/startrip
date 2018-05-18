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
<title>餐廳總覽</title>

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
	padding-bottom: 2%;
}

.col-md1 {
	width: 50%;
	margin: 0px auto
}

.bigheadline1 {
	padding-top: 12%;
	padding-bottom: 3%;
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
</style>


</head>



<body>
	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/03.jpg');">
		<div class="overlay"></div>
	</section>

	<!-- Page Heading -->


	<!------------------------------------------------------------------------------>


	<div class="container">



		<div class="col-md1">
			<div class="bigheadline1">
				<h2 class="display-4 probootstrap-section-heading">★ 餐廳嘉年華★</h2>
			</div>
		</div>

		<!-- --------------------------------------------------------------------------------------------------- -->

		<div class="row"><c:forEach var='rtDetails' items='${RtDetails}'>
			<div class="col-lg-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="/startrip/assets/images/01.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">${rtDetails.rtName}</a>
						</h4>
						<p class="card-text">${rtDetails.rtCounty}</p>
						<p class="card-text">${rtDetails.rtArea}}</p>
						<p class="card-text">${rtDetails.rtCuisine}</p>
						<p class="card-text">${rtDetails.teCategory}</p>
						<p class="card-text">${rtDetails.rtBusinesshours}</p>
						<div class="btn11">
							<a href="/startrip/restaurant/1" class="btn btn-primary">去了解</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="/startrip/assets/images/01.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">餐廳名稱</a>
						</h4>
						<p class="card-text">地區</p>
						<p class="card-text">菜系類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">評分星等</p>
						<div class="btn11">
							<a href="/startrip/restaurant/1" class="btn btn-primary">去了解</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="/startrip/assets/images/01.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">餐廳名稱</a>
						</h4>
						<p class="card-text">地區</p>
						<p class="card-text">菜系類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">評分星等</p>
						<div class="btn11">
							<a href="/startrip/restaurant/1" class="btn btn-primary">去了解</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="/startrip/assets/images/01.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">餐廳名稱</a>
						</h4>
						<p class="card-text">地區</p>
						<p class="card-text">菜系類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">評分星等</p>
						<div class="btn11">
							<a href="/startrip/restaurant/1" class="btn btn-primary">去了解</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="/startrip/assets/images/01.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">餐廳名稱</a>
						</h4>
						<p class="card-text">地區</p>
						<p class="card-text">菜系類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">評分星等</p>
						<div class="btn11">
							<a href="/startrip/restaurant/1" class="btn btn-primary">去了解</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="/startrip/assets/images/01.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">餐廳名稱</a>
						</h4>
						<p class="card-text">地區</p>
						<p class="card-text">菜系類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">評分星等</p>
						<div class="btn11">
							<a href="/startrip/restaurant/1" class="btn btn-primary">去了解</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="/startrip/assets/images/01.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">餐廳名稱</a>
						</h4>
						<p class="card-text">地區</p>
						<p class="card-text">菜系類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">評分星等</p>
						<div class="btn11">
							<a href="/startrip/restaurant/1" class="btn btn-primary">去了解</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 portfolio-item">
				<div class="card h-100">
					<a href="#"><img class="card-img-top"
						src="/startrip/assets/images/01.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">餐廳名稱</a>
						</h4>
						<p class="card-text">地區</p>
						<p class="card-text">菜系類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">餐點類別</p>
						<p class="card-text">評分星等</p>
						<div class="btn11">
							<a href="/startrip/restaurant/1" class="btn btn-primary">去了解</a>
						</div>
					</div>
				</div>
			</div>
</c:forEach>
		</div>

		<!-- --------------------------------------------------------------------------------------------------- -->


		<div class="form-group">縣市&nbsp;:&nbsp;</div>
		<select path="" class="js-states form-control" id="id_label_single"
			style="width: 100%;">
			<option value="臺北市">臺北市</option>
			<option value="新北市">新北市</option>
			<option value="桃園市">桃園市</option>
			<option value="臺中市">臺中市</option>
			<option value="臺南市">臺南市</option>
			<option value="高雄市">高雄市</option>
			<option value="基隆市">基隆市</option>
			<option value="新竹市">新竹市</option>
			<option value="嘉義市">嘉義市</option>
			<option value="新竹縣">新竹縣</option>
			<option value="苗栗縣">苗栗縣</option>
			<option value="彰化縣">彰化縣</option>
			<option value="南投縣">南投縣</option>
			<option value="雲林縣">雲林縣</option>
			<option value="嘉義縣">嘉義縣</option>
			<option value="屏東縣">屏東縣</option>
			<option value="宜蘭縣">宜蘭縣</option>
			<option value="花蓮縣">花蓮縣</option>
			<option value="臺東縣">臺東縣</option>
			<option value="澎湖縣">澎湖縣</option>
		</select> <br>
		<div class="form-group">地區&nbsp;:&nbsp;</div>
		<select path="" class="js-states form-control" id="id_label_single"
			style="width: 100%;">
			<option value="花蓮市">花蓮市</option>
			<option value="鳳林鎮">玉里鎮</option>
			<option value="鳳林鎮">鳳林鎮</option>
			<option value="新城鄉">新城鄉</option>
			<option value="吉安鄉">吉安鄉</option>
			<option value="壽豐鄉">壽豐鄉</option>
			<option value="光復鄉">光復鄉</option>
			<option value="豐濱鄉">豐濱鄉</option>
			<option value="瑞穗鄉">瑞穗鄉</option>
			<option value="富里鄉">富里鄉</option>
			<option value="秀林鄉">秀林鄉</option>
			<option value="萬榮鄉">萬榮鄉</option>
			<option value="卓溪鄉">卓溪鄉</option>
		</select> <br>
		<div class="form-group">菜系類別&nbsp;:&nbsp;</div>
		<select path="" class="js-states form-control" id="id_label_single"
			style="width: 100%;">
			<option value="中式料理">中式料理</option>
			<option value="日式料理">日式料理</option>
			<option value="港式料理">港式料理</option>
			<option value="韓式料理">韓式料理</option>
			<option value="泰式料理">泰式料理</option>
			<option value="法式料理">法式料理</option>
			<option value="印度料理">印度料理</option>
			<option value="南洋料理">南洋料理</option>
			<option value="墨西哥料理">墨西哥料理</option>
			<option value="新疆料理">新疆料理</option>
			<option value="四川料理">四川料理</option>
			<option value="美式料理">美式料理</option>
			<option value="英式料理">英式料理</option>
			<option value="台式料理">台式料理</option>
			<option value="素食料理">素食料理</option>
		</select> <br>
		<div class="form-group">餐點類別&nbsp;:&nbsp;</div>
		<select path="" class="js-states form-control" id="id_label_single"
			style="width: 100%;">
			<option value="早餐">早餐</option>
			<option value="早午餐">早午餐</option>
			<option value="午餐">午餐</option>
			<option value="下午茶">下午茶</option>
			<option value="午餐">午晚餐</option>
			<option value="晚餐">晚餐</option>
			<option value="宵夜">宵夜</option>
		</select> <br>
		<div class="form-group">餐點價位&nbsp;:&nbsp;</div>
		<select path="" class="js-states form-control" id="id_label_single"
			style="width: 100%;">
			<option value="高級餐廳">高級餐廳</option>
			<option value="中等價位">中等價位</option>
			<option value="平價美食">平價美食</option>
		</select> <br> <input type="submit"
			value="搜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;尋"
			class="btn btn-primary btn-block">
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
</body>
</html>
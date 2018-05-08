<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
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

.bigheadline1 {
	padding-top: 3%;
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

.intermediate {
	padding: 3em 40em;
}

.probootstrap_section {
	text-align: center;
}

.col-md {
	padding: 10px;
}
</style>

</head>

<body>


	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/03.jpg');">
		<div class="overlay"></div>
	</section>


	<!-- END nav -->
	<section class="probootstrap_section" id="section-city-guides">

		<div class="intermediate">
			<div class="container">
				<div class="bigheadline1">
					<h1 class="headline1">查詢餐廳資料</h1>
				</div>
				<div class="input-group mb-3">
					<input type="text" class="form-control" placeholder="編號，餐廳名稱"
						aria-label="Recipient's username" aria-describedby="basic-addon2">
				</div>
				<div class="col-md">
					<input type="submit"
						value="查&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;詢"
						class="btn btn-primary btn-block">
				</div>
			</div>
		</div>

		<form:form method="post" modelAttribute="RtDetailsBean">
			<div class="intermediate">
				<div class="container">
					<div class="bigheadline1">
						<h1 class="headline1">新增餐廳資料</h1>
					</div>


					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="餐廳名稱"
							aria-label="Recipient's username" aria-describedby="basic-addon2">
					</div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="電話"
							aria-label="Recipient's username" aria-describedby="basic-addon2">
					</div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="網址"
							aria-label="Recipient's username" aria-describedby="basic-addon2">
					</div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="E-mail"
							aria-label="Recipient's username" aria-describedby="basic-addon2">
					</div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="營業時間"
							aria-label="Recipient's username" aria-describedby="basic-addon2">
					</div>
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="地址"
							aria-label="Recipient's username" aria-describedby="basic-addon2">
					</div>
					<br>
					<div>
						<label for="id_label_single">餐點類別</label> <label
							for="id_label_single" style="width: 100%;"> <select
							class="js-states form-control" id="id_label_single"
							style="width: 100%;">
								<option value="早餐">早餐</option>
								<option value="早午餐">早午餐</option>
								<option value="午餐">午餐</option>
								<option value="下午茶">下午茶</option>
								<option value="晚餐">晚餐</option>
								<option value="宵夜">宵夜</option>
						</select>
						</label> <label for="id_label_single">餐點菜系</label> <label
							for="id_label_single" style="width: 100%;"> <select
							class="js-states form-control" id="id_label_single"
							style="width: 100%;">
								<option value="中式料理">中式料理</option>
								<option value="日式料理">日式料理</option>
								<option value="港料理">港式料理</option>
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
						</select>
						</label> <label for="id_label_single">價位</label> <label
							for="id_label_single" style="width: 100%;"> <select
							class="js-states form-control" id="id_label_single"
							style="width: 100%;">
								<option value="高級餐廳">高級餐廳</option>
								<option value="中等價位">中等價位</option>
								<option value="平價美食">平價美食</option>
						</select>
						</label> <label for="id_label_single">縣市</label> <label
							for="id_label_single" style="width: 100%;"> <select
							class="js-states form-control" id="id_label_single"
							style="width: 100%;">
								<option value="高級餐廳">高級餐廳</option>
						</select>
						</label> <label for="id_label_single">區域</label> <label
							for="id_label_single" style="width: 100%;"> <select
							class="js-states form-control" id="id_label_single"
							style="width: 100%;">
								<option value="高級餐廳">高級餐廳</option>
						</select>
						</label>

					</div>

					<div class="col-md">
						<input type="submit"
							value="新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;增"
							class="btn btn-primary btn-block">
					</div>
				</div>
			</div>
		</form:form>
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
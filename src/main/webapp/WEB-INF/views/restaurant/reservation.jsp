<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>餐廳名稱</title>
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

.col-md-123 {
	padding: 1%;
}

.border-bottom {
	padding: 2%;
}

.littletitle1 {
	text-align: left;
	padding-top: 2%;
}

.probootstrap-section-heading {
	border-bottom: #00CA4C 5px solid;
	padding: 2%;
}

.row2 {
	padding-top: 15%;
}

.headline1 {
	color: #00CA4C;
	display: inline;
}

.bigheadline1 {
	padding-bottom:4%;
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
	padding: 0em 30em;
}

.probootstrap_section {
	text-align: center;
}

.col-md {
	padding: 10px;
}

.col-md1 {
	width: 50%;
	margin: 0px auto
}

.review{
	text-align:right;
	padding-right: 2%;
}

.probootstrap_section{
	padding-top:1%;
	padding-bottom:1%;
}

</style>

</head>

<body>

	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/03.jpg');">
		<div class="overlay"></div>
	</section>

	<!-- END section -->


	<div class="container">
		<div class="row">
			<div class="col-md">
				<div class="col-md-123">
					<h2 class="display-4 probootstrap-section-heading">餐廳名稱</h2>
					<div class="littletitle1">
						<div>台灣台北中山區敬業二路69巷55號</div>
						<div>+886 2 8502 5779</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- END section -->
	<section class="probootstrap_section">
		<form> <!--  method="post" modelAttribute="RtDetailsBean" action="insertRestaurant" -->
			<div class="intermediate">
				<div class="container">
					<div class="bigheadline1">
						<h1 class="headline1">訂位基本資訊</h1>
					</div>


					<div class="input-group mb-3">
						<input path="" type="text" class="form-control"
							placeholder="餐廳名稱" aria-label="Recipient's username"
							aria-describedby="basic-addon2" />
					</div>
					<div class="input-group mb-3">
						<input path="" type="text" class="form-control"
							placeholder="電話" aria-label="Recipient's username"
							aria-describedby="basic-addon2" />
					</div>
					<div class="input-group mb-3">
						<input path="" type="text" class="form-control"
							placeholder="網址" aria-label="Recipient's username"
							aria-describedby="basic-addon2" />
					</div>
					<div class="input-group mb-3">
						<input path="" type="text" class="form-control"
							placeholder="E-mail" aria-label="Recipient's username"
							aria-describedby="basic-addon2" />
					</div>
					<div class="input-group mb-3">
						<input path="" type="text"
							class="form-control" placeholder="營業時間"
							aria-label="Recipient's username" aria-describedby="basic-addon2" />
					</div>
					<div class="input-group mb-3">
						<input path="" type="text" class="form-control"
							placeholder="地址" aria-label="Recipient's username"
							aria-describedby="basic-addon2" />
					</div>
					<br>
					<div>
						<label for="id_label_single">餐點類別</label> <label
							for="id_label_single" style="width: 100%;"> <select
								path="" class="js-states form-control"
								id="id_label_single" style="width: 100%;">
								<option value="早餐">早餐<option>
								<option value="早午餐">早午餐<option>
								<option value="午餐">午餐<option>
								<option value="下午茶">下午茶<option>
								<option value="晚餐">晚餐<option>
								<option value="宵夜">宵夜<option>
							</select>
						</label> <label for="id_label_single">餐點菜系</label> <label
							for="id_label_single" style="width: 100%;"> <select
								path="" class="js-states form-control"
								id="id_label_single" style="width: 100%;">
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
							</select>
						</label> <label for="id_label_single">價位</label> <label
							for="id_label_single" style="width: 100%;"> <select
								path="" class="js-states form-control"
								id="id_label_single" style="width: 100%;">
								<option value="高級餐廳">高級餐廳</option>
								<option value="中等價位">中等價位</option>
								<option value="平價美食">平價美食</option>
							</select>
						</label> <label for="id_label_single">縣市</label> <label
							for="id_label_single" style="width: 100%;"> <select
								path="" class="js-states form-control"
								id="id_label_single" style="width: 100%;">
								<option value="高級餐廳">高級餐廳<option>
							</select>
						</label> <label for="id_label_single">區域</label> <label
							for="id_label_single" style="width: 100%;"> <select
								path="" class="js-states form-control"
								id="id_label_single" style="width: 100%;">
								<option value="高級餐廳">高級餐廳<option>
							</select>
						</label>

					</div>

					<div class="col-md">
						<input type="submit"
							value="完&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;訂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位"
							class="btn btn-primary btn-block">
					</div>
				</div>
			</div>
		</form>
	</section>

	<!-- END section -->
	<!-- 政策提示： -->

	<div class="container">

		<div class="row">
			<div class="row2">
				<div class="col-md">
					<!-- 規定 -->
					<br>
					<h5>訂位注意事項：</h5>
					<br>
					<table rules="none" class="table table-hover ml-3">
						<tbody>
							<tr>
								<th width="4%" scope="row">1.</th>
								<td>連絡電話如實填寫，方便通知您</td>
							</tr>
							<!-- 政策提示生成起始 -->
							<tr>
								<th width="4%" scope="row">2.</th>
								<td>用餐時間限制請依照餐廳公告為主</td>
							</tr>
							<!-- 政策提示生成結束 -->
							<tr>
								<th scope="row">3.</th>
								<td>訂位僅保留15分鐘</td>
							</tr>
							<tr>
								<th scope="row">4.</th>
								<td>明確標註，「幾位大人幾位小孩」，並寫上「所需兒童椅數量」</td>
							</tr>
							<tr>
								<th scope="row">5.</th>
								<td>如有特殊需求，標註於「其他注意事項」</td>
							</tr>
							<tr>
								<th scope="row">6.</th>
								<td>線上訂位完全及無法更改</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- 規定 -->


	<!--評論 -->
	<div class="container">
		<div class="review">
			<a href="/startrip/restaurantHome" class="btn btn-primary" >回餐廳首頁</a>
		</div>
	</div>


	<!-- END section -->

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
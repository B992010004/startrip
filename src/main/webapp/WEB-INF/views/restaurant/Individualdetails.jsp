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

<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">

<link rel="stylesheet" href="assets/css/owl.carousel.min.css">

<link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet"
	href="assets/fonts/fontawesome/css/font-awesome.min.css">

<link rel="stylesheet" href="assets/css/select2.css">


<link rel="stylesheet" href="assets/css/helpers.css">
<link rel="stylesheet" href="assets/css/style.css">

<style>
.col-md-12 {
	padding: 3%;
}

.border-bottom {
	padding: 2%;
}

.littletitle1 {
	text-align: left;
}

#section-home {
	padding-top: 45px;
	padding-bottom: 45px;
}

.probootstrap-form {
	margin-bottom: 0;
	padding-top: 15px;
	padding-bottom: 15px;
}

.owl-dots {
	display: none;
}

.probootstrap_section {
	padding-top: 0px;
	padding-bottom: 0px;
}

.owl-stage-outer {
	padding-top: 0px !important;
	padding-bottom: 0px !important;
}

#inputState {
	height: 46px;
	color: rgb(151, 148, 148)
}

.commentdate {
	text-align: right;
}

.inputState label, .inputState select {
	height: 46px;
	width: 100%;
	color: rgb(151, 148, 148)
}

.imgmaxsize {
	width: 795px;
	height: 550px;
}

.popwindow {
	margin: 100px
}

.imglist {
	height: 80px;
}

tbody th img {
	max-width: 180px;
	height: 130px;
}

.review {
	text-align: right;
	padding: 2%;
}

.probootstrap-section-heading {
	border-top: #00CA4C 5px solid;
	border-button: #00CA4C 5px solid;
}

</style>

</head>

<body>

	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('assets/images/03.jpg');">
		<div class="overlay"></div>
	</section>

	<!-- END section -->


	<div class="container">
		<div class="row">
			<div class="col-md">
				<div class="col-md-12">
					<h2 class="display-4 probootstrap-section-heading">餐廳名稱</h2>


					<div class="littletitle1">台灣台北中山區敬業二路69巷55號</div>
					<div class="littletitle1">+886 2 8502 5779</div>
					<div class="littletitle1">網址 :
						https://www.indianfoodtaiwan.com/?utm_source=tripadvisor&utm_medium=referral</div>


					<div class="littletitle1">中山區</div>
					<div class="littletitle1">高級餐廳</div>
					<div class="littletitle1">日式料理</div>
					<div class="littletitle1">下午茶</div>


				</div>
				<input type="submit"
					value="立&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;即&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;訂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位"
					class="btn btn-primary btn-block">
			</div>
		</div>
	</div>

	<!-- END section -->

	<div class="container">
		<div class="row">
			<!-- 相片 + 評分 + 地圖 -->
			<div class="col-md-9">
				<!-- 相片 section -->
				<section class="probootstrap_section">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="owl-carousel js-owl-carousel-2">
									<!-- photo slide item -->
									<div>
										<div
											class="media probootstrap-media d-block align-items-stretch imgmaxsize">
											<img src="assets\images\test1.jpg" value="1" name="XX"
												class="img-fluid mainimg">
										</div>
									</div>
									<!-- END photo slide item -->
									<!-- photo slide item -->
									<div>
										<div
											class="media probootstrap-media d-block align-items-stretch imgmaxsize">
											<img src="assets\images\sq_img_1.jpg" value="2" name="AA"
												class="img-fluid mainimg">
										</div>
									</div>
									<!-- END photo slide item -->
									<!-- photo slide item -->
									<div>
										<div
											class="media probootstrap-media d-block align-items-stretch imgmaxsize">
											<img src="assets\images\sq_img_2.jpg" value="3" name="BB"
												class="img-fluid mainimg">
										</div>
									</div>
									<!-- END photo slide item -->
								</div>
								<div></div>
							</div>
						</div>
					</div>
				</section>
				<!-- END section -->
			</div>
			<div class="col-md-3">
				<div class="row">
					<div class="col-md">
						<a href="http://maps.google.com/maps?q=福華飯店,+台北市&amp;z=11"
							data-geo="" target="_blank"> <img class="map" alt="福華飯店, 台北市"
							src="http://maps.google.com/maps/api/staticmap?zoom=17&size=300x300&maptype=terrain&sensor=false&center=福華飯店, 台北市&key=AIzaSyAphlUZhilGS44rk9TBLOoMluxpNJa0Cfk">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 政策提示： -->

	<div class="container">

		<div class="row">
			<div class="col-md">
				<!-- 規定 -->
				<h5>政策提示：</h5>
				<br>
				<table rules="none" class="table table-hover ml-3">
					<tbody>
						<tr>
							<th width="4%" scope="row">1.</th>
							<td>入住時間：15:00 以後 ~ 退房時間：12:00 以前</td>
						</tr>
						<!-- 政策提示生成起始 -->
						<tr>
							<th width="4%" scope="row">2.</th>
							<td>未滿18周歲的小孩需有成人陪同才可入住。</td>
						</tr>
						<!-- 政策提示生成結束 -->
						<tr>
							<th scope="row">3.</th>
							<td>6歲以下兒童免費房型，每床共床限1人</td>
						</tr>
						<tr>
							<th scope="row">4.</th>
							<td>[2017年01月13日 - 2019年12月31日] 訂單一經確認，不可更改或添加入住人姓名。</td>
						</tr>
						<tr>
							<th scope="row">5.</th>
							<td>[2018年03月16日 - 2018年12月31日]
								此期間每日上午9時至下午6時進行客房裝修工程，期間可能會有噪音滋擾，敬請諒解。</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>

	<!--評論 -->

	<div class="container">
		<div class="review">
			<a href="/startrip/review/UserReviewEdit/1" class="btn btn-primary">發表評論</a>
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


	<script src="assets/js/jquery.min.js"></script>

	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>

	<script src="assets/js/jquery.waypoints.min.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>

	<script src="assets/js/select2.min.js"></script>

	<script src="assets/js/main.js"></script>


</body>
</html>
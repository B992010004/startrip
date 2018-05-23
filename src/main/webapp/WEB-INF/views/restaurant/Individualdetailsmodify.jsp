<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>後台-個別資訊刪除修改</title>
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
}

.col-md1 {
	width: 50%;
	margin: 0px auto
}

.bigheadline1 {
	padding-top: 12%;
	text-align: center;
}

.probootstrap-section-heading {
	padding: 2%;
	color: #00CA4C;
}

.card-text {
	margin: 0%;
}

.btn11 {
	text-align: right;
}

.card {
	border: #FF3333 2px outset;
}

.btnn {
	width: 15%;
	height: 15%;
}

.card-body {
	padding-botton: 0%;
}
</style>

</head>


<body>

	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/rt/03.jpg');">
		<div class="overlay"></div>
	</section>

	<!-- END section -->

	<!-- ---------------------------------------------------------------------------------------- -->


	<div class="container">


		<div class="col-md1">
			<div class="bigheadline1">
				<h2 class="display-4 probootstrap-section-heading">修改餐廳資料</h2>
			</div>
		</div>

		<!-- --------------------------------------------------------------------------------------------------- -->
		<div class="row align-items-center text-center">
			<div class="input-group ">
				<input type="text" class="form-control" placeholder="餐廳  ID、餐廳名稱等"
					aria-label="Recipient's username" aria-describedby="basic-addon2">
				<div>
					<input type="submit" value="搜尋" class="btn btn-primary btn-block">
				</div>
			</div>
		</div>
		<div class="row">
			<c:forEach var='rtDetails' items='${RtDetails}'>
				<div class="col-lg-6 portfolio-item">
					<div class="card h-100">

						<a href="/startrip/restaurant/${rtDetails.rtId}"><img
							class="card-img-top"
							src="/startrip/getPicture/rtImage/${rtDetails.photoArr[0]}"
							alt=""></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="/startrip/restaurant/${rtDetails.rtId}">${rtDetails.rtId}</a>
							</h4>
							<h4 class="card-title">
								<a href="/startrip/restaurant/${rtDetails.rtId}">餐廳名稱&nbsp;:&nbsp;${rtDetails.rtName}</a>
							</h4>
							<p class="card-text">縣市&nbsp;:&nbsp;${rtDetails.rtCounty}</p>
							<p class="card-text">地區&nbsp;:&nbsp;${rtDetails.rtArea}</p>
							<p class="card-text">菜系類別&nbsp;:&nbsp;${rtDetails.rtCuisine}</p>
							<p class="card-text">餐點類別&nbsp;:&nbsp;${rtDetails.teCategory}</p>
							<p class="card-text">地址&nbsp;:&nbsp;${rtDetails.rtAddress}</p>
							<p class="card-text">電話&nbsp;:&nbsp;${rtDetails.rtPhone}</p>
							<p class="card-text">網址&nbsp;:&nbsp;${rtDetails.rtUrl}</p>
							<p class="card-text">價位&nbsp;:&nbsp;${rtDetails.rtPricepount}</p>
							<p class="card-text">營業時間&nbsp;:&nbsp;${rtDetails.rtBusinesshours}</p>
							<p class="card-text">E-mail&nbsp;:&nbsp;${rtDetails.rtEmail}</p>

							<div class="btn11">
								<input type="image" class="btn btnn repairButton" id="repair" img
									src="/startrip/assets/images/rt/pencil.png"> <input
									type="image" class="btn btnn deleteButton" id="delectOne" img
									src="/startrip/assets/images/rt/delete.png">

							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<!-- --------------------------------------------------------------------------------------------------- -->


		<!-- 				<ul class="list-group"> -->
		<!-- 					<li class="list-group-item active1">餐廳名稱</li> -->
		<!-- 					<li class="list-group-item">菜系類別&nbsp;:&nbsp;</li> -->
		<!-- 					<li class="list-group-item">餐點類別&nbsp;:&nbsp;</li> -->
		<!-- 					<li class="list-group-item">地址&nbsp;:&nbsp;</li> -->
		<!-- 					<li class="list-group-item">電話&nbsp;:&nbsp;</li> -->
		<!-- 					<li class="list-group-item">網址&nbsp;:&nbsp;</li> -->
		<!-- 					<li class="list-group-item">價位&nbsp;:&nbsp;</li> -->
		<!-- 					<li class="list-group-item">營業時間&nbsp;:&nbsp;</li> -->
		<!-- 					<li class="list-group-item">E-mail&nbsp;:&nbsp;</li> -->
		<!-- 					<li class="list-group-item">縣市&nbsp;:&nbsp;</li> -->
		<!-- 					<li class="list-group-item" style="border-bottom: 3px #DDDDDD solid;">地區&nbsp;:&nbsp;</li> -->
		<!-- 				</ul> -->
		<!-- 				<div class="col-md"> -->
		<!-- 					<input type="submit" -->
		<!-- 						value="修&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;改" -->
		<!-- 						class="btn btn-primary padding1">  -->
		<!-- 						<input type="submit" -->
		<!-- 						value="刪&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;除" -->
		<!-- 						class="btn btn-primary padding1"> -->
		<!-- 				</div> -->


	</div>



	<!-- ---------------------------------------------------------------------------------------- -->

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
	<script>
	<!-- icons刪除    -->
		$(document).ready(function() {

			$(document).on('click', '.deleteButton', function() {
				var id = $(this).parents('.card-body').find('a:first').text();
				var ajaxrtid = {
					rtId : id
				};

				$.ajax({
					url : "/startrip/deleteRtDetailsrtId",
					type : "GET",
					data : ajaxrtid,
				})
				location.reload();
			})

		})
	</script>

	<script>
	<!-- icons修改   -->
		$(document).ready(function() {
			
			$(document).on('click','repairButton',function() {
								var ProductID = $(this).parents('tr').find(
										'td:nth-child(1)').text();
								var ProductName = $(this).parents('tr').find(
										'td:nth-child(2)').text();
								var UnitPrice = $(this).parents('tr').find(
										'td:nth-child(3)').text();
								var UnitsInStock = $(this).parents('tr').find(
										'td:nth-child(4)').text();

								$('#ProductID').val(ProductID).next('span')
										.text(ProductID);
								$('#ProductName').val(ProductName);
								$('#UnitPrice').val(UnitPrice);
								$('#UnitsInStock').val(UnitsInStock);
							})
				})
	</script>


</body>
</html>
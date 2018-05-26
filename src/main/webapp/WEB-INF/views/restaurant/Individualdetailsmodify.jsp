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
	text-align: center;
	padding-top: 10%;
}

.card {
	border: #FF3333 2px outset;
}

.btnn {
	width: 20%;
	height: 20%;
	padding-top: 10%;
	padding: 4%;
}

.card-body {
	padding-botton: 0%;
}

.row {
	margin-left: 10%;
	margin-right: 10%;
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
	</div>
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
							<a href="/startrip/restaurant/${rtDetails.rtId}">${rtDetails.rtId}</a>
						</h4>
						<h4 class="card-title">
							<a href="/startrip/restaurant/${rtDetails.rtId}">餐廳名稱&nbsp;:&nbsp;${rtDetails.rtName}</a>
						</h4>
						<p class="card-text">
							<span>縣市&nbsp;:&nbsp;</span><span>${rtDetails.rtCounty}</span>
						</p>
						<p class="card-text">
							<span>地區&nbsp;:&nbsp;</span><span>${rtDetails.rtArea}</span>
						</p>
						<p class="card-text">
							<span>菜系類別&nbsp;:&nbsp;</span><span>${rtDetails.rtCuisine}</span>
						</p>
						<p class="card-text">
							<span>餐點類別&nbsp;:&nbsp;</span><span>${rtDetails.teCategory}</span>
						</p>
						<p class="card-text">
							<span>地址&nbsp;:&nbsp;</span><span>${rtDetails.rtAddress}</span>
						</p>
						<p class="card-text">
							<span>電話&nbsp;:&nbsp;</span><span>${rtDetails.rtPhone}</span>
						</p>
						<p class="card-text">
							<span>網址&nbsp;:&nbsp;</span><span>${rtDetails.rtUrl}</span>
						</p>
						<p class="card-text">
							<span>價位&nbsp;:&nbsp;</span><span>${rtDetails.rtPricepount}</span>
						</p>
						<p class="card-text">
							<span>營業時間&nbsp;:&nbsp;</span><span>${rtDetails.rtBusinesshours}</span>
						</p>

						<div class="btn11">
							<input type="image" class="btnn repairButton" id="repair" img
								src="/startrip/assets/images/rt/pencil.png"> <input
								type="image" class="btnn insideButton" id="submitOK" img
								src="/startrip/assets/images/rt/inside.png"> <input
								type="image" class="btnn deleteButton" id="delectOne" img
								src="/startrip/assets/images/rt/delete.png">

						</div>
					</div>
				</div>
			</div>
		</c:forEach>
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
	<!-- icons送出    -->
		$(document).ready(
				function() {

					$(document).on(
							'click',
							'.insideButton',
							function() {

								var id = $(this).parents('.card-body').find(
										'a:first').text();
								var text2 = $(this).parents('.card-body').find(
										'input:eq(0)').val();
								var text4 = $(this).parents('.card-body').find(
										'input:eq(1)').val();
								var text6 = $(this).parents('.card-body').find(
										'input:eq(2)').val();
								var text8 = $(this).parents('.card-body').find(
										'input:eq(3)').val();
								var text10 = $(this).parents('.card-body')
										.find('input:eq(4)').val();
								var text12 = $(this).parents('.card-body')
										.find('input:eq(5)').val();
								var text14 = $(this).parents('.card-body')
										.find('input:eq(6)').val();
								var text16 = $(this).parents('.card-body')
										.find('input:eq(7)').val();
								var text18 = $(this).parents('.card-body')
										.find('input:eq(8)').val();

								var ajaxall = {
									rtId : id,
									rtCounty : text2,
									rtArea : text4,
									rtCuisine : text6,
									teCategory : text8,
									rtAddress : text10,
									rtPhone : text12,
									rtUrl : text14,
									rtPricepount : text16,
									rtBusinesshours : text18,
								};

								$
										.ajax({
											url : "/startrip/updateAll",
											type : "GET",
											data : ajaxall,
											success : function(responseText,
													textStatus) {

											}
										})

							})

				})
	</script>

	<script>
	<!-- icons修改    -->
		$(document)
				.ready(
						function() {

							$(document)
									.on(
											'click',
											'#repair',
											function() {

												var text2 = $(this).parents(
														'.card-body').find(
														'span:eq(1)').text();
												var input2 = $('<input type="text" class="edit" value="'+text2+'">');
												$(this).parents('.card-body')
														.find('span:eq(1)')
														.html(input2);

												var text4 = $(this).parents(
														'.card-body').find(
														'span:eq(3)').text();
												var input4 = $('<input type="text" class="edit" value="'+text4+'">');
												$(this).parents('.card-body')
														.find('span:eq(3)')
														.html(input4);

												var text6 = $(this).parents(
														'.card-body').find(
														'span:eq(5)').text();
												var input6 = $('<input type="text" class="edit" value="'+text6+'">');
												$(this).parents('.card-body')
														.find('span:eq(5)')
														.html(input6);

												var text8 = $(this).parents(
														'.card-body').find(
														'span:eq(7)').text();
												var input8 = $('<input type="text" class="edit" value="'+text8+'">');
												$(this).parents('.card-body')
														.find('span:eq(7)')
														.html(input8);

												var text10 = $(this).parents(
														'.card-body').find(
														'span:eq(9)').text();
												var input10 = $('<input type="text" class="edit" value="'+text10+'">');
												$(this).parents('.card-body')
														.find('span:eq(9)')
														.html(input10);

												var text12 = $(this).parents(
														'.card-body').find(
														'span:eq(11)').text();
												var input12 = $('<input type="text" class="edit" value="'+text12+'">');
												$(this).parents('.card-body')
														.find('span:eq(11)')
														.html(input12);

												var text14 = $(this).parents(
														'.card-body').find(
														'span:eq(13)').text();
												var input14 = $('<input type="text" class="edit" value="'+text14+'">');
												$(this).parents('.card-body')
														.find('span:eq(13)')
														.html(input14);

												var text16 = $(this).parents(
														'.card-body').find(
														'span:eq(15)').text();
												var input16 = $('<input type="text" class="edit" value="'+text16+'">');
												$(this).parents('.card-body')
														.find('span:eq(15)')
														.html(input16);

												var text18 = $(this).parents(
														'.card-body').find(
														'span:eq(17)').text();
												var input18 = $('<input type="text" class="edit" value="'+text18+'">');
												$(this).parents('.card-body')
														.find('span:eq(17)')
														.html(input18);

											})
						})
	</script>



</body>
</html>
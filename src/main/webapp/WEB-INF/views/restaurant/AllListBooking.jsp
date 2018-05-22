<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>後台-個別資訊</title>
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
	padding: 2%;
	color: #00CA4C;
}

.card-text {
	margin: 0%;
}

.btn11 {
	text-align: right;
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
				<h2 class="display-4 probootstrap-section-heading">查詢訂單資料</h2>
			</div>
		</div>

		<!-- --------------------------------------------------------------------------------------------------- -->

		<div class="row align-items-center text-center">
			<div class="input-group ">
				<input type="text" class="form-control" placeholder="餐廳ID、會員ID等"
					aria-label="Recipient's username" aria-describedby="basic-addon2">
				<div>
					<input type="submit" value="搜尋" class="btn btn-primary btn-block">
				</div>
			</div>
		</div>
		<div class="row">
			<c:forEach var='rtBookings' items='${RtBookings}'>
				<div class="col-lg-6 portfolio-item">
					<div class="card h-100">
						<img class="card-img-top" src="<c:url value='/getPicture/${LoginOK.memberid}'/>"
							alt="">
						<div class="card-body">
							<h4 class="card-title">${rtBookings.bgId}</h4>
							<h4 class="card-title">會員編號&nbsp;:&nbsp;${rtBookings.memberId}</h4>
							<h4 class="card-title">餐廳 ID&nbsp;:&nbsp;${rtBookings.rtId}</h4>
							<p class="card-text">客戶姓名&nbsp;:&nbsp;${rtBookings.crName}</p>
							<p class="card-text">客戶電話&nbsp;:&nbsp;${rtBookings.crPhone}</p>
							<p class="card-text">大人訂位數&nbsp;:&nbsp;${rtBookings.bgPeople}</p>
							<p class="card-text">小孩訂位數&nbsp;:&nbsp;${rtBookings.cnPeople}</p>
							<p class="card-text">兒童專用椅&nbsp;:&nbsp;${rtBookings.cnChair}</p>
							<p class="card-text">訂位用餐日期&nbsp;:&nbsp;${rtBookings.bgDate}</p>
							<p class="card-text">訂位用餐時段&nbsp;:&nbsp;${rtBookings.bgPeriod}</p>
							<p class="card-text">其他注意事項&nbsp;:&nbsp;${rtBookings.bgNote}</p>
							<p class="card-text">資料接收時間&nbsp;:&nbsp;${rtBookings.reTime}</p>

							<div class="btn11">
								<input type="image" class="btn btnn deleteButtonbooking" id="delectOne"
									img src="/startrip/assets/images/rt/delete.png">

							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>









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
	$( document ).ready(function() {

		$(document).on('click','.deleteButtonbooking',function(){
			var id = $(this).parents('.card-body').find('a:first').text();
			  var ajaxrtid={rtId:id};
			
			 $.ajax({
					url : "/startrip/deleteRtDetailsrtId",
					type : "GET",
					data : ajaxrtid,
		   })
		   location.reload();
		})
		
	})
	
	</script>
	

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Free Bootstrap 4 Theme by ProBootstrap.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
#showMap {
	width: 300px;
	height: 300px;
}

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

.adbody {
	text-align: center;
	width: 600px;
	margin: auto;
}

.mapImage {
	cursor: pointer;
}
</style>
<title>訂位系統</title>
</head>

<body>
	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>



	<!-- 以下為訂票功能 -->

	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/transport/images/into.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md probootstrap-animate">
					<h3 style="color: #E8CCFF" align="center">請輸入基本資料</h3>
					<form action="/startrip/selectAllOrerList" class="probootstrap-form"
						style="border-radius: 30px;">
						<div class="form-group">
							<div class="form-group ">
								<label for=" "> 身分證字號: </label> <input type="text"
									id="id_label_location" name="identity" class="form-control"
									placeholder="">
							</div>
							<!-- 分隔線								 -->
							<div class="form-group">
								<label for="id_label_location"> 姓名 </label> <input type="text"
									id="id_label_location" name="custname" class="form-control"
									placeholder="">
							</div>
							<!-- 分隔線 -->
							<div class="form-group inputState">
								<label for="id_label_location"> 電子郵件: </label> <input
									type="text" id="id_label_location" name="sMail"
									class="form-control" placeholder="">
							</div>
							<!-- 分隔線 -->
							<!-- 連絡電話 -->
							<div class="form-group inputState">
								<label for="id_label_location"> 連絡電話:<input type="text"
									id="id_label_location" name="phone" class="form-control"
									placeholder="">
								</label>
							</div>
						</div>
							<!-- 							送出 -->
						<!-- summit -->
						<div class="form-group">
							<div class="col-md">
								<input type="submit" value="送出"
									class="btn btn-primary btn-block" src="">
							</div>
						</div>
							<!-- 							送出 -->
					</form>
					<!-- summit -->
				</div>
			</div>
	</section>


	
<div>
		<jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
	</div>
	<div>
		<jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" />
	</div>
	<script src="/startrip/assets/js/jquery.min.js"></script>
	<script src="/startrip/assets/js/popper.min.js"></script>
	<script src="/startrip/assets/js/bootstrap.min.js"></script>
	<script src="/startrip/assets/js/owl.carousel.min.js"></script>
	<script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
	<script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
	<script src="/startrip/assets/js/select2.min.js"></script>
	<script src="/startrip/assets/js/main.js"></script>
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


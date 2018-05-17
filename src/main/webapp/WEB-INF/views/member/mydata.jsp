<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>StarTrip&mdash;星遊網</title>
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
<link href="/startrip/assets/css/bootstrap/botton.css" rel="stylesheet"
	type="text/css" />
<style>
#section-home {
	padding-top: 45px;
	padding-bottom: 45px;
}

tbody th img {
	max-width: 180px;
	height: 130px;
}
</style>
</head>
<body>
	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>
	<!-- END nav -->
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
	</section>

	<section class="probootstrap_section bg-light" id="section-contact">
		<div class="container">
			<div style="margin: auto" class="col-md-10  probootstrap-animate">
				<div class="probootstrap-form probootstrap-form-box mb60">
					<h1>預定</h1>
					<br>
					<h6>這些是您在 Star Trip 上已經完成的預訂。</h6>
					<br>
					<h4>飯店</h4>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th width="20%" scope="col">房型</th>
								<th width="25%" scope="col">服務</th>
								<th width="25%" scope="col">設施</th>
								<th width="15%" scope="col">每晚平均房價</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<th scope="row"><img
									src="/startrip/assets/images/sq_img_2.jpg"> <br>
									豪華雙人房</th>
								<td>附早餐 <br>可加床 <br>不可退款
								</td>
								<td>1 張雙人床 / 2 張單人床 <br>室內WIFI
								</td>
								<td>3000</td>

							</tr>

						</tbody>
					</table>
					<br>
					<h4>餐廳</h4>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th width="20%" scope="col">餐廳名稱</th>
								<th width="25%" scope="col">用餐日期</th>
								<th width="25%" scope="col">需求</th>
								<th width="15%" scope="col">其他注意事項</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<th scope="row"><img
									src="/startrip/assets/images/sq_img_2.jpg"> <br>
									ooo餐廳</th>
								<td>用餐日期:XXX<BR>用餐時段:晚餐
								</td>
								<td>訂位人數:2 <br>是否需要兒童專用椅:否 <br>
								</td>
								<td>其他注意事項 <br></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		function loadProduct(id) {
			$.getJSON('Products', {'memberid' : memberid
			}, function(datas) {
				var docFrag = $(document.createDocumentFragment());
				var tb = $('#productTable>tbody');
				tb.empty();
				$.each(datas, function(idx, product) {
					var cell1 = $('<td></td>').text(product.ProductID);
					var cell2 = $('<td></td>').text(product.ProductName);
					var cell3 = $('<td></td>').text(product.UnitPrice);
					var cell4 = $('<td></td>').text(product.UnitsInStock);
					var row = $('<tr></tr>').append(
							[ cell1, cell2, cell3, cell4, cell5 ]);
					docFrag.append(row);
				})
				tb.append(docFrag);

			})
		}
	</script>


	<div><jsp:include page="/WEB-INF/views/member/login.jsp"
			flush="true" /></div>
	<div><jsp:include page="/WEB-INF/views/footer.jsp" flush="true" /></div>
	<script src="/startrip/assets/js/jquery.min.js"></script>
	<script src="/startrip/assets/js/popper.min.js"></script>
	<script src="/startrip/assets/js/bootstrap.min.js"></script>
	<script src="/startrip/assets/js/owl.carousel.min.js"></script>
	<script src="/startrip/assets/js/bootstrap-datepicker.js"></script>
	<script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
	<script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
	<script src="/startrip/assets/js/select2.min.js"></script>
	<script src="/startrip/assets/js/main.js"></script>
</body>
</html>
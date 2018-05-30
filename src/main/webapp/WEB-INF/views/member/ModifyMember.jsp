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
	<link rel="shortcut icon" type="image/x-icon" href="/startrip/assets/images/rt/favicon.ico" />
<style>
.img1 {
	width: 150px;
	height: 150px;
	border: 2px solid silver;
	margin: 10px;
}

#section-home {
	padding-top: 45px;
	padding-bottom: 45px;
}
.modal-body{
	border-top: #00CA4C 2px solid;
}
</style>
</head>
<body>

	<div><jsp:include page="/WEB-INF/views/header.jsp" flush="true" /></div>

	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
	</section>
	<!-- END section -->

	<section class="probootstrap_section bg-light" id="section-contact">

		<div class="container" id="SignUp">
			
				<form:form method="post" modelAttribute="MemberBean"
					class="probootstrap-form probootstrap-form-box mb60"
					enctype="multipart/form-data" id="modlifyform">

					<H2 class="display-4 border-bottom probootstrap-section-heading"
						style="text-align: center">修改個人資料</H2>
					<div class="row">
						<div class="col-md-6  probootstrap-animate">
							<div class="form-group">
							<label>姓:</label>
							<form:input type="text" class="form-control" name="mName" 
								path="firstname" placeholder="請輸入" autofocus="autofocus"
								value="${LoginOK.firstname}" required="required" />
						</div>
						<div class="form-group">
							<label>名:</label>
							<form:input type="text" class="form-control" name="mName"
								path="lastname" placeholder="請輸入" autofocus="autofocus"
								value="${LoginOK.lastname}" required="required" />
						</div>
							<div class="form-group">
								<label>地址:</label>
								<form:input type="text" class="form-control" name="mAdd"
									path="address" value="${LoginOK.address}" placeholder="請輸入"
									autofocus="autofocus" required="required" />
							</div>
							<div class="form-group">
								<label>電話:</label>
								<form:input type="text" class="form-control" name="mPhone"
									path="phone" value="${LoginOK.phone}" placeholder="請輸入"
									autofocus="autofocus" required="required" />
								<span id="err"></span>
							</div>
						</div>
						<div class="col-md-6  probootstrap-animate">
							<div class="form-group">
								<label>生日:</label>
								<form:input type="text" class="form-control" name="mbday"
									path="birthday" value="${LoginOK.birthday}" placeholder="請輸入"
									autofocus="autofocus" required="required" />
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" name="mEmail"
									path='mail' style="display: none;" value="${LoginOK.mail}"></form:input>
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" path="memberid"
									style="display: none;" value="${LoginOK.memberid}" />
								<form:input type="password" class="form-control" path="password"
									style="display: none;" value="${LoginOK.password}" />
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" path="validataCode"
									style="display: none;" value="${LoginOK.validataCode}" />
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" path="registerDate"
									style="display: none;" value="${LoginOK.registerDate}" />
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" path="photo"
									style="display: none;" value="${LoginOK.photo}" />
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" path="avatar"
									style="display: none;" value="${LoginOK.avatar}" />
							</div>
							<div class="form-group">
								<img id="preview_progressbarTW_img" class="img1" value=""
									src="<c:url value='/getPicture/${LoginOK.mail}'/>" /> <label
									for="progressbarTWInput" class="btn btn-primary">
									選擇您的相片 </label>
								<form:input type="file" path="avatarImage"
									id="progressbarTWInput" name="mAvatar"
									accept="image/gif, image/jpeg, image/png"
									style="display: none;" />
								<div class="form-group">
									<input type="button" class="btn btn-primary" id="modlifysubmit"
										value="確認修改" style='position: absolute; right: 0;'>
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		<div class="modal fade" id="modlifymodel" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalCenterTitle" aria-hidden="true"
			data-backdrop="static" data-keyboard="false">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">Star Trip</h5>
					</div>
					<div class="modal-body" style="text-align: center">會員資料修改成功</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							id="modlifybackbutton">回首頁</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->
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
	<script src='https://www.google.com/recaptcha/api.js'></script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script
		src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
		async defer></script>
	<script>
		$("#modlifybackbutton").click(function() {
			$("#modlifyform").submit();
		});
	</script>

	<script>
		$("#progressbarTWInput").change(function() {
			readURL(this);
		});
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$("#preview_progressbarTW_img")
							.attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}

		$(function() {
			$("#modlifysubmit").click(function() {

				if ($('#phone').val().match(/^09[0-9]{8}$/)) {
					$("#err").html("");
					$("#modlifymodel").modal({
						show : true
					});
				} else {
					$("#err").html("<font color=\'red\'>請輸入正確的手機</font> ");
				}
			})
		});
	</script>
</body>
</html>
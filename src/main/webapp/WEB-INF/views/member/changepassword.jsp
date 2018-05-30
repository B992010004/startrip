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
			<div style="margin: auto" class="col-md-6  probootstrap-animate">
				<form id="ckpassform" method="POST"
					action="<c:url value="/changepassword"/>">
					<div class="probootstrap-form probootstrap-form-box mb60">
						<img
							style="border-color: #C0C0C0; border-style: solid; border-style: outset; border-radius: 50%; position: absolute; right: 30px;"
							width="160px" height="160px"
							src="<c:url value='/getPicture/${change.mail}'/>">
						<H2>${change.lastname}您好!</H2>
						<P>請重新設定您的密碼</P>

						<div class="col-md-6">
							<div class="form-group">
								<label for="fgpassword">請輸入密碼:</label> <input type="password"
									class="form-control" name="fgpassword" placeholder="請輸入6至12位密碼"
									id="fgpassword" autofocus="autofocus" required="required" />
									<span id="CKpasstext"></span>
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<input type="password" class="form-control" name="ckmail"
									id="ckmail" style="display: none;" value="${change.mail}"></input>
							</div>
							<div class="form-group">
								<label for="ckpassword">再次確認您的密碼:</label> <input type="password"
									class="form-control" name="ckpassword"  placeholder="CheckYourPASSWORD"
									id="ckpassword" autofocus="autofocus" required="required" />
							</div>
							<div class="col-md-10" id="errorMsg"></div>
						</div>
						<div>
							<input type="button" class="btn btn-primary" id="cksubmit"
								 value="確認送出"
								style='position: absolute; right: 20px; bottom: 20px;'>
						</div>
					</div>
				</form>
				
			</div>
		</div>
		<div class="modal fade" id="changemodel" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalCenterTitle"
					aria-hidden="true" data-backdrop="static" data-keyboard="false">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLongTitle">Star
									Trip</h5>
							</div>
							<div class="modal-body" style="text-align: center">密碼修改成功，請愛惜自己的密碼</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary"
									id="changebackbutton">回首頁</button>
							</div>
						</div>
					</div>
				</div>
	</section>
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
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("cksubmit").addEventListener("click",
					ckpass);
		})
			$("#changebackbutton").click(function() {		
				
				$("#ckpassform").submit();
				});
		$(function ck1pass() {
			$("#fgpassword").on('keyup', function(){
				var ckpassword = document.getElementById("fgpassword").value;
				 var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
			     var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
			     var enoughRegex = new RegExp("(?=.{6,}).*", "g");				     
			     if(ckpassword==""){
			    	 document.getElementById("CKpasstext").innerHTML = "";
			     }
			     else if(strongRegex.test(ckpassword)){ document.getElementById("CKpasstext").innerHTML = "<img src='/startrip/assets/images/membericon/e.jpg'>";}
			     else if(mediumRegex.test(ckpassword)){ document.getElementById("CKpasstext").innerHTML = "<img src='/startrip/assets/images/membericon/c.jpg'>";}	
			     else if(enoughRegex.test(ckpassword)){ document.getElementById("CKpasstext").innerHTML = "<img src='/startrip/assets/images/membericon/b.jpg'>";}
			     
			})	
	})
		

		function ckpass() {
			document.getElementById("errorMsg").innerHTML = "";
			var fgpassword = document.getElementById("fgpassword").value;
			var ckpassword = document.getElementById("ckpassword").value;
			var passwordlength=  document.getElementById("fgpassword").value.length;
			
			if (fgpassword == "" || ckpassword == "") {
				document.getElementById("errorMsg").innerHTML = "<font color=\'red\'>請輸入正確的密碼</font>";
				
			} 
			else if(passwordlength < 6){
				document.getElementById("errorMsg").innerHTML = "<font color=\'red\'>請輸入6位數以上的密碼</font>";
			}
			else if (fgpassword == ckpassword) {
				document.getElementById("errorMsg").innerHTML = "";
			
				$("#changemodel").modal({
					show : true
				});
				
							
			} else {
				document.getElementById("errorMsg").innerHTML = "<font color=\'red\'>請輸入相同密碼</font>";
			
			}
		}
	</script>
</body>
</html>
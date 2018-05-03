<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html>
<meta charset="UTF-8">
<head>
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>寫評論</title>
	<meta name="description"
		content="Free Bootstrap 4 Theme by ProBootstrap.com">
	<meta name="keywords"
		content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
	
	
	<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

	<link rel="stylesheet" href="/startrip/assets/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="/startrip/assets/css/animate.css">
	<link rel="stylesheet" href="/startrip/assets/fonts/ionicons/css/ionicons.min.css">
	<link rel="stylesheet" href="/startrip/assets/css/bootstrap/botton.css"	type="text/css" />
	<link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/startrip/assets/fonts/flaticon/font/flaticon.css">
	<link rel="stylesheet" href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/startrip/assets/css/select2.css">
	<link rel="stylesheet" href="/startrip/assets/css/helpers.css">
	<link rel="stylesheet" href="/startrip/assets/css/style.css">

</head>

<body>
	<div><jsp:include page="/WEB-INF/views/header.jsp" flush="true" /></div>
	<!-- END nav -->


	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('/startrip/assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center text-center">
				<div class="col-md">
					<h2 class="heading mb-2 display-4 font-light probootstrap-animate">Get
						In Touch</h2>

					<p class="lead mb-5 probootstrap-animate"></p>
					<a href="https://themewagon.com/theme_tag/free/" target="_blank"
						role="button"
						class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">More
						Templates Here</a>
					</p>
				</div>
			</div>
		</div>

	</section>
	<!-- END section -->


	<section class="probootstrap_section bg-light" id="section-contact">
		<div class="container">

			<div class="row">
				<div class="col-md-6 probootstrap-animate">
					<p class="mb-5">Far far away, behind the word mountains, far
						from the countries Vokalia and Consonantia, there live the blind
						texts. Separated they live in Bookmarksgrove right at the coast of
						the Semantics, a large language ocean.</p>
					<div class="row">
						<div class="col-md-6">
							<ul class="probootstrap-contact-details">
								<li><span class="text-uppercase"><span
										class="ion-paper-airplane"></span> Email</span> you_mail@gmail.com</li>
								<li><span class="text-uppercase"><span
										class="ion-ios-telephone"></span> Phone</span> +30 976 1382 9921</li>
							</ul>
						</div>
						<div class="col-md-6">
							<ul class="probootstrap-contact-details">
								<li><span class="text-uppercase"><span
										class="ion-ios-telephone"></span> Fax</span> +30 976 1382 9922</li>
								<li><span class="text-uppercase"><span
										class="ion-location"></span> Address</span> San Francisco, CA <br>
									4th Floor8 Lower <br> San Francisco street, M1 50F</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6  probootstrap-animate">
					<form:form id="reviewForm" name="reviewForm" method='POST' modelAttribute="reviewBean"
						class="probootstrap-form probootstrap-form-box mb60"
						enctype="multipart/form-data">
						<div class="form-group">
							<div class="form-group">
								<div class="form-group" id="rating">

						            <h2 class="sr-only-focusable">你對此飯店的整體評價</h2>
						            
						            <img id="idimg1" src="/startrip/assets/images/review/star.gif" width="10%"/>
						            <img id="idimg2" src="/startrip/assets/images/review/star.gif" width="10%"/>
						            <img id="idimg3" src="/startrip/assets/images/review/star.gif" width="10%"/>
						            <img id="idimg4" src="/startrip/assets/images/review/star.gif" width="10%"/>
						            <img id="idimg5" src="/startrip/assets/images/review/star.gif" width="10%"/><span id="h"></span>
						            
		      					</div>
								<div class="form-group">
									<label for="title" class="sr-only-focusable">您的評論標題</label>
									<form:input path="title" type="text" class="form-control"
										id="title" name="title" placeholder="蓋述你的造訪或有趣的細節" />
								</div>
							</div>
							<!-- <div class="col-md-6">
                                <div class="form-group">
                                    <label for="content" class="sr-only sr-only-focusable">您的評論內容</label>
                                    <input type="text" class="form-control" id="content" name="content" placeholder="跟大家分享您的體驗: 客房、交通位置、設施?">
                                </div>
                            </div> -->
						</div>
						
						<div class="form-group">
							<label for="content" class="sr-only-focusable">您的評論內容</label>
							<form:textarea cols="30" rows="10" path="content" class="form-control" id="content"
								name="content" placeholder="跟大家分享您的體驗: 客房、交通位置、設施?"></form:textarea>
								
						</div>

						<div class="form-group">
							<label for="tips" class="sr-only-focusable">分享客房建議給其他旅客</label>
							<form:input path="roomTips" type="text" class="form-control" id="tips" name="tips"
								placeholder="例如:最佳景觀、較安靜的樓層、無障礙等等。" />
						</div>
						

<!-- 						很特別, 新方法學一下 -->
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
						  <label class="btn btn-outline-primary active">
						    <form:radiobutton path="tripType" autocomplete="off" checked="checked" value="商務"/> 商務
						  </label>
						  <label class="btn btn-outline-primary">
						    <form:radiobutton path="tripType" autocomplete="off" value="伴侶旅行" /> 伴侶旅行
						  </label>
						  <label class="btn btn-outline-primary">
						    <form:radiobutton path="tripType" autocomplete="off" value="家庭" /> 家庭
						  </label>
						  <label class="btn btn-outline-primary">
						    <form:radiobutton path="tripType" autocomplete="off" value="朋友" /> 朋友
						  </label>
						  <label class="btn btn-outline-primary">
						    <form:radiobutton path="tripType" autocomplete="off" value="單獨旅行" /> 單獨旅行
						  </label>
						</div>

						<div class="form-group">
							<input type="submit" class="btn btn-primary" id="submit"
								name="submit" value="Send Review">
						</div>
						<form:input id="overallRank" path="overallRank" type="hidden" class="form-control" placeholder="星星評分用(隱藏欄位)" />
					</form:form>
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->

	<section class="probootstrap_section" id="section-feature-testimonial">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-12 text-center mb-5 probootstrap-animate">
					<h2 class="display-4 border-bottom probootstrap-section-heading">Why
						we Love Places</h2>
					<blockquote class="">
						<p class="lead mb-4">
							<em>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right at the coast of the
								Semantics, a large language ocean. A small river named Duden
								flows by their place and supplies it with the necessary
								regelialia. It is a paradisematic country, in which roasted
								parts of sentences fly into your mouth.</em>
						</p>
						<p class="probootstrap-author">
							<a href="https://probootstrap.com/" target="_blank"> <img
								src="/startrip/assets/images/person_1.jpg"
								alt="Free Template by ProBootstrap.com" class="rounded-circle">
								<span class="probootstrap-name">James Smith</span> <span
								class="probootstrap-title">Chief Executive Officer</span>
							</a>
						</p>
					</blockquote>

				</div>
			</div>

		</div>
	</section>
	<!-- END section -->

	<div><jsp:include page="/WEB-INF/views/footer.jsp" flush="true" /></div>
	<div><jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" /></div>


	<script src="/startrip/assets/js/jquery.min.js"></script>
	<script src="/startrip/assets/js/popper.min.js"></script>
	<script src="/startrip/assets/js/bootstrap.min.js"></script>
	<script src="/startrip/assets/js/owl.carousel.min.js"></script>
	<script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
	<script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
	<script src="/startrip/assets/js/select2.min.js"></script>
	<script src="/startrip/assets/js/main.js"></script>
	<script> 
		document.addEventListener("DOMContentLoaded", function () {
	            for (var i = 1; i <= 5; i++) {
	                document.getElementById("idimg" + i).addEventListener("mouseover", mouseover);  //事件繫結，滑鼠滑入
	                document.getElementById("idimg" + i).addEventListener("mouseout", mouseout);
	                document.getElementById("idimg" + i).addEventListener("click", click);   //事件繫結，滑鼠滑出
	            }
	                
	    });

        flag = false;

        function mouseover() {
            if (flag == false) {
                for (var i = 1; i <= this.id.substr(5); i++) {
                    document.getElementById("idimg" + i).src = "/startrip/assets/images/review/chngstar.gif";
                }
                document.getElementById("h").innerHTML = "請評價... " + this.id.substr(5) + "顆星";
            }
        }

        function mouseout() {
            if (flag == false) {
                for (var i = 1; i <= this.id.substr(5); i++) {
                    document.getElementById("idimg" + i).src = "/startrip/assets/images/review/star.gif";
                }
                document.getElementById("h").innerHTML = "";
            }
        }

        function click() {
            if (flag == false) {
                for (var i = 1; i <= this.id.substr(5); i++) {
                    document.getElementById("idimg" + i).src = "/startrip/assets/images/review/chngstar.gif";
                }
                flag = true;
                document.getElementById("h").innerHTML = "你的評價: " + this.id.substr(5) + "顆星<br>再按一下重新評等";
                document.getElementById("overallRank").setAttribute("value", this.id.substr(5));
            } else {
                for (var i = 1; i <= 5; i++) {
                    document.getElementById("idimg" + i).src = "/startrip/assets/images/review/star.gif";
                    document.getElementById("h").innerHTML = "";
                    document.getElementById("overallRank").setAttribute("value","");
                }
                flag = false;
            }
        }
	</script>

</body>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>

 	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>行程總表</title>
    <meta name="description" content="Free Bootstrap 4 Theme by ProBootstrap.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

 	<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="/startrip/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="/startrip/assets/css/animate.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/startrip/assets/css/bootstrap/botton.css" type="text/css" />
    <link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/startrip/assets/css/select2.css">
    <link rel="stylesheet" href="/startrip/assets/css/helpers.css">
    <link rel="stylesheet" href="/startrip/assets/css/style.css">
    
    <link rel="stylesheet" href="/startrip/assets/Travel/css/MainStyle.css">
    
</head>
<body>
 	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>
	
	 <section class="probootstrap_section bg-dark" id="section-contact">
        
		</section>
		
		<section class="probootstrap_section" id="section-feature-testimonial">
		<div class="row">
			<div class="col-md-3" style="background-color: blcak;">
				<ul class="list-group list-group-flush">
					<li class="list-group-item " align="center"><a  href="Travel/addPlan/${LoginOK.mail}">新增行程</a></li>
				  	<li class="list-group-item "  align="center"><a  href="Travel/addList">新增清單</a></li>
				  	<li class="list-group-item "  align="center"><a  href="Views/add">新增景點</a></li>
				  	<li class="list-group-item "  align="center"><a  href="TravelViews/all">查詢景點</a></li>
				 	<li class="list-group-item "  align="center"><a  href="list/All">查詢行程</a><br></li>
		<!-- 		  <li class="list-group-item"></li> -->
				</ul>
			</div>
			<div class="col-md-9">
				<div class="card" style="width: 18rem;">
				  <img class="card-img-top" src="..." alt="Card image cap">
				  <div class="card-body">
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				  </div>
				</div>
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
     
   <script type="text/javascript">
  $( function () {
	$('.list-group-item').hover(function(e){
		$(e.target).addClass('active');
	})
	
	$('.list-group-item').mouseleave(function(e){
		$(e.target).removeClass('active');
	})
})
   </script>
</body>
</html>
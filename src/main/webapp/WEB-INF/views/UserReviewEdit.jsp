<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html>
<meta charset="UTF-8">
<head>
      <!-- 
    More Templates Visit ==> ProBootstrap.com
    Free Template by ProBootstrap.com under the License Creative Commons 3.0 ==> (probootstrap.com/license)

    IMPORTANT: You can do whatever you want with this template but you need to keep the footer link back to ProBootstrap.com
    -->
		
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>寫評論</title>
		<meta name="description" content="Free Bootstrap 4 Theme by ProBootstrap.com">
		<meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

	<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">
    
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    
    <link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="assets/fonts/fontawesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="assets/css/select2.css">
    

    <link rel="stylesheet" href="assets/css/helpers.css">
    <link rel="stylesheet" href="assets/css/style.css">

	</head>

<body>
 <nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
      <div class="container">
        <a class="navbar-brand" href="/">Places</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
          <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-menu">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="city-guides.html">City Guides</a></li>
            <li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
            <li class="nav-item"><a class="nav-link" href="travel.html">Travel With Us</a></li>
            <li class="nav-item"><a class="nav-link active" href="UserReviewEdit">寫評論</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->
    

    <section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5" id="section-home">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center text-center">
          <div class="col-md">
            <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Get In Touch</h2>
             
            <p class="lead mb-5 probootstrap-animate">
              

            </p>
              <a href="https://themewagon.com/theme_tag/free/" target="_blank" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">More Templates Here</a> 
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
            <p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            <div class="row">
              <div class="col-md-6">
                <ul class="probootstrap-contact-details">
                  <li>
                    <span class="text-uppercase"><span class="ion-paper-airplane"></span> Email</span>
                    you_mail@gmail.com
                  </li>
                  <li>
                    <span class="text-uppercase"><span class="ion-ios-telephone"></span> Phone</span>
                    +30 976 1382 9921
                  </li>
                </ul>
              </div>
              <div class="col-md-6">
                <ul class="probootstrap-contact-details">
                  <li>
                    <span class="text-uppercase"><span class="ion-ios-telephone"></span> Fax</span>
                    +30 976 1382 9922
                  </li>
                  <li>
                    <span class="text-uppercase"><span class="ion-location"></span> Address</span>
                    San Francisco, CA <br>
                    4th Floor8 Lower  <br>
                    San Francisco street, M1 50F
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-md-6  probootstrap-animate">
            <form action="#" method="post" class="probootstrap-form probootstrap-form-box mb60">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="title" class="sr-only sr-only-focusable">您的評論標題</label>
                                    <input type="text" class="form-control" id="title" name="title" placeholder="蓋述你的造訪或有趣的細節">
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
                            <label for="content" class="sr-only sr-only-focusable">您的評論內容</label>
                            <textarea cols="30" rows="10" class="form-control" id="content" name="content" placeholder="跟大家分享您的體驗: 客房、交通位置、設施?"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="tips" class="sr-only sr-only-focusable">分享客房建議給其他旅客</label>
                            <input type="text" class="form-control" id="tips" name="tips" placeholder="例如:最佳景觀、較安靜的樓層、無障礙等等。">
                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-primary" id="submit" name="submit" value="Send Review">
                        </div>

                    </form>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->

    <section class="probootstrap_section" id="section-feature-testimonial">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-12 text-center mb-5 probootstrap-animate">
            <h2 class="display-4 border-bottom probootstrap-section-heading">Why we Love Places</h2>
            <blockquote class="">
              <p class="lead mb-4"><em>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</em></p>
              <p class="probootstrap-author">
                <a href="https://probootstrap.com/" target="_blank">
                  <img src="assets/images/person_1.jpg" alt="Free Template by ProBootstrap.com" class="rounded-circle">
                  <span class="probootstrap-name">James Smith</span>
                  <span class="probootstrap-title">Chief Executive Officer</span>
                </a>
              </p>
            </blockquote>

          </div>
        </div>
        
      </div>
    </section>
    <!-- END section -->
  
    <footer class="probootstrap_section probootstrap-border-top">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-3">
            <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="https://free-template.co" target="_blank">Home</a></li>
              <li><a href="https://free-template.co" target="_blank">About</a></li>
              <li><a href="https://free-template.co" target="_blank">Services</a></li>
              <li><a href="https://free-template.co" target="_blank">Contact</a></li>
            </ul>
          </div>
          <div class="col-md-3">
            <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="https://free-template.co" target="_blank">Home</a></li>
              <li><a href="https://free-template.co" target="_blank">About</a></li>
              <li><a href="https://free-template.co" target="_blank">Services</a></li>
              <li><a href="https://free-template.co" target="_blank">Contact</a></li>
            </ul>
          </div>
          <div class="col-md-3">
            <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="https://free-template.co" target="_blank">Home</a></li>
              <li><a href="https://free-template.co" target="_blank">About</a></li>
              <li><a href="https://free-template.co" target="_blank">Services</a></li>
              <li><a href="https://free-template.co" target="_blank">Contact</a></li>
            </ul>
          </div>
          <div class="col-md-3">
            <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="https://free-template.co" target="_blank">Home</a></li>
              <li><a href="https://free-template.co" target="_blank">About</a></li>
              <li><a href="https://free-template.co" target="_blank">Services</a></li>
              <li><a href="https://free-template.co" target="_blank">Contact</a></li>
            </ul>
          </div>
        </div>
        <div class="row pt-5">
          <div class="col-md-12 text-center">
            <p class="probootstrap_font-14">&copy; 2017. All Rights Reserved. <br> Designed &amp; Developed by <a href="https://probootstrap.com/" target="_blank">ProBootstrap</a><small> (Don't remove credit link on this footer. See <a href="https://probootstrap.com/license/">license</a>)</small></p>
            <p class="probootstrap_font-14">Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a></p>
          </div>
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
</body>
</html>
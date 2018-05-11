<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HostConnect Hotel</title>

  <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

  <link rel="stylesheet" href="/startrip/assets/css/bootstrap/bootstrap.css">
  <link rel="stylesheet" href="/startrip/assets/css/animate.css">
  <link rel="stylesheet" href="/startrip/assets/fonts/ionicons/css/ionicons.min.css">

  <link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">

  <link rel="stylesheet" href="/startrip/assets/fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="/startrip/assets/css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="/startrip/assets/css/select2.css">


  <link rel="stylesheet" href="/startrip/assets/css/helpers.css">
  <link rel="stylesheet" href="/startrip/assets/css/style.css">

  <style>
    #section-home {
      padding-top: 45px;
      padding-bottom: 45px;
    }

    label {
      width: 150px;
    }

    .nav-link {
      padding-bottom: 8px;
    }

    a,a:visited,
    a:active {
      color: #afafaf;
    }

    .subnav .active {
      color: rgb(23, 156, 0);
    }

    a:hover {
      color: rgb(23, 156, 0);
    }


    .form-group {
      margin-right: 30px;

    }
      button{
    cursor: pointer; 
    }
  </style>


</head>

<body>


  <nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
    <div class="container">
      <a class="navbar-brand" href="#">TRIP_LOGO</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu"
        aria-expanded="false" aria-label="Toggle navigation">
        <span>
          <i class="ion-navicon"></i>
        </span>
      </button>
      <div class="collapse navbar-collapse" id="probootstrap-menu">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">飯店</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">交通</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">景點</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">餐廳</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">討論區</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">管理</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">登入</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- END nav -->
  <section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/images/bg_1.jpg');"
    data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
  </section>
  <!-- END section -->


  <div class="container">
    <div class="row">
    
		<%@ include file="/WEB-INF/views/hotel/admin/HotelAdminNav.jsp" %>
      
      <div class="col-md-10">
        <br>
        <form action="/startrip/admin/HostConnect_Info" method="POST">
          <div class="form-row">
            <div class="form-group">
              <label for="name">
                <h5>住宿名稱：</h5>
              </label>
              <input type="text" class="form-control" value="${hotelbean.hotelname}" name="name" id="name" size=50px>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group">
              <label for="phone">
                <h5>聯絡電話：</h5>
              </label>
              <input type="text" class="form-control" value="${hotelbean.hotelphone}" name="phone" id="phone" size=50px>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group">
              <label for="address">
                <h5>地址：</h5>
              </label>
              <input type="text" class="form-control" value="${hotelbean.hoteladdress}" name="address" id="address" size=50px>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group">
              <label>
                <h5>星等：</h5>
              </label>
              <div>
                <c:forEach var="step" begin="1" end="5">
                <c:choose>
                	<c:when test="${step <= hotelbean.hotelstar}">
                		<img id="idimg${step}" src="/startrip/assets/images/star-on-big.png" />
                	</c:when>
                	<c:otherwise>
                		<img id="idimg${step}" src="/startrip/assets/images/star-off-big.png" />
                	</c:otherwise>
                </c:choose>          
                <input hidden type="number" name="star" id="star" value="${hotelbean.hotelstar}">
                </c:forEach>
              </div>
            </div>
          </div>
          
          <br>

          <hr>
          <div class="row">
            <div class="col-md-3">
              <a href="HostManage">儲存並離開</a>
            </div>
            <div class="col-md-2">
            </div>
            <div class="col-md-2">
              <button type="submit" class="btn btn-outline-primary">下一步</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>

  <footer class="probootstrap_section probootstrap-border-top">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-3">
          <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
          <ul class="list-unstyled">
            <li>
              <a href="#" target="_blank">Home</a>
            </li>
            <li>
              <a href="#" target="_blank">About</a>
            </li>
            <li>
              <a href="#" target="_blank">Services</a>
            </li>
            <li>
              <a href="#" target="_blank">Contact</a>
            </li>
          </ul>
        </div>
        <div class="col-md-3">
          <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
          <ul class="list-unstyled">
            <li>
              <a href="#" target="_blank">Home</a>
            </li>
            <li>
              <a href="#" target="_blank">About</a>
            </li>
            <li>
              <a href="#" target="_blank">Services</a>
            </li>
            <li>
              <a href="#" target="_blank">Contact</a>
            </li>
          </ul>
        </div>
        <div class="col-md-3">
          <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
          <ul class="list-unstyled">
            <li>
              <a href="#" target="_blank">Home</a>
            </li>
            <li>
              <a href="#" target="_blank">About</a>
            </li>
            <li>
              <a href="#" target="_blank">Services</a>
            </li>
            <li>
              <a href="#" target="_blank">Contact</a>
            </li>
          </ul>
        </div>
        <div class="col-md-3">
          <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
          <ul class="list-unstyled">
            <li>
              <a href="#" target="_blank">Home</a>
            </li>
            <li>
              <a href="#" target="_blank">About</a>
            </li>
            <li>
              <a href="#" target="_blank">Services</a>
            </li>
            <li>
              <a href="#" target="_blank">Contact</a>
            </li>
          </ul>
        </div>
      </div>
      <div class="row pt-5">
        <div class="col-md-12 text-center">
          <p class="probootstrap_font-14">&copy; 2017. All Rights Reserved.
            <br> Designed &amp; Developed by
            <a href="#" target="_blank">ProBootstrap</a>
            <small> (Don't remove credit link on this footer. See
              <a href="#">license</a>)</small>
          </p>
          <p class="probootstrap_font-14">Demo Images:
            <a href="#" target="_blank">Unsplash</a>
          </p>
        </div>
      </div>
    </div>
  </footer>
  <!-- END footer -->


  <script src="/startrip/assets/js/jquery.min.js"></script>

  <script src="/startrip/assets/js/popper.min.js"></script>
  <script src="/startrip/assets/js/bootstrap.min.js"></script>
  <script src="/startrip/assets/js/owl.carousel.min.js"></script>

  <script src="/startrip/assets/js/bootstrap-datepicker.js"></script>
  <script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
  <script src="/startrip/assets/js/jquery.easing.1.3.js"></script>

  <script src="/startrip/assets/js/select2.min.js"></script>

  <script src="/startrip/assets/js/main.js"></script>

  <script src="/startrip/assets/js/range.js"></script>

  <script>
  	$("#adminnav").children().eq(0).attr("class","nav-link active")
  
  
    var checkNum = 1;
    var star = 0;
    var starinput = document.getElementById("star")

    document.addEventListener("DOMContentLoaded", function () {
      for (var i = 1; i <= 5; i++) {
        document.getElementById("idimg" + i).addEventListener("mouseover", mouseover);  //事件繫結，滑鼠滑入
        document.getElementById("idimg" + i).addEventListener("mouseout", mouseout);    //事件繫結，滑鼠滑出
        document.getElementById("idimg" + i).addEventListener("click", mouseclick);
      }
      if(starinput.value != 0){
    	  checkNum = -1;
      }
    });

    function mouseover() {
      window.star = this.id.substr(-1)
      if (checkNum == 1) {
        starOver();
      }
    }
    function mouseout() {
      window.star = this.id.substr(-1)
      if (checkNum == 1) {
        starOut();
      }
    }

    function mouseclick() {
      if (checkNum == 1) {
        starOver()
      } else {
        starOut()
        starOver()
      }
      checkNum = checkNum * -1;
    }

    function starOver() {
      for (var i = 1; i <= window.star; i++) {
        document.getElementById("idimg" + i).src = "/startrip/assets/images/star-on-big.png"
      }
      starinput.value = star
    }
    function starOut() {
      for (var i = 1; i <= 5; i++) {
        document.getElementById("idimg" + i).src = "/startrip/assets/images/star-off-big.png"
      }
      starinput.value = "0"
    }

  </script>
</body>

</html>
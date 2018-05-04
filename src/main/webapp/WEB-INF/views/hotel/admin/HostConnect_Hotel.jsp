<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HostConnect Hotel</title>

  <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

  <link rel="stylesheet" href="../assets/css/bootstrap/bootstrap.css">
  <link rel="stylesheet" href="../assets/css/animate.css">
  <link rel="stylesheet" href="../assets/fonts/ionicons/css/ionicons.min.css">

  <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">

  <link rel="stylesheet" href="../assets/fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="../assets/fonts/fontawesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="../assets/css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="../assets/css/select2.css">


  <link rel="stylesheet" href="../assets/css/helpers.css">
  <link rel="stylesheet" href="../assets/css/style.css">

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

    a:visited,
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
  <section class="probootstrap-cover overflow-hidden relative" style="background-image: url('../assets/images/bg_1.jpg');"
    data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
  </section>
  <!-- END section -->


  <div class="container">
    <div class="row">
      <div class="col-md-2">
        <nav class="nav flex-column subnav">
          <a class="nav-link active" href="HostConnect_Hotel.html">基本資訊</a>
          <a class="nav-link" href="HostConnect_Info.html">住宿簡介</a>
          <a class="nav-link" href="HostConnect_Service.html">服務與設施</a>
          <a class="nav-link" href="HostConnect_Rooms.html">設定房型</a>
          <a class="nav-link" href="HostConnect_Bookingday.html">設定可訂房期間</a>
          <a class="nav-link" href="HostConnect_Image.html">照片</a>
          <a class="nav-link" href="HostConnect_Onsale.html">上線販售</a>
        </nav>
      </div>
      <div class="col-md-10">
        <br>
        <form action="">
          <div class="form-row">
            <div class="form-group">
              <label for="name">
                <h5>住宿名稱：</h5>
              </label>
              <input type="text" class="form-control" value="" name="name" id="name" size=50px>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group">
              <label for="phone">
                <h5>聯絡電話：</h5>
              </label>
              <input type="text" class="form-control" value="" name="phone" id="phone" size=50px>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group">
              <label for="address">
                <h5>地址：</h5>
              </label>
              <input type="text" class="form-control" value="" name="address" id="address" size=50px>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group">
              <label>
                <h5>星等：</h5>
              </label>
              <div>
                <img id="idimg1" src="../assets/images/star-off-big.png" />
                <img id="idimg2" src="../assets/images/star-off-big.png" />
                <img id="idimg3" src="../assets/images/star-off-big.png" />
                <img id="idimg4" src="../assets/images/star-off-big.png" />
                <img id="idimg5" src="../assets/images/star-off-big.png" />
                <input hidden type="number" name="star" id="star" value="">
              </div>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group">
              <label for="account">
                <h5>收款帳戶：</h5>
              </label>
              <input type="text" class="form-control" value="" name="account" id="account" size=50px>
            </div>
          </div>
          <br>

          <hr>
          <div class="row">
            <div class="col-md-3">
              <a href="HostManage.html">儲存並離開</a>
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


  <script src="../assets/js/jquery.min.js"></script>

  <script src="../assets/js/popper.min.js"></script>
  <script src="../assets/js/bootstrap.min.js"></script>
  <script src="../assets/js/owl.carousel.min.js"></script>

  <script src="../assets/js/bootstrap-datepicker.js"></script>
  <script src="../assets/js/jquery.waypoints.min.js"></script>
  <script src="../assets/js/jquery.easing.1.3.js"></script>

  <script src="../assets/js/select2.min.js"></script>

  <script src="../assets/js/main.js"></script>

  <script src="../assets/js/range.js"></script>

  <script>
    var checkNum = 1;
    var star = 0;
    var starinput = document.getElementById("star")

    document.addEventListener("DOMContentLoaded", function () {
      for (var i = 1; i <= 5; i++) {
        document.getElementById("idimg" + i).addEventListener("mouseover", mouseover);  //事件繫結，滑鼠滑入
        document.getElementById("idimg" + i).addEventListener("mouseout", mouseout);    //事件繫結，滑鼠滑出
        document.getElementById("idimg" + i).addEventListener("click", mouseclick);
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
        document.getElementById("idimg" + i).src = "../assets/images/star-on-big.png"
      }
      starinput.value = star
    }
    function starOut() {
      for (var i = 1; i <= 5; i++) {
        document.getElementById("idimg" + i).src = "../assets/images/star-off-big.png"
      }
      starinput.value = ""
    }

  </script>
</body>

</html>
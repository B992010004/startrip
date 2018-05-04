<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HotelsSearchResult</title>


  <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

  <link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css">
  <link rel="stylesheet" href="assets/css/animate.css">
  <link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">

  <link rel="stylesheet" href="assets/css/owl.carousel.min.css">

  <link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="assets/fonts/fontawesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="assets/css/select2.css">


  <link rel="stylesheet" href="assets/css/helpers.css">
  <link rel="stylesheet" href="assets/css/style.css">

  <style>
    #section-home {
      padding-top: 45px;
      padding-bottom: 45px;
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
  <section class="probootstrap-cover overflow-hidden relative" style="background-image: url('assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5"
    id="section-home">
    <div class="overlay"></div>
  </section>
  <!-- END section -->
  <!-- start checkout -->
  <div class="container">
    <div class="row">
      <div class="col-md-1"></div>
      <div id="userinfo" class="col-md-6">
        <br>
        <form action="">
          <h5>*聯絡人姓名</h5>
          <div class="form-row">
            <div class="form-group col-md-5">
              <input type="text" class="form-control" name="lastname" placeholder="姓">
            </div>
            <div class="form-group col-md-6">
              <input type="text" class="form-control" name="firstname" placeholder="名">
            </div>
          </div>
          <h5>*聯絡Email</h5>
          <div class="form-row">
            <div class="form-group col-md-11">
              <input type="text" class="form-control" name="email" placeholder="Email">
            </div>
          </div>
          <h5>*手機號碼</h5>
          <div class="form-row">
            <div class="form-group col-md-11">
              <input type="text" class="form-control" name="cellphone" placeholder="0900123456">
            </div>
          </div>
          <br>
          <h5>備註</h5>
          <div class="form-row">
            <div class="form-group col-md-11">
              <textarea class="form-control" name="note" rows="3"></textarea>
            </div>
          </div>
          <br>
          <h5>管理您的預訂</h5>
          (輸入密碼即可使用上方的電子郵件地址建立帳戶。)
          <div class="form-row">
            <div class="form-group col-md-11">
              <input type="password" class="form-control" name="password" placeholder="設定密碼 ( 6 至 30 個字元，且不可使用空格 )">
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-11">
              <input type="password" class="form-control" name="password" placeholder="再次輸入密碼">
            </div>
          </div>
          <br>
          <h5>*選擇付款方式</h5>
          <table rules="none" class="table">
              <tbody>
                <tr>
                  <td><button type="submit" name="payment" value="creditcard" class="btn btn-light">信用卡</button></td>
                  <td><button type="submit" name="payment" value="allpay" class="btn btn-light">歐付寶</button></td>
                </tr>
              </tbody>
            </table>
          <br>
        </form>
        <br>
      </div>
      <div class="col-md-4">
        <br> 
        <img src="assets\images\test1.jpg" width="100%">
        <table class="table">
            <tbody>
              <tr>
                <td>OX飯店</td>
              </tr>
              <tr>
                <td>豪華雙人房</td>
              </tr>
              <tr>
                <td>2018-06-28 ~ 2018-07-01 ( 4晚 ) <br>// 點擊查看每晚明細</td>
              </tr>
              <tr>
                <td>總金額 NT 12000 元</td>
              </tr>
            </tbody>
          </table>
      </div>
      <div class="col-md-1"></div>
    </div>
  </div>
  <!-- end checkout -->
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


  <script src="assets/js/jquery.min.js"></script>

  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/owl.carousel.min.js"></script>

  <script src="assets/js/bootstrap-datepicker.js"></script>
  <script src="assets/js/jquery.waypoints.min.js"></script>
  <script src="assets/js/jquery.easing.1.3.js"></script>

  <script src="assets/js/select2.min.js"></script>

  <script src="assets/js/main.js"></script>

  <script src="assets/js/range.js"></script>

</body>

</html>
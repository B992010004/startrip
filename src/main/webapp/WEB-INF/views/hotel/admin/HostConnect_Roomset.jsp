<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HostConnect Roomset</title>


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


    .navtop a {
      padding-top: 5px;
    }
    .roomnumber {
      width: 112px;
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
        <div class="col-md-2">
          <nav class="nav flex-column subnav">
            <a class="nav-link" href="/startrip/admin/HostConnect_Hotel.html">基本資訊</a>
            <a class="nav-link" href="/startrip/admin/HostConnect_Info.html">住宿簡介</a>
            <a class="nav-link" href="/startrip/admin/HostConnect_Service.html">服務與設施</a>
            <a class="nav-link active" href="/startrip/admin/HostConnect_Rooms.html">設定房型</a>
            <a class="nav-link" href="/startrip/admin/HostConnect_Bookingday.html">設定可訂房期間</a>
            <a class="nav-link" href="/startrip/admin/HostConnect_Image.html">照片</a>
            <a class="nav-link" href="/startrip/admin/HostConnect_Onsale.html">上線販售</a>
          </nav>
        </div>
        <div class="col-md-10">
          <br>
          <div class="row">
            <div class="col-md">
              <h4>設定此房型專屬的服務與設施
              </h4>
            </div>
          </div>
          <br>
          <div class="row">
            <div class="col-md-3">
              <h5>退款規定：</h5>
              <div class="form-row ml-4">
                <div class="form-group">
                  <select  class="form-control" name="rollback">
                    <option selected>預設</option>
                    <option value="1">嚴格 - 不可退款</option>
                    <option value="2">寬鬆 - 入住 3 日前可退款</option>
                    <option value="3">基本 - 入住 7 日前可退款</option>
                    <option value="4">無限制</option>
                  </select>
                </div>
              </div>
              <h5>可預定時間：</h5>
              <div class="form-row ml-4">
                <div class="form-group">
                  <select class="form-control" name="booking">
                    <option selected>預設</option>
                    <option value="1">一個月內</option>
                    <option value="2">三個月內</option>
                    <option value="3">六個月內</option>
                    <option value="4">一年內</option>
                    <option value="5">無限制</option>
                  </select>
                </div>
              </div>
              <h5>一次最多訂幾晚：</h5>
              <div class="form-row ml-4">
                <div class="form-group roomnumber">
                  <input type="number" onkeydown="javascript: return event.keyCode == 69 ? false : true" class="form-control" placeholder="預設"
                    name="rooms" id="rooms" min="1" max="365">
                </div>
              </div>
              <h5>加床費用：</h5>
              <div class="form-row ml-4">
                <div class="form-group roomnumber">
                  <input type="number" onkeydown="javascript: return event.keyCode == 69 ? false : true" class="form-control"
                    name="extrabed" id="extrabed" placeholder="百分比" step="0.01" min="0" max="1">
                </div>
              </div>
            </div>
            <div class="col-md-9">
              <div class="row">
                <div class="col-md">
                  <div class="row">
                    <div class="col-md">
                      <h5 class="ml-2">服務：</h5>
                      <div class="form-row ml-4">
                        <div class="form-group">
                          <div class="col-md">
                            <label for="service1">
                              <input type="checkbox" id="service1" name="service">客房WIFI</label>
                            <label for="service2">
                              <input type="checkbox" id="service2" name="service">公共WIFI</label>
                            <label for="service3">
                              <input type="checkbox" id="service3" name="service">網際網路</label>
                            <label for="service4">
                              <input type="checkbox" id="service4" name="service">行李寄放</label>
                          </div>
                        </div>
                      </div>
                      <div class="form-row ml-4">
                        <div class="form-group">
                          <div class="col-md">
                            <label for="service5">
                              <input type="checkbox" id="service5" name="service">Spa 服務</label>
                            <label for="service6">
                              <input type="checkbox" id="service6" name="service">游泳池</label>
                            <label for="service7">
                              <input type="checkbox" id="service7" name="service">健身房</label>
                            <label for="service8">
                              <input type="checkbox" id="service8" name="service">溫泉</label>
                          </div>
                        </div>
                      </div>
                      <div class="form-row ml-4">
                        <div class="form-group">
                          <div class="col-md">
                            <label for="service9">
                              <input type="checkbox" id="service9" name="service">餐廳</label>
                            <label for="servicea">
                              <input type="checkbox" id="servicea" name="service">24小時前台</label>
                            <label for="serviceb">
                              <input type="checkbox" id="serviceb" name="service">收費停車場</label>
                            <label for="servicec">
                              <input type="checkbox" id="servicec" name="service">區域接駁車</label>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <hr>
                  <h5 class="ml-2">設施：</h5>
                  <div class="form-row ml-4">
                    <div class="form-group">
                      <div class="col-md">
                        <label for="facility1">
                          <input type="checkbox" id="facility1" name="facility">客房WIFI</label>
                        <label for="facility2">
                          <input type="checkbox" id="facility2" name="facility">公共WIFI</label>
                        <label for="facility3">
                          <input type="checkbox" id="facility3" name="facility">網際網路</label>
                        <label for="facility4">
                          <input type="checkbox" id="facility4" name="facility">行李寄放</label>
                      </div>
                    </div>
                  </div>
                  <div class="form-row ml-4">
                    <div class="form-group">
                      <div class="col-md">
                        <label for="facility5">
                          <input type="checkbox" id="facility5" name="facility">Spa 服務</label>
                        <label for="facility6">
                          <input type="checkbox" id="facility6" name="facility">游泳池</label>
                        <label for="facility7">
                          <input type="checkbox" id="facility7" name="facility">健身房</label>
                        <label for="facility8">
                          <input type="checkbox" id="facility8" name="facility">溫泉</label>
                      </div>
                    </div>
                  </div>
                  <div class="form-row ml-4">
                    <div class="form-group">
                      <div class="col-md">
                        <label for="facility9">
                          <input type="checkbox" id="facility9" name="facility">餐廳</label>
                        <label for="facilitya">
                          <input type="checkbox" id="facilitya" name="facility">24小時前台</label>
                        <label for="facilityb">
                          <input type="checkbox" id="facilityb" name="facility">收費停車場</label>
                        <label for="facilityc">
                          <input type="checkbox" id="facilityc" name="facility">區域接駁車</label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <hr>
          <form action="/startrip/admin/HostConnect_Rooms.html">
            <button type="submit" class="btn btn-outline-primary mr-5">儲存</button>
          </form>
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

</body>

</html>
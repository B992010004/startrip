<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HostManage</title>

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

    .img-thumbnail {
      height: 60px;
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
      <!-- 內容 -->
      <div class="col-sm">
        <br>
        <div class="tab-pane fade show active" id="v-pills-hotel" role="tabpanel" aria-labelledby="v-pills-hotel-tab">
          <div class="row">
            <div class="col-sm-2">
              <form action="HostConnect_Hotel.html">
                <button type="submit" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">
                  新增飯店
                </button>
              </form>
            </div>
            <div class="col-sm-6">
              <form action="HostConnect_Orders.html">
                <button type="submit" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">
                  訂單管理
                </button>
              </form>
            </div>
            <!-- select by name -->
            <div class="col-sm-4">
              <form action="HostManage.html" method="GET" class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" name="name" placeholder="飯店名稱查詢" aria-label="Search">
                <button class="btn btn-light my-2 my-sm-0" type="submit">查詢</button>
              </form>
            </div>
          </div>
          <br>
          <!-- 資料表格起始 -->
          <div class="row">
            <table class="table table-hover">
              <thead>
                <tr>
                  <th scope="col">圖片</th>
                  <th scope="col">名稱</th>
                  <th scope="col">電話</th>
                  <th scope="col">星等</th>
                  <th scope="col">地址</th>
                  <th scope="col">管理</th>
                  <th scope="col">狀態</th>
                </tr>
              </thead>
              <!-- 動態資料產生 -->

              <tbody>
                <tr>
                  <th scope="row">
                    <img src="../assets/images/test1.jpg" class="img-thumbnail" />
                  </th>
                  <td>
                    台北君悅酒店
                  </td>
                  <td>02-12345678</td>
                  <td>5</td>
                  <td>台北市信義區松壽路2號</td>
                  <td>
                    <form action="HostConnect_Hotel.html" method="">
                      <button type="submit" value="20170605001" name="setting" class="btn btn-outline-dark">
                        管理
                      </button>
                    </form>
                  </td>
                  <td>
                    <form action="" method="">
                      <button type="submit" value="20170605001" name="state" class="btn btn-outline-dark">
                        未完成
                      </button>
                    </form>
                  </td>
                </tr>
              </tbody>
              <!-- 動態資料結束 -->
            </table>
          </div>
        </div>
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

</body>

</html>
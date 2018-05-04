<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HostConnect Image</title>
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

    .img-thumbnail {
      height: 120px;
    }

    #sortable {
      list-style-type: none;
      margin: 0;
      padding: 0;
    }

    #sortable li {
      margin: 3px 3px 3px 0;
      padding: 1px;
      float: left;
      font-size: 4em;
      text-align: center;
    }

    .bottomrow {
      clear: both;
    }

    .img-wrap {
      position: relative;
    }

    .img-wrap .close {
      position: absolute;
      top: 2px;
      right: 2px;
      z-index: 100;
      color: red;
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
          <a class="nav-link" href="HostConnect_Hotel.html">基本資訊</a>
          <a class="nav-link" href="HostConnect_Info.html">住宿簡介</a>
          <a class="nav-link" href="HostConnect_Service.html">服務與設施</a>
          <a class="nav-link" href="HostConnect_Rooms.html">設定房型</a>
          <a class="nav-link" href="HostConnect_Bookingday.html">設定可訂房期間</a>
          <a class="nav-link active" href="HostConnect_Image.html">照片</a>
          <a class="nav-link" href="HostConnect_Onsale.html">上線販售</a>
        </nav>
      </div>
      <div class="col-md-10">
        <form action="" method="">
          <input type="file" style="visibility:hidden;" class="form-control-file" value="" accept="image/*" name="photo" id="photo">
          <div class="form-row">
            <div class="form-group">
              <label for="photo" class="btn btn-outline-primary">上傳更多圖片</label>
            </div>
          </div>
          <hr>
          <h5>設定圖片資訊與顯示順序：</h5>
          <input type="hidden" value="" name="image">
          <br>
          <ul id="sortable">
            <li class="ui-state-default">
              <div class="img-wrap">
                <a hidden class="close" href="">x</a>
                <img src="..\assets\images\test1.jpg" class="img-thumbnail">
                <div class="form-group">
                  <select  class="form-control" name="photoname">
                    <option value="1">單人房</option>
                    <option selected value="2">雙人房</option>
                    <option value="3">三人房</option>
                    <option value="4">四人房</option>
                    <option value="5">超過四人</option>
                  </select>
                </div>
              </div>
            </li>
            <li class="ui-state-default">
              <div class="img-wrap">
                <a hidden class="close" href="">x</a>
                <img src="..\assets\images\test1.jpg" class="img-thumbnail">
                <div class="form-group">
                  <select  class="form-control" name="photoname">
                    <option value="1">單人房</option>
                    <option selected value="2">雙人房</option>
                    <option value="3">三人房</option>
                    <option value="4">四人房</option>
                    <option value="5">超過四人</option>
                  </select>
                </div>
              </div>
            </li>
            <li class="ui-state-default">
              <div class="img-wrap">
                <a hidden class="close" href="">x</a>
                <img src="..\assets\images\test1.jpg" class="img-thumbnail">
                <div class="form-group">
                  <select  class="form-control" name="photoname">
                    <option value="1">單人房</option>
                    <option selected value="2">雙人房</option>
                    <option value="3">三人房</option>
                    <option value="4">四人房</option>
                    <option value="5">超過四人</option>
                  </select>
                </div>
              </div>
            </li>
          </ul>

          <hr class="bottomrow">
          <div class="row">
            <div class="col-md-3">
              <a href="HostManage.html">儲存並離開</a>
            </div>
            <div class="col-md-2">
              <button type="submit" class="btn btn-outline-secondary">上一步</button>
            </div>
            <div class="col-md-2">
              <button type="submit" class="btn btn-outline-primary">下一步</button>
            </div>
          </div>
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

    <script src="../assets/js/jquery-ui.js"></script>
    <script>
      $(function () {
        $("#sortable").sortable();
        $("#sortable").disableSelection();

        var imgcount = 3;
        for (var i = 0; i < 3; i++) {
          $("#sortable li:eq("+i+")").mouseover(clicktodelete)
          $("#sortable li:eq("+i+")").mouseout(hiddendelete)
        }

      });

      function clicktodelete() {
        $(this).children("div").children("a").attr("hidden", false)
      }
      function hiddendelete() {
        $(this).children("div").children("a").attr("hidden", true)
      }
    </script>
</body>

</html>
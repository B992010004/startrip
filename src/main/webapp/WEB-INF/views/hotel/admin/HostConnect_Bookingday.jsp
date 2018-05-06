<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HostConnect Bookingdetail</title>
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

  <link href='/startrip/assets/css/fullcalendar.min.css' rel='stylesheet' />
  <link href='/startrip/assets/css/fullcalendar.print.min.css' rel='stylesheet' media='print' />

  <style>
    #section-home {
      padding-top: 45px;
      padding-bottom: 45px;
    }

    label {
      width: 200px;
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

    #calendar {
      max-width: 900px;
      margin: 0 auto;
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
          <a class="nav-link" href="/startrip/admin/HostConnect_Hotel">基本資訊</a>
          <a class="nav-link" href="/startrip/admin/HostConnect_Info">住宿簡介</a>
          <a class="nav-link" href="/startrip/admin/HostConnect_Service">服務與設施</a>
          <a class="nav-link" href="/startrip/admin/HostConnect_Rooms">設定房型</a>
          <a class="nav-link active" href="/startrip/admin/HostConnect_Bookingday">設定可訂房期間</a>
          <a class="nav-link" href="/startrip/admin/HostConnect_Image">照片</a>
          <a class="nav-link" href="/startrip/admin/HostConnect_Onsale">上線販售</a>
        </nav>
      </div>
      <div class="col-md-10">
        <br>
        <div class="row">
          <div class="col-md">
            <h5>房型：XX套房</h5>
            2018-05-15 ~ 2019-05-15
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-md-3">
            <div class="form-group ml-3">
              <label for="condition">
                <select class="form-control" name="condition">
                  <option>選擇日期區間</option>
                  <option value="1">春季</option>
                  <option value="2">夏季</option>
                  <option value="3">秋季</option>
                  <option value="4">冬季</option>
                  <option value="5">一月</option>
                  <option value="6">二月</option>
                  <option value="7">三月</option>
                  <option value="8">四月</option>
                  <option value="9">五月</option>
                  <option value="a">六月</option>
                  <option value="b">七月</option>
                  <option value="c">八月</option>
                  <option value="d">九月</option>
                  <option value="e">十月</option>
                  <option value="f">十一月</option>
                  <option value="g">十二月</option>
                  <option value="h">星期一</option>
                  <option value="i">星期二</option>
                  <option value="j">星期三</option>
                  <option value="k">星期四</option>
                  <option value="l">星期五</option>
                  <option value="m">星期六</option>
                  <option value="n">星期日</option>
                </select>
              </label>
            </div>
          </div>
          <div class="col-md-3">
            <div class="form-group">
              <label for="condition">
                <input type="number" placeholder="若價格為0則禁止預定" class="form-control" min="0" name="conditionvalue" id="conditionvalue">
              </label>
            </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-md">
            <div id='calendar'></div>
          </div>
        </div>

        <hr>
        <form action="/startrip/admin/HostConnect_Bookingday">
          <button type="submit" class="btn btn-outline-primary mr-5">儲存</button>
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

    <script src='/startrip/assets/js/moment.min.js'></script>
    <script src='/startrip/assets/js/fullcalendar.min.js'></script>


    <script>

      $(document).ready(function () {

        $('#calendar').fullCalendar({
          header: {
            left: 'prev,next',
            center: 'title',
            right: 'prevYear,nextYear'
          },
          columnHeaderText: function (mom) {
            if (mom.weekday() === 0) {
              return '星期日';
            } else if (mom.weekday() === 6) {
              return '星期六';
            } else if (mom.weekday() === 5) {
              return '星期五';
            } else if (mom.weekday() === 4) {
              return '星期四';
            } else if (mom.weekday() === 3) {
              return '星期三';
            } else if (mom.weekday() === 2) {
              return '星期二';
            } else if (mom.weekday() === 1) {
              return '星期一';
            }
          },
          monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月',
            '八月', '九月', '十月', '十一月', '十二月'],
          defaultDate: '2018-05-03',
          navLinks: false, // can click day/week names to navigate views
          editable: true,
          eventLimit: true, // allow "more" link when too many events
          selectable: true,
          select: function (startDate, endDate) {
            alert('selected ' + startDate.format() + ' to ' + endDate.format());
          },
          events: [
            {

            }
          ]

        });

      });

    </script>
</body>

</html>
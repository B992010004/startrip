<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HotelsSearchResult</title>

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

  <link rel="stylesheet" href="/startrip/assets/css/range.css">
  <style>
    .roomlink:link,
    .roomlink:visited,
    .roomlink:hover,
    .roomlink:active {
      color: black;
    }

    #section-home {
      padding-top: 45px;
      padding-bottom: 45px;
    }

    .inputState label,
    .inputState select {
      height: 46px;
      width: 100%;
      color: rgb(151, 148, 148)
    }

    .imgmaxheight {
      height: 168px;
    }

    .imgmaxheight img {
      max-width: 100%;
      max-height: 100%;
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
  <section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5"
    id="section-home">
    <div class="overlay"></div>
  </section>
  <!-- END section -->
  <div class="container">
    <div class="row">
      <!-- select -->
      <div class="col-md-3">
        <br>
        <form action="HotelsSearchResult.html" class="probootstrap-form">
          <div class="form-group">
            <!-- place -->
            <div class="row">
              <div class="col-md">
                <div class="form-group inputState">
                  <label for="id_label_location">
                    <input type="text" id="id_label_location" name="location" class="form-control" placeholder="地點或飯店名稱">
                  </label>
                </div>
              </div>
            </div>
            <!-- place -->
            <!-- arrival -->
            <div class="row">
              <div class="col-md">
                <div class="form-group">
                  <div class="probootstrap-date-wrap inputState">
                    <label for="probootstrap-date-arrival">
                      <span class="icon ion-calendar"></span>
                      <input type="text" id="probootstrap-date-arrival" name="checkin" class="form-control" placeholder="入住">
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <!-- arrival -->
            <!-- departure -->
            <div class="row">
              <div class="col-md">
                <div class="form-group">
                  <div class="probootstrap-date-wrap inputState">
                    <label for="probootstrap-date-departure">
                      <span class="icon ion-calendar"></span>
                      <input type="text" id="probootstrap-date-departure" name="checkout" class="form-control" placeholder="退房">
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <!-- departure -->
            <!-- people -->
            <div class="row">
              <div class="col-md">
                <div class="form-group inputState">
                  <label for="id_label_people">
                    <select class="form-control" name="poeple">
                      <option selected value="1">人數</option>
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>
                      <option value="9">9</option>
                      <option value="10">10</option>
                      <option value="11">11</option>
                      <option value="12">12</option>
                      <option value="13">13</option>
                      <option value="14">14</option>
                      <option value="15">15</option>
                      <option value="16">16</option>
                      <option value="17">17</option>
                      <option value="18">18</option>
                      <option value="19">19</option>
                      <option value="20">20</option>
                    </select>
                  </label>
                </div>
              </div>
            </div>
            <!-- people -->
            <!-- summit -->
            <div class="row">
              <div class="col-md">
                <div class="form-group">
                  <div class="col-md">
                    <input type="submit" value="重新搜尋" class="btn btn-primary btn-block">
                  </div>
                </div>
              </div>
            </div>
            <!-- summit -->
            <!-- END row -->
          </div>
        </form>
        <hr>
        <h4>進階篩選</h4>
        <hr>
        <h5>每晚價格</h5>
        <!-- range-slider -->
        <div class="range-slider">
          <input id="range1" value="0" min="0" max="12000" step="100" type="range" />
          <input id="range2" value="12000" min="0" max="12000" step="100" type="range" />
          <br>
          <br>
          <form class="range1">
            <input disabled type="number" value="0" min="0" max="12000" />
            <span class="rspan1">$</span>
          </form>
          <form class="range2">
            <input disabled type="number" value="12000" min="0" max="12000" />
            <span class="rspan2">$</span>
          </form>
        </div>
        <!-- range-slider -->
        <hr>
        <h5>星等</h5>
        <div>
          <label for="5star">
            <input id="5star" type="checkbox" value="5">★★★★★5星級
          </label>
          <br>
          <label for="4star">
            <input id="4star" type="checkbox" value="4">★★★★4星級
          </label>
          <br>
          <label for="3star">
            <input id="3star" type="checkbox" value="3">★★★3星級
          </label>
        </div>
        <hr>
        <h5>評分</h5>
        <!-- range-slider1 -->
        <div class="range-slider1">
          <input id="raterange1" value="0" min="0" max="10" step="0.1" type="range" />
          <input id="raterange2" value="10" min="0" max="10" step="0.1" type="range" />
          <br>
          <br>
          <input disabled class="range1" type="number" value="0" min="0" max="10" />
          <input disabled class="range2" type="number" value="10" min="0" max="10" />
        </div>
        <!-- range-slider1 -->
        <hr>
        <h5 data-toggle="collapse" data-target="#roomtypelist">房型</h5>
        <div id="roomtypelist" class="collapse">
          <form>
            <input type="checkbox" id="room1" value="1">
            <label for="room1">單人房</label>
            <br>
            <input type="checkbox" id="room2" value="2">
            <label for="room2">雙人房</label>
            <br>
            <input type="checkbox" id="room3" value="3">
            <label for="room3">三人房</label>
            <br>
            <input type="checkbox" id="room4" value="4">
            <label for="room4">四人房</label>
            <br>
            <input type="checkbox" id="room5" value="5">
            <label for="room5">四人以上</label>
            <br>
          </form>
        </div>
        <hr>
        <h5 data-toggle="collapse" data-target="#servicelist">服務</h5>
        <div id="servicelist" class="collapse">
          <form>
            <input type="checkbox" id="service1" value="1">
            <label for="service1">wifi</label>
            <br>
            <input type="checkbox" id="service2" value="2">
            <label for="service2">溫泉</label>
            <br>
            <input type="checkbox" id="service3" value="3">
            <label for="service3">停車場</label>
            <br>
            <input type="checkbox" id="service4" value="4">
            <label for="service4">接送服務</label>
            <br>
            <input type="checkbox" id="service5" value="5">
            <label for="service5">游泳池</label>
            <br>
            <input type="checkbox" id="service6" value="6">
            <label for="service6">SPA</label>
            <br>
            <input type="checkbox" id="service7" value="7">
            <label for="service7">健身中心</label>
            <br>
            <input type="checkbox" id="service8" value="8">
            <label for="service8">餐廳</label>
            <br>
            <input type="checkbox" id="service9" value="9">
            <label for="service9">可攜寵物</label>
            <br>
          </form>
        </div>
        <hr>
        <h5 data-toggle="collapse" data-target="#facilitylist">設施</h5>
        <div id="facilitylist" class="collapse">
          <form>
            <input type="checkbox" id="facility1" value="1">
            <label for="facility1">wifi</label>
            <br>
            <input type="checkbox" id="facility2" value="2">
            <label for="facility2">溫泉</label>
            <br>
            <input type="checkbox" id="facility3" value="3">
            <label for="facility3">停車場</label>
            <br>
            <input type="checkbox" id="facility4" value="4">
            <label for="facility4">接送服務</label>
            <br>
            <input type="checkbox" id="facility5" value="5">
            <label for="facility5">游泳池</label>
            <br>
            <input type="checkbox" id="facility6" value="6">
            <label for="facility6">SPA</label>
            <br>
            <input type="checkbox" id="facility7" value="7">
            <label for="facility7">健身中心</label>
            <br>
            <input type="checkbox" id="facility8" value="8">
            <label for="facility8">餐廳</label>
            <br>
            <input type="checkbox" id="facility9" value="9">
            <label for="facility9">可攜寵物</label>
            <br>
          </form>
        </div>

      </div>
      <!-- select -->
      <!-- result -->
      <div class="col-md-9">
        <br>
        <!-- 動態資料產生 -->
        <a href="Rooms.html" class="roomlink">
          <div class="row">
            <div class="col-md">
              <!-- card -->
              <div class="card">
                <div class="row">
                  <div class="col-md-4 imgmaxheight">  
                      <img src="/startrip/assets/images/img_1.jpg" class="img-thumbnail" alt="飯店圖片">
                  </div>
                  <div class="col-md-8">
                    <div class="row">
                      <div class="col-md-8">OX飯店</div>
                      <div class="col-md-4">5.7</div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">台北市內湖區</div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">★★★★★</div>
                    </div>
                    <br>
                    <br>
                    <div class="row">
                      <div class="col-md-8">服務種類</div>
                      <div class="col-md-4">價格：30000</div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end card -->
            </div>
          </div>
          <p></p>
        </a>
        <!-- 動態資料結束 -->
      </div>
      <!-- result -->
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

    var maincontent = '<a href="{link+pk}" class="roomlink"><div class="row"><div class="col-md"><div class="card"><div class="row"><div class="col-md-4 imgmaxheight">' +
      '<img src="{img src}"  class="img-thumbnail" ></div><div class="col-md-8"><div class="row">' +
      '<div class="col-md-8">{hotelname}}</div>' +
      '<div class="col-md-4">{rate}</div></div><div class="row">' +
      '<div class="col-md-12">{location}</div></div><div class="row">' +
      '<div class="col-md-12">{star}</div></div><br><br><div class="row">' +
      '<div class="col-md-8">{service list}</div>' +
      '<div class="col-md-4">{service price}</div></div></div></div></div></div></div><p></p></a>'

    $(":checkbox").change(function (e) {
      var checkstate = $(this).is(":checked")
      var checkboxvalue = $(this).val()
      var checkedid = e.target.id
      console.log(checkstate)
      console.log(checkboxvalue)
      console.log(checkedid)
    })
    $("input[type=range]").change(function (e) {
      var rangevalue = $(this).val()
      var checkedid = e.target.id
      console.log(rangevalue)
      console.log(checkedid)
    })



  </script>
</body>

</html>
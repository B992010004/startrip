<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HostConnect Rooms</title>


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

    .img-thumbnail {
      height: 60px;
    }

    .roomphoto label {
      padding-left: 0px;
      padding-right: 0px;
    }

    .roomphoto,
    .roomphoto label {
      width: 60px;
    }

    .roomnumber {
      width: 70px;
    }

    .roomname {
      width: 155px;
    }

    td {
      height: 79px;
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
            <h4>
              新增房型
            </h4>
          </div>
        </div>
        <div class="row">
          <div class="col-md">
            <table class="table table-hover">
              <thead>
                <tr>
                  <th scope="col">名稱</th>
                  <th scope="col">房型</th>
                  <th scope="col">空房數</th>
                  <th scope="col">設定</th>
                  <th scope="col">刪除</th>
                </tr>
              </thead>
              <tbody>

                <form action="">
                  <tr>
                    <td>
                      <div class="form-group mr-3">
                        <input type="text" class="form-control" placeholder="為您的房型取個名字" maxlength="12" name="name" id="name">
                      </div>
                    </td>
                    <td>
                      <div class="form-group mr-3">
                        <select id="inputState" class="form-control" name="poeple">
                          <option value="1">單人房</option>
                          <option selected value="2">雙人房</option>
                          <option value="3">三人房</option>
                          <option value="4">四人房</option>
                          <option value="5">超過四人</option>
                        </select>
                      </div>
                    </td>
                    <td>
                      <div class="form-group mr-3 roomnumber">
                        <input type="number" onkeydown="javascript: return event.keyCode == 69 ? false : true" class="form-control" placeholder="5"
                          name="rooms" id="rooms" min="1" value="1">
                      </div>
                    </td>
                    <td>
                      <form action="" method="">
                        <button type="submit" class="btn btn-outline-dark">
                          新增
                        </button>
                      </form>
                    </td>
                    <td>

                    </td>
                  </tr>
                </form>
                <!-- 動態資料產生 -->
                <tr class="trcontent1">
                  <td>
                    <p>總統套房</p>
                  </td>
                  <td>
                    <p>雙人房</p>
                    <div class="form-group mr-3" hidden>
                      <select val="2" id="inputState" class="form-control" name="poeple1">
                        <option value="1">單人房</option>
                        <option value="2">雙人房</option>
                        <option value="3">三人房</option>
                        <option value="4">四人房</option>
                        <option value="5">超過四人</option>
                      </select>
                    </div>
                  </td>
                  <td>
                    <p>10</p>
                  </td>
                  <td>
                    <form action="/startrip/admin/HostConnect_Roomset.html" method="">
                      <button type="submit" name="pk" value="111" class="btn btn-outline-dark">
                        設定
                      </button>
                    </form>
                  </td>
                  <td>
                    <form action="" method="">
                      <button type="submit" class="btn btn-outline-dark">
                        刪除
                      </button>
                    </form>
                  </td>
                </tr>
                <!-- 動態資料結束 -->
                <!-- 動態資料產生 -->
                <tr class="trcontent2">
                  <td>
                    <p>總統套房</p>
                  </td>
                  <td>
                    <p>單人房</p>
                    <div class="form-group mr-3" hidden>
                      <select val="1" class="form-control" name="poeple2">
                        <option value="1">單人房</option>
                        <option value="2">雙人房</option>
                        <option value="3">三人房</option>
                        <option value="4">四人房</option>
                        <option value="5">超過四人</option>
                      </select>
                    </div>
                  </td>
                  <td>
                    <p>10</p>
                  </td>
                  <td>
                    <form action="/startrip/admin/HostConnect_Roomset.html" method="">
                      <button type="submit" name="pk" value="111" class="btn btn-outline-dark">
                        設定
                      </button>
                    </form>
                  </td>
                  <td>
                    <form action="" method="">
                      <button type="submit" class="btn btn-outline-dark">
                        刪除
                      </button>
                    </form>
                  </td>
                </tr>
                <!-- 動態資料結束 -->
              </tbody>
            </table>
            <hr>
          </div>
        </div>
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



        $(function () {
          var trlength = $('tbody tr:last').attr('class').substr(-1)
          var i = 1
          for (1; i <= trlength; i++) {
            //text修改
            $('.trcontent' + i + ' p:eq(0)').click(roomname)
            //select修改
            $('.trcontent' + i + ' p:eq(1)').click(roomtype)
            //number修改
            $('.trcontent' + i + ' p:eq(2)').click(numberofpeople);
          }
        })


        function roomname() {
          var td = $(this);
          var text = $(this).text();
          var input = $(
            '<div class="form-group mr-3"><input type="text" class="form-control"' +
            'maxlength="12" name="name" id="name" value=' + text + '></div>'
          );
          td.html(input);

          var trnum = '.trcontent' + $(this).parent().parent().attr('class').substr(-1);

          $(trnum + ' input').click(function () {
            return false;
          });//取消表單預設行為

          $(trnum + ' input').select(); //自動全選表單內容

          $(trnum + ' input').blur(function () {
            var nextxt = $(this).val();
            td.html(nextxt ? nextxt : text)
          }); //點任意處變回文字，若空白則恢復原字串
        }

        function roomtype() {
          var td = $(this);
          var text = $(this).text();
          var num = $(this).siblings('div').children('select').attr('val')
          var trnum = '.trcontent' + $(this).parent().parent().attr('class').substr(-1);
          var selecttext = $(trnum + ' p:eq(1)')
          var selectdiv = $(trnum + ' div')
          selecttext.attr("hidden", true)
          selectdiv.attr("hidden", false)
          //點擊後替換為 select option

          $(trnum + ' option[value=' + num + ']').prop('selected', true);

          $(trnum + ' select').focus(); //自動全選表單內容

          $(trnum + ' div select').blur(function () {
            var optionvalue = $(this).val();
            // 修改後要傳送的值
            var optiontext = $(trnum + ' div option[value=' + optionvalue + ']').text();
            // 該值對應的文字內容
            $(this).attr('val', optionvalue)
            // 變更 select val 的值
            selectdiv.attr("hidden", true)
            selecttext.html(optiontext)
            selecttext.attr("hidden", false)
          });
        }

        function numberofpeople() {
          var td = $(this);
          var text = $(this).text();
          var input = $(
            '<div class="form-group mr-3 roomnumber">' +
            '<input type="number" onkeydown="javascript: return event.keyCode == 69 ? false : true" class="form-control"' +
            ' name="rooms" id="rooms" min="1" value="' + text + '"></div>'
          );
          $(this).html(input);
          var trnum = '.trcontent' + $(this).parent().parent().attr('class').substr(-1);

          $(trnum + ' input').click(function () {
            return false;
          });//取消表單預設行為

          $(trnum + ' input').select(); //自動全選表單內容

          $(trnum + ' input').blur(function () {
            var nextxt = $(this).val();
            td.html(nextxt ? nextxt : text)
          }); //點任意處變回文字
        }



      </script>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HostManage</title>

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

    .img-thumbnail {
      height: 60px;
    }
      button{
    cursor: pointer; 
    }
  </style>


</head>

<body>

	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>
<!--   <nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar"> -->
<!--     <div class="container"> -->
<!--       <a class="navbar-brand" href="#">TRIP_LOGO</a> -->
<!--       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" -->
<!--         aria-expanded="false" aria-label="Toggle navigation"> -->
<!--         <span> -->
<!--           <i class="ion-navicon"></i> -->
<!--         </span> -->
<!--       </button> -->
<!--       <div class="collapse navbar-collapse" id="probootstrap-menu"> -->
<!--         <ul class="navbar-nav ml-auto"> -->
<!--           <li class="nav-item active"> -->
<!--             <a class="nav-link" href="#">飯店</a> -->
<!--           </li> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">交通</a> -->
<!--           </li> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">景點</a> -->
<!--           </li> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">餐廳</a> -->
<!--           </li> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">討論區</a> -->
<!--           </li> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">管理</a> -->
<!--           </li> -->
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link" href="#">登入</a> -->
<!--           </li> -->
<!--         </ul> -->
<!--       </div> -->
<!--     </div> -->
<!--   </nav> -->
  <!-- END nav -->
  <section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/images/bg_1.jpg');"
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
              <form action="/startrip/admin/HostConnect_AddHotel" method="POST">
                <button type="submit" value="0" name="setting" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">
                  新增飯店
                </button>
              </form>
            </div>
            <div class="col-sm-6">
              <form action="/startrip/admin/HostConnect_Orders">
                <button type="submit" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">
                  訂單管理
                </button>
              </form>
            </div>
            <!-- select by name -->
            <div class="col-sm-4">
              <form action="HostManage" method="GET" class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" name="name" placeholder="飯店名稱查詢" aria-label="Search">
                <button class="btn btn-light my-2 my-sm-0" type="submit">查詢</button>
              </form>
            </div>
          </div>
          <br>
          <!-- 資料表格起始 -->
          <div class="row">
         <c:if test="${empty hotelList}"><h5>立刻新增您的住宿，加入我們的行列！</h5></c:if>
         <c:if test="${not empty hotelList}">
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
         <c:forEach var="hotel" items="${hotelList}">
                <tr>
                  <th scope="row">
                    <img src="/startrip/assets/images/test1.jpg" class="img-thumbnail" />
                  </th>
                  <td>${hotel.hotelname}</td>
                  <td>${hotel.hotelphone}</td>
                  <td>${hotel.hotelstar}</td>
                  <td>${hotel.hoteladdress}</td>
                  <td>
                    <form action="/startrip/admin/HostConnect_Hotel" method="POST">
                      <button type="submit" value="${hotel.hotelid}" name="hotelid"  class="btn btn-outline-dark">
                        管理
                      </button>
                    </form>
                  </td>
                  <td>
                    <form action="HostManage" method="">
                      <button type="submit" value="1" name="hotelid" class="btn btn-outline-dark">
                        未完成
                      </button>
                    </form>
                  </td>
                </tr>
         </c:forEach>
              </tbody>
              <!-- 動態資料結束 -->
            </table>
         </c:if>
          </div>
        </div>
      </div>
    </div>
  </div>


	<div>
		<jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
	</div>
	<div>
		<jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" />
	</div>
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
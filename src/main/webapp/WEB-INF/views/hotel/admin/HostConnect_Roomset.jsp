<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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


    .navtop a {
      padding-top: 5px;
    }
    .roomnumber {
      width: 112px;
    }   
     .inputState label,
    .inputState select {
      height: 46px;
      width: 100%;
      color: rgb(151, 148, 148)
    }
      button{
    cursor: pointer; 
    }
  </style>


</head>

<body>


  
<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
		
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
        <form action="/startrip/admin/Roomsetting" method="POST">
        <input hidden type="text" name="roomid" value="${roomid}">
        <br>
        <div class="row">
          <div class="col-md">
            <h4>設定此房型的基本訂房資訊
            </h4>
          </div>
        </div>
        <br>
        <h5>選擇可訂房的日期區間：</h5>
        <div class="row">
          <div class="col-md-3 ml-3">
            <div class="form-group inputState">
              <div class="probootstrap-date-wrap">
                <label for="probootstrap-date-arrival">
                  <span class="icon ion-calendar"></span>
                  <input type="text" value="${opendate}" id="probootstrap-date-arrival" name="checkin" class="form-control" placeholder="預訂起始日">
                </label>
              </div>
            </div>
          </div>
          <div class="col-md-3 ml-3">
            <div class="form-group inputState">
              <div class="probootstrap-date-wrap">
                <label for="probootstrap-date-departure">
                  <span class="icon ion-calendar"></span>
                  <input type="text" value="${enddate}" id="probootstrap-date-departure" name="checkout" class="form-control" placeholder="預訂結束日">
                </label>
              </div>
            </div>
          </div>
        </div>
        <h5>設定基本的訂房價格：</h5>
        <div class="row">
          <div class="col-md-3 ml-3">
            <div class="form-group inputState">
              <label for="price">
                <input type="number" onkeydown="javascript: return event.keyCode == 69 ? false : true" class="form-control" name="price"
                 value="${roomtype.basicprice}" id="price" min="1" placeholder="基本價格">
              </label>
            </div>
          </div>
        </div>       
         <h5>備註：</h5>
        <div class="row">
          <div class="col-md-6 ml-3">
            <div class="form-row ">
              <div class="form-group col-md">
                <textarea class="form-control" name="roomnote" rows="4" placeholder="範例：1 張雙人床 / 2 張單人床">${roomtype.roomnote}</textarea>
              </div>
            </div>
          </div>
        </div>


        <hr>
          <button type="submit" class="btn btn-outline-primary mr-5">儲存</button>
        </form>
        <br>
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
        
        <script>
        $("#adminnav").children().eq(3).attr("class","nav-link active")
        </script>

</body>

</html>
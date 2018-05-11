<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HostConnect Info</title>


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
        <form action="/startrip/admin/HostConnect_Service" method="POST">
          <br>
          <h5>介紹：</h5>
          <div class="form-row  ml-4">
            <div class="form-group col-md">
              <textarea class="form-control" name="info" rows="8"  placeholder="範例：設計概念源於18世紀布拉格的澳門勵庭海景酒店為客人帶來不同凡響的酒店住宿、餐飲及購物體驗。酒店共有389間舒適客房及55間寬敞套房，房內備有品牌淋浴用品及免費無線網路可讓客人與遠方親友保持緊密聯繫。這個揉合古典魅力和現代優雅的獨特體驗，從可品嚐國際美食的珀克餐廳延伸至可暢飲美酒的珀克酒吧。酒店更設有按摩浴池、健身中心及適合四季使用的恆温泳池，能助您舒緩緊張情緒。此外，酒店亦毗鄰多個位於澳門半島及澳門漁人碼頭的旅遊景點。這別具新藝術建築特色的酒店為您帶來無與倫比的生活享受及難忘回憶。">${hotelbean.hotelinfo}</textarea>
            </div>
          </div>
          <hr>
          <h5>政策提示：</h5>
          <div class="form-row  ml-4">
            <div class="form-group col-md">
              <textarea class="form-control" name="note" rows="8"  placeholder="範例：&#10;未滿18周歲的小孩需有成人陪同才可入住。&#10;6歲以下兒童免費房型，每床共床限1人。&#10;[2017年01月13日 - 2019年12月31日] 訂單一經確認，不可更改或添加入住人姓名。&#10;[2018年03月16日 - 2018年12月31日] 此期間每日上午9時至下午6時進行客房裝修工程，期間可能會有噪音滋擾，敬請諒解。">${hotelbean.hotelrulenote}</textarea>
            </div>
          </div>
          <hr>
          <div class="row">
            <div class="col-md-3">
              <a href="HostManage">儲存並離開</a>
            </div>
            <div class="col-md-2">
             <a href="/startrip/admin/HostConnect_Hotel" class="btn btn-outline-secondary">上一步</a>
            </div>
            <div class="col-md-2">
              <button type="submit" class="btn btn-outline-primary">下一步</button>
            </div>
          </div>
        </form>
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
    $("#adminnav").children().eq(1).attr("class","nav-link active")
    </script>

</body>

</html>
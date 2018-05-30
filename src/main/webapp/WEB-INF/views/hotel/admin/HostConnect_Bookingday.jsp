<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  <link rel="shortcut icon" type="image/x-icon" href="/startrip/assets/images/rt/favicon.ico" />

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

    a,a:visited,
    a:active {
      color: #afafaf;
    }

    .subnav .active{
      color: rgb(23, 156, 0);
    }

    a:hover,nextpage{
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
           <div class="row">
          <div class="col-md-3">
            <a href="HostManage">儲存並離開</a>
          </div>
            <div class="col-md-2">
             <a href="/startrip/admin/HostConnect_Rooms" class="btn btn-outline-secondary">上一步</a>
            </div>
            <div class="col-md-2">
            <form action="/startrip/admin/HostConnect_Image">
              <button type="submit" class="btn btn-outline-primary">下一步</button>
          	</form>
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

    <script src='/startrip/assets/js/moment.min.js'></script>
    <script src='/startrip/assets/js/fullcalendar.min.js'></script>


    <script>
    $("#adminnav").children().eq(4).attr("class","nav-link active")

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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

                <form action="/startrip/admin/AddRoom" method="POST">
                  <tr>
                    <td>
                      <div class="form-group mr-3">
                        <input type="text" class="form-control" placeholder="為您的房型取個名字" maxlength="12" name="name" id="name">
                      </div>
                    </td>
                    <td>
                      <div class="form-group mr-3">
                        <select  class="form-control" name="people">
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
                        <button type="submit" class="btn btn-outline-dark">
                          新增
                        </button>
                    </td>
                    <td>

                    </td>
                  </tr>
                </form>
                <!-- 動態資料產生 -->
                <c:forEach var="roomtype" items="${roomtypelist}" varStatus="count">
                <tr class="trcontent${count.count}" value="${roomtype.roomid}">
                  <td>
                    <p>${roomtype.roomname} <c:if test='${roomtype.roomname == ""}'>(空)</c:if></p>
                  </td>
                  <td>
                    <p>
                    	<c:choose>
                    		<c:when test="${roomtype.numberofpeople == 1}">
                    			單人房
                    		</c:when>
                    		<c:when test="${roomtype.numberofpeople == 2}">
                    			雙人房
                    		</c:when>
                    		<c:when test="${roomtype.numberofpeople == 3}">
                    			三人房
                    		</c:when>
                    		<c:when test="${roomtype.numberofpeople == 4}">
                    			四人房
                    		</c:when>
                    		<c:when test="${roomtype.numberofpeople == 5}">
                    			超過四人
                    		</c:when>
                    	</c:choose>
                    </p>
                    <div class="form-group mr-3" hidden>
                      <select  val="${roomtype.numberofpeople}" class="form-control" name="poeple${count.count}">
                        <option value="1">單人房</option>
                        <option value="2">雙人房</option>
                        <option value="3">三人房</option>
                        <option value="4">四人房</option>
                        <option value="5">超過四人</option>
                      </select>
                    </div>
                  </td>
                  <td>
                    <p>${roomtype.numberofrooms}</p>
                  </td>
                  </form>
                  <td>
                    <form action="/startrip/admin/HostConnect_Roomset" method="POST">
                      <button type="submit"  name="roomid" value="${roomtype.roomid}"  class="btn btn-outline-dark">
                        設定
                      </button>
                    </form>
                  </td>
                  <td>
                    <form action="/startrip/admin/DeleteRoom" method="POST">
                      <button type="submit" name="roomid" value="${roomtype.roomid}" class="btn btn-outline-dark">
                        刪除
                      </button>
                    </form>
                  </td>
                </tr>
                </c:forEach>
                <!-- 動態資料結束 -->
              </tbody>
            </table>
            <hr>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3">
            <a href="HostManage">儲存並離開</a>
          </div>
            <div class="col-md-2">
             <a href="/startrip/admin/HostConnect_Service" class="btn btn-outline-secondary">上一步</a>
            </div>
          <div class="col-md-2">
          	<form action="/startrip/admin/HostConnect_Bookingday">
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

      <script>

      $("#adminnav").children().eq(3).attr("class","nav-link active")

        $(function () {
          var trlength = $('tbody tr:last').attr('class').substr(-1)
          var i = 1
          for (1; i <= trlength; i++) {
            //text修改
            $('.trcontent' + i + ' p:eq(0)').click(roomname)
            //select修改
            $('.trcontent' + i + ' p:eq(1)').click(roomtype)
            //number修改
            $('.trcontent' + i + ' p:eq(2)').click(numberofrooms);
          }
        })


        function roomname() {
          var td = $(this);
          
          var roomid = $(this).parents("tr").first().attr("value")
          
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
            
            var roomname = nextxt ? nextxt : text
                    
            $.ajax
          	 ({ 
          	    url: '/startrip/admin/AjaxChangeRoomtype',
          	    data: {"name": roomname , "roomid": roomid},
          	    type: 'post'
          	 });
            
          }); //點任意處變回文字，若空白則恢復原字串
        }

        function roomtype() {
          var td = $(this);
          
          var roomid = $(this).parents("tr").first().attr("value")
          
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
            $.ajax
  	      	   ({ 
  	             url: '/startrip/admin/AjaxChangeRoomtype',
  	             data: {"people": optionvalue , "roomid": roomid},
  	             type: 'post'
  	  		   });
            
            
            var optiontext = $(trnum + ' div option[value=' + optionvalue + ']').text();
            // 該值對應的文字內容
            $(this).attr('val', optionvalue)
            // 變更 select val 的值
            selectdiv.attr("hidden", true)
            selecttext.html(optiontext)
            selecttext.attr("hidden", false)
          });
        }

        function numberofrooms() {
          var td = $(this);

          var roomid = $(this).parents("tr").first().attr("value")
          
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
            
            var people = nextxt ? nextxt : text
            
            $.ajax
  	      	 ({ 
  	          url: '/startrip/admin/AjaxChangeRoomtype',
  	          data: {"rooms": people , "roomid": roomid},
  	          type: 'post',
  	          success:function(info){
  	          console.log(info);
  	          },
  	  		 });
          }); //點任意處變回文字並傳送資料
        }

        


      </script>

</body>

</html>
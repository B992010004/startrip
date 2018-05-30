<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>StarTrip&mdash;星遊網</title>
    <meta name="description" content="Free Bootstrap 4 Theme by ProBootstrap.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

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
    <link href="/startrip/assets/css/bootstrap/botton.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" type="image/x-icon" href="/startrip/assets/images/rt/favicon.ico" />
    <style>
        #section-home {
            padding-top: 45px;
            padding-bottom: 45px;
        }

        tbody td img {
            max-width: 180px;
            height: 130px;
        }
         .roomPhoto {
        	width: 200px;
        	
        }
    </style>
</head>

<body>

    <div>
        <jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
    </div>
    <!-- END nav -->
    <section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/images/bg_1.jpg');"
        data-stellar-background-ratio="0.5" id="section-home">
        <div class="overlay"></div>
    </section>

    <section class="probootstrap_section bg-light" id="section-contact">
        <div class="container">
            <div class="row">
                <div style="margin: auto" class="col-md-12  probootstrap-animate">
                    <div class="probootstrap-form probootstrap-form-box mb60">
                        <h1>預定</h1>
                        <br>
                        <h6>這些是您在 Star Trip 上已經完成的預訂。</h6>
                        <br>

                        <c:if test="${ empty rtlist &&empty hotelList}">
                            <h6>您目前沒有訂單</h6>
                        </c:if>
                        <c:if test="${ !empty hotelList }">
                              <h4>飯店</h4>
                            <div id="hotelerror"></div>
                            <table class="table table-bordered" id="hotelTable">
                                <thead>
                                    <tr>
                                        <th width="20%" scope="col">飯店</th>
                                        <th width="25%" scope="col">房型介紹</th>
                                        <th width="25%" scope="col">設施</th>
                                        <th width="15%" scope="col">每晚平均房價</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                           
                           
                             <c:forEach var='hotelLists' items='${hotelList}'>
                         
                                        <tr>
                                            <td scope="row">
                                              <c:forEach var="photo" items="${hotelLists.room.photoArr }">
                                                 <img class="roomPhoto" src="/startrip/getPicture/rooms/${hotelLists.hotelid }/${photo }">
                                               </c:forEach>
                                                <br>
                                                <span> ${hotelLists.hotelBean.hotelname }
                                              </span>
                                            </td>
                                           <td>

                                                  房型:&nbsp${hotelLists.room.roomname }
                                            

                                          <br>地址:&nbsp${hotelLists.hotelBean.hoteladdress }
                                            
                                            <br>

											<span>電話:&nbsp${hotelLists.hotelBean.hotelphone}</span>
                                            <br>入住日期: &nbsp${hotelLists.checkin}
                                            <br>退房日期:&nbsp ${hotelLists.checkout }
                                        </td>
                                        <td>1 張雙人床 / 2 張單人床
                                            <br>室內WIFI
                                        </td>
                                        <td>&nbsp${hotelLists.room.basicprice}</td>
                                            
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>                       
                        </c:if>
                        <c:if test="${ !empty rtlist }">
                            <h4>餐廳</h4>
                            <div id="rterror"></div>
                            <table class="table table-bordered" id="rtTable">
                                <thead>
                                    <tr>
                                        <th width="20%" scope="col">餐廳名稱</th>
                                        <th width="25%" scope="col">用餐日期</th>
                                        <th width="25%" scope="col">需求</th>
                                        <th width="15%" scope="col">其他注意事項</th>
                                        <th width="15%" scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var='rtlists' items='${rtlist}'>
                                        <tr>
                                            <td scope="row">
                                                <input type="text" style="display: none;" value="${rtlists.bgId}">
                                                <img src="<c:url value='/getrtPicture/${rtlists.rtId}'/>">
                                                <br>
                                                <span>&nbsp${rtlists.rtname}</span>
                                            </td>

                                            <td>用餐日期:&nbsp${rtlists.bgDate}
                                                <BR>用餐時段:&nbsp${rtlists.bgPeriod}
                                            </td>
                                            <td>訂位人數:&nbsp${rtlists.bgPeople}
                                                <c:if test="${rtlists.cnPeople!=0}">+${rtlists.cnPeople}</c:if>
                                                <br>兒童專用椅:&nbsp${rtlists.cnChair}
                                                <br>
                                            </td>
                                            <td>&nbsp${rtlists.bgNote}
                                                <br>
                                            </td>
                                            <td>
                                                <button type="button" class="btn btn-primary" id="canclebutton">取消訂位</button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <div>
        <jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" />
    </div>
    <div>
        <jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
    </div>
    <script src="/startrip/assets/js/jquery.min.js"></script>
    <script src="/startrip/assets/js/popper.min.js"></script>
    <script src="/startrip/assets/js/bootstrap.min.js"></script>
    <script src="/startrip/assets/js/owl.carousel.min.js"></script>
    <script src="/startrip/assets/js/bootstrap-datepicker.js"></script>
    <script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
    <script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
    <script src="/startrip/assets/js/select2.min.js"></script>
    <script src="/startrip/assets/js/main.js"></script>
    <script>
        $('#rtTable>tbody').on('click', 'tr button', function () {
            var id = $(this).parents('tr').find('td>input').val();
            var ajaxdata = { bgId: id };
            $.ajax({
                url: "/startrip/deletedata",
                type: "GET",
                data: ajaxdata,
                success: function (responseText, textStatus) {
                    if (responseText == 1) {
                        alert("您的定位已經取消");
                        window.location.reload();
                    }
                }
            })
        })
    </script>
</body>

</html>
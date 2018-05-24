<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>付款完成!</title>
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
                <div style="margin: auto" class="col-md-10  probootstrap-animate">
                    <div class="probootstrap-form probootstrap-form-box mb60">

<%--                         <c:if test="${ empty rtlist }"> --%>
<!--                             <h6>您目前沒有訂單</h6> -->
<%--                         </c:if> --%>
<%--                         <c:if test="${ !empty hotellist }"> --%>
                        <h1>訂單完成囉!</h1>
                        <br>
                        <h6>祝您旅途愉快</h6>
                        <br>
                            <h4>飯店資訊</h4>
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th width="20%" scope="col">房型</th>
                                        <th width="25%" scope="col"></th>
                                        <th width="25%" scope="col">設施</th>
                                        <th width="15%" scope="col">每晚平均房價</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <th scope="row">
                                            <img class="roomPhoto" src="/startrip/assets/images/roomStyle.jpg">
                                            <br> 豪華雙人房
                                        </th>
                                        <td>太魯閣晶英酒店 (Silks Place Taroko Hotel)
                                            <br>972花蓮縣秀林鄉天祥路18號
                                            <br>38691155
                                            <br>入住日期:
                                            <br>退房日期:
                                        </td>
                                        <td>1 張雙人床 / 2 張單人床
                                            <br>室內WIFI
                                        </td>
                                        <td>3000</td>

                                    </tr>

                                </tbody>
                            </table>
                            <br>
<%--                         </c:if> --%>
                        
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
    
</body>

</html>
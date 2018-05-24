<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${hotel.hotelname }&mdash;豪華雙人房</title>


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
    <!-- END section -->
    <!-- start checkout -->
    <div class="container">
        <div class="row">
            <div class="col-md-1"></div>
            <div id="userinfo" class="col-md-6">
                <br>
                <form name="userinfo">
                    <h5>*聯絡人姓名</h5>
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <input type="text" class="form-control" name="lastname" id="lastname" placeholder="姓" value="${LoginOK.lastname }">
                        </div>
                        <div class="form-group col-md-6">
                            <input type="text" class="form-control" name="firstname" id="firstname" placeholder="名" value="${LoginOK.firstname }">
                        </div>
                    </div>
                    <h5>*聯絡Email</h5>
                    <div class="form-row">
                        <div class="form-group col-md-11">
                            <input type="text" class="form-control" name="email" id="email" placeholder="Email" value="${LoginOK.mail }">
                        </div>
                    </div>
                    <h5>*手機號碼</h5>
                    <div class="form-row">
                        <div class="form-group col-md-11">
                            <input type="text" class="form-control" name="cellphone" id="cellphone" placeholder="0900123456" value="${LoginOK.phone }">
                        </div>
                    </div>
                    <br>
                    <h5>備註</h5>
                    <div class="form-row">
                        <div class="form-group col-md-11">
                            <textarea class="form-control" name=ordernote id="ordernote" rows="3"></textarea>
                        </div>
                    </div>
                    <br>

                    <c:if test="${empty LoginOK }">
                        <h5>管理您的預訂</h5>
                        (輸入密碼即可使用上方的電子郵件地址建立帳戶。)
                        <div class="form-row">
                            <div class="form-group col-md-11">
                                <input type="password" id="password" class="form-control" name="password" placeholder="設定密碼 ( 6 至 30 個字元，且不可使用空格 )">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-11">
                                <input type="password" class="form-control" name="password" placeholder="再次輸入密碼">
                            </div>
                        </div>
                        <br>
                    </c:if>

                    <br>
                    <input type="hidden" name="memberid" id="memberid" value="${LoginOK.memberid }">
                </form>
                <h5>*選擇付款方式</h5>
                <table rules="none" class="table">
                    <tbody>
                        <tr>
                            <!--                             <td> -->
                            <!--                                 <button type="button" name="payment" value="creditcard" class="btn btn-light">信用卡</button> -->
                            <!--                             </td> -->
                            <td>
                                <button id="allPay" name="payment" value="allPay" class="btn btn-light">歐付寶</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br>
            </div>
            <div class="col-md-4">
                <br>
                <img src="/startrip/assets/images/roomStyle.jpg" width="100%">
                <table class="table">
                    <tbody>
                        <tr>
                            <td>${hotel.hotelname }</td>
                        </tr>
                        <tr>
                            <td>${room.roomname }</td>
                        </tr>
                        <tr>
                            <td>${searchBean.checkIn } ~ ${searchBean.checkOut } (${searchBean.night}晚 )
                                <br>// 點擊查看每晚明細
                            </td>
                        </tr>
                        <tr>
                            <td>總金額 NT ${room.basicprice*searchBean.night } 元</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>

    <!-- end checkout -->
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
                    <p class="probootstrap_font-14">
                        &copy; 2017. All Rights Reserved.
                        <br> Designed &amp; Developed by
                        <a href="#" target="_blank">ProBootstrap</a>
                        <small> (Don't remove credit link on this footer. See
                            <a href="#">license</a>)
                        </small>
                    </p>
                    <p class="probootstrap_font-14">
                        Demo Images:
                        <a href="#" target="_blank">Unsplash</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- END section -->
    <div>
        <jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
    </div>
    <div>
        <jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" />
    </div>

    <div id="responce">
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
        $(document).ready(function () {
            $('#allPay').click(function () {
                // 				var formData = new FormData(document.userinfo);
                var formData = {};
                formData.lastname = $('#lastname').val();
                formData.firstname = $('#firstname').val();
                formData.email = $('#email').val();
                formData.cellphone = $('#cellphone').val();
                formData.memberid = $('#memberid').val();
                formData.password = $('#password').val();
                console.log(formData);
                $.ajax({
                    url: '/startrip/frontEnd/aioCheckOut/aioCheckOutALL/${hotel.hotelid }/${room.roomtype }',
                    type: 'POST',
                    //enctype: "multipart/form-data",
                    //contentType : false,
                    //processData : false,
                    //dataType:"json",
                    data: formData,
                    success: function (responce) {
                        $('#responce').html(responce);
                    },
                    error: function (e) {
                        console.log(e);
                    }

                });
            });
        });



    </script>

</body>

</html>
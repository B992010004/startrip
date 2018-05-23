<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Free Bootstrap 4 Theme by ProBootstrap.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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




<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/transport/images/into.jpg');"
        data-stellar-background-ratio="0.5" id="section-home">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md probootstrap-animate">
                    <form action="/startrip/selectTripInf" class="probootstrap-form" style="border-radius: 30px;">
                        <div class="form-group">
                            <div class="row">
                             	<div>
			<select id="destination" name="" style="width: 120px">
				<option value="" selected="selected">請選擇</option>
				<c:forEach items='${stationList}' var='select'>


					<option value="">${select.stationName}</option>

				</c:forEach>

			</select>
		</div>
                             
                             
                             
                             
                                <!-- 							送出 -->
                                <!-- summit -->
                                <div class="col-md">
                                    <div class="form-group">
                                        <div class="col-md">
                                            <input type="submit" value="送出" class="btn btn-primary btn-block">
                                        </div>
                                    </div>
                                </div>
                                <!-- summit -->

                                <!-- 							送出 -->

                            </div>
                        </div>
                    </form>
                </div>
            </div>
    </section>







</body>
</html>
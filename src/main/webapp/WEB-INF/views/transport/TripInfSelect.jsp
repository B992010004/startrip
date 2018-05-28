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
     <script src="/startrip/assets/js/jquery.min.js"></script>

    <script src="/startrip/assets/js/popper.min.js"></script>
    <script src="/startrip/assets/js/bootstrap.min.js"></script>
    <script src="/startrip/assets/js/owl.carousel.min.js"></script>

    <script src="/startrip/assets/js/bootstrap-datepicker.js"></script>
    <script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
    <script src="/startrip/assets/js/jquery.easing.1.3.js"></script>

    <script src="/startrip/assets/js/select2.min.js"></script>

    <script src="/startrip/assets/js/main.js"></script>
    
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
<title>班次資訊</title>
</head>
<script>
$(function(){
$('.navbar-nav.ml-auto').children().eq(0).removeClass('active');
$('.navbar-nav.ml-auto').children().eq(2).addClass('active')
});

</script>
<body>
<div>
        <jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
    </div>

 <section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/transport/images/into.jpg');"
        data-stellar-background-ratio="0.5" id="section-home">
      <div class="container">  
 <form action="/startrip/stationEdit" class="probootstrap-form" style="border-radius: 30px;">
<table border="1" cellpadding="10" cellspacing="0" class="table  table-bordered">
		
		<tr align="center">班次資訊
			<th>班次編號</th>
			<th>日期</th>
			<th>起站名稱</th>
			<th>迄站名稱</th>
			<th>剩餘座位</th>
			<th>發車時間</th>
			<th>票價</th>
			<th>選擇班次</th>
			
		</tr>
			<c:forEach items='${TripInfList}' var='select'>
			<tr>
				<td>${select.trip}</td>			
				<td><fmt:formatDate pattern="yyyy-MM-dd"  value="${select.date}" /></td>
				<td>${select.starStation}</td>
				<td>${select.endStation}</td>
				<td>${select.seateList}</td>
				<td>${select.starTime}</td>
				<td>${select.price}</td>
				<td><input type="submit" value="選擇班次" class="btn btn-primary btn-block"></td>
	
			</tr>
		</c:forEach>
	</table>
		</form>
		</div>
  </section>


<div>
		<jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
	</div>
	<div>
		<jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" />
	</div>

</body>
</html>
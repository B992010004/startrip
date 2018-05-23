<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/startrip/assets/Travel/css/jquery-ui.min.css" >

	<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="/startrip/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="/startrip/assets/css/animate.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/startrip/assets/css/bootstrap/botton.css" type="text/css" />
    <link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/startrip/assets/css/select2.css">
    <link rel="stylesheet" href="/startrip/assets/css/helpers.css">
    <link rel="stylesheet" href="/startrip/assets/css/style.css">

</head>
<body>
	
	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>
	
 <section class="probootstrap_section bg-dark" id="section-contact">
        <div class="container">	



<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#model" data-show="true" > -->
<!--   新增行程 -->
<!-- </button> -->

<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" id="model" >
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">新增行程</h5>
<!-- 					<button type="button" class="close" data-dismiss="modal" -->
<!-- 						aria-label="Close"> -->
<!-- 						<span aria-hidden="true">&times;</span> -->
<!-- 					</button> -->
				</div>

<form:form method='POST' modelAttribute="TravelAllBean">
		<div class="modal-body">
			
			<div class="form-group">
				<label class="form-control-label" for="formGroupExampleInput">travelName:</label>
				<form:input path="travelName" placeholder="請輸入行程名稱" type="text"
					id="travelName" class="form-control" />
			</div>

			<div class="form-group">
				<label class="form-control-label" for="startDate:">startDate:</label>
				<form:input path="startDate" placeholder="起始日期" type="text"
					name="startDate" id="startDate" class="form-control" />
			</div>
			<div class="form-group">
				<label class="form-control-label" for="endDate">endDate:</label>
				<form:input path="endDate" placeholder="結束日期" type="text"
					name="endDate" id="endDate" class="form-control" />
			</div>
				

		</div>



		<div class="modal-footer">
			<button type="button" class="btn btn-primary" id="back">返回</button>
			<button type="submit" class="btn btn-primary">確認</button>
		</div>

	</form:form>
	</div>
	</div>
	</div>
	
	

	
</div></section>	
 <div>
        <jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
    </div>
    <div>
        <jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" />
    </div>
 
	<script src="/startrip/assets/js/jquery.min.js"></script>
    <script src="/startrip/assets/js/popper.min.js"></script>
    <script src="/startrip/assets/js/bootstrap.min.js"></script>
    <script src="/startrip/assets/js/owl.carousel.min.js"></script>
    <script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
    <script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
    <script src="/startrip/assets/js/select2.min.js"></script>
    <script src="/startrip/assets/js/main.js"></script>	




	
	
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="/startrip/assets/Travel/js/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	
	
	<script>
	$(function() {
		//dataPicker
			var dateFormat = "yy-mm-dd", 
			startDate = $("#startDate").datepicker({
				 dateFormat: "yy-mm-dd",
				defaultDate : "+1w",
				changeMonth : true,
				numberOfMonths : 1
			}).on("change", function() {
				endDate.datepicker("option", "minDate", getDate(this));
			}), 
			endDate = $("#endDate").datepicker({
				dateFormat: "yy-mm-dd",
				defaultDate : "+1w",
				changeMonth : true,
				numberOfMonths : 1
			}).on("change", function() {
				startDate.datepicker("option", "maxDate", getDate(this));
			});

			 function getDate( element ) {
			      var date;
			      try {
			        date = $.datepicker.parseDate( dateFormat, element.value );
			      } catch( error ) {
			        date = null;
			      }
			 
			      return date;
			    }
			 //互動視窗狀態
			 $("#model").modal({
				 "show":true,
				 "backdrop": 'static',
				 "keyboard":false,
				 })
				//返回
			 $("#back").click(function(){
				 history.go(-1);
			 	})
			  });//end
	</script>
	
</body>
</html>
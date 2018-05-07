<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
</head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- Bootstrap core CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css"
		rel="stylesheet">
	<link rel="stylesheet"	href="/startrip/assets/Travel/css/timepicker.min.css">
<body>
	

	

	</head>
<body>
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addList">
  新增行程
</button>

<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" id="addList">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">新增清單</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

<form:form method='POST' modelAttribute="TravelAllBean">
		<div class="modal-body">
			<div class="form-group">
				<label class="form-control-label" for="formGroupExampleInput">mail:</label>
				<form:input path="mail" placeholder="請輸入行程名稱" type="text" id="mail"
					class="form-control" />

			</div>


			<div class="form-group">
				<label class="form-control-label" for="formGroupExampleInput">travelName:</label>
				<form:input path="travelName" placeholder="請輸入行程名稱" type="text"
					id="travelName" class="form-control" />
			</div>

			<div class="form-group">
				<label class="form-control-label" for="formGroupExampleInput">startDate:</label>
				<form:input path="startDate" placeholder="請輸入行程名稱" type="text"
					id="startDate" class="form-control" />
			</div>
			<div class="form-group">
				<label class="form-control-label" for="formGroupExampleInput">endDate:</label>
				<form:input path="endDate" placeholder="請輸入行程名稱" type="text"
					id="endDate" class="form-control" />
			</div>


		</div>



		<div class="modal-footer">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>

	</form:form>
	</div>
	</div>
	</div>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			var dateFormat = "mm/dd/yy", from = $("#from").datepicker({
				defaultDate : "+1w",
				changeMonth : true,
				numberOfMonths : 1
			}).on("change", function() {
				to.datepicker("option", "minDate", getDate(this));
			}), to = $("#to").datepicker({
				defaultDate : "+1w",
				changeMonth : true,
				numberOfMonths : 1
			}).on("change", function() {
				from.datepicker("option", "maxDate", getDate(this));
			});

			function getDate(element) {
				var date;
				try {
					date = $.datepicker.parseDate(dateFormat, element.value);
				} catch (error) {
					date = null;
				}

				return date;
			}
		});
	</script>
</body>


</html>
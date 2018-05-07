<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<!-- Font Awesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/startrip/assets/Travel/css/timepicker.min.css">

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
	<form:form method='POST' modelAttribute="TravelListBean">
  <div class="modal-body">     
	<div class="form-group">
	<label  class="form-control-label" for="formGroupExampleInput">viewName:</label>
	    <form:input path="viewName" placeholder="請輸入行程名稱" type="text" id="viewName" class="form-control"/>
	  
	</div>
	
	<div class="form-group">
	<label  class="form-control-label" for="formGroupExampleInput">開始時間</label>
	    <form:input path="startTime" placeholder="Selected starttime" type="text" id="starttime" class="form-control"/>
	  
	</div>
	
	
	<div class="form-group">
	<label class="form-control-label" for="formGroupExampleInput">結束時間</label>
	    <form:input path="endTime" placeholder="Selected endtime" type="text" id="endtime" class="form-control"/>
	  
	</div>
	
	<div class="form-group">
	<label  class="form-control-label" for="formGroupExampleInput">travelType:</label>
	    <form:input path="travelType" placeholder="請選擇類型" type="text" id="TravelType" class="form-control"/>
	  
	</div>	
	
	<div class="form-group">
	<label  class="form-control-label" for="formGroupExampleInput">tripday:</label>
	    <form:input path="tripday" placeholder="請輸入行程名稱" type="text" id="travelDay" class="form-control"/>
	</div>	
	</div>
	<div class="modal-footer">
  		<button type="submit" class="btn btn-primary">Submit</button>
  	</div>
  </form:form>
		</div>
	</div>
</div>
	
	
	
	
	
	
<%-- 	<label>class</label><form:select path="Orgclass'"> --%>
<%-- 		<form:option value='-1' lable="請挑選"/> --%>
<%-- 		<form:options items="${orgclassList}"/> --%>
<%-- 	</form:select> --%>
	
	




<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="/startrip/assets/Travel/js/timepicker.min.js"></script>
<script>
 $(document).ready(function() {
	
		$('#starttime').timepicker();
		console.log($('#starttime').val());
		$('#endtime').timepicker();
		
		
		$('#myModal').on('shown.bs.modal', function () {
			  $('#myInput').trigger('focus')
			})

 }); 
 </script>        
    
</body>
</html>
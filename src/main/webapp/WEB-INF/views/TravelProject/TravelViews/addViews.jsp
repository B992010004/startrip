<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增景點</title>
<link rel="shortcut icon" type="image/x-icon" href="/startrip/assets/images/rt/favicon.ico" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModalCenter">Launch demo modal</button>



	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">


					<form:form method='POST' modelAttribute="TravelViewBean"
						enctype="multipart/form-data">
						<div class="form-group">
							<label for="formGroupExampleInput">memberId</label>
							<form:input path="memberId" type='text' class="form-control"
								id="mail" placeholder="使用者" />
							<br>
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput2">name:</label>
							<form:input path="viewName" type='text' class="form-control"
								id="viewName" placeholder="景點名稱" />
							<br>
						</div>

						<div class="form-group">
							<label for="formGroupExampleInput">address</label>
							<form:input path="viewaddr" type='text' class="form-control"
								id="viewaddr" placeholder="地址" />
							<br>
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput2">phone</label>
							<form:input path="viewPhone" type='text' class="form-control"
								id="viewPhone" placeholder="電話" />
							<br>
						</div>

						<div class="form-group">
							<label for="formGroupExampleInput">detail</label>
							<form:textarea path='viewDetail' cols='20' rows='7'
								class="form-control" id="viewDetail" placeholder="簡介" />
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput2">圖片</label>
							<form:input path="imgSrc" type="file" multiple="multiple"
								class="form-control-file" id="exampleFormControlFile1" />
						</div>

						<div class="modal-footer">
								<button type="submit" class="btn btn-primary">Submit</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>




	<%-- 	<label>class</label><form:select path="Orgclass'"> --%>
	<%-- 		<form:option value='-1' lable="請挑選"/> --%>
	<%-- 		<form:options items="${orgclassList}"/> --%>
	<%-- 	</form:select> --%>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
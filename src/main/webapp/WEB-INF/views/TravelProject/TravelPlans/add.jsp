<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form method='POST' modelAttribute="TravelAllBean">

	<label>mail:</label>
	<form:input path="mail" type='text'/><br>
	<label>travelName</label>
	<form:input path="travelName" type='text'/><br>
	<label>startDate</label>
	<form:input path="startDate" type='text'/><br>
	<label>endDate</label>
	<form:input path="endDate" type='text'/><br>
	
<%-- 	<label>class</label><form:select path="Orgclass'"> --%>
<%-- 		<form:option value='-1' lable="請挑選"/> --%>
<%-- 		<form:options items="${orgclassList}"/> --%>
<%-- 	</form:select> --%>
	
	<input type="submit" value="確定"><br>

</form:form>
</body>
</html>
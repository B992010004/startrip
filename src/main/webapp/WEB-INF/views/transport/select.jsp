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
<title>站名編號查詢</title>
</head>
<body>
<a href="/startrip/stationEdit">新增車站</a>

<table border="1" cellpadding="10" cellspacing="0">
<tr>
	<th>站名編號</th>
	<th>地區</th>
	<th>站名</th>
</tr>

<c:forEach items='${stationList}' var='select'>
	<tr>
		<td>${select.stationId} </td>	
		<td>${select.area} </td>	
		<td>${select.stationName} </td>		
	</tr>
</c:forEach>	
</table>


</body>
</html>
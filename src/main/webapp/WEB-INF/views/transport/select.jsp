<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>站名編號查詢</title>
</head>
<body>

<c:if test="${! empty rquestScope.station }">
<table border="1" cellpadding="10" cellspacing="0">
<tr>
	<th>Station_id</th>
	<th>Area</th>
	<th>Station_Name</th>
</tr>

<c:forEach items="${Station}" var="/transport/station">
	<tr>
		<td>${StationId} </td>	
		<td>${area} </td>	
		<td>${stationName} </td>		
	</tr>
</c:forEach>	
</table>
</c:if>

</body>
</html>
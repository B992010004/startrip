<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC 
"-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC</title>
<link rel='stylesheet' href='css/styles.css'  type="text/css" />
</head>
<body>
	<h1 style="text-align:center">MVC Exercise</h1>
	<hr>
	<table border="1" style="margin: 0px auto;">
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="left"/>
				<a href='welcome'>Hello Spring MVC</a><br> 
			</td>
			<td  width="350"><p align="left"/>
      			<a href='products'>查詢產品資料</a><br>
    		</td>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="left"/>
				<a href='products'>查詢所有產品資料</a><br> 
			</td>
			<td  width="350"><p align="left"/>
      			<a href='update/stock'>更新多筆產品的庫存數量</a><br>
    		</td>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
    		<td width="350"><p align="left" /> 
    			<a href='queryByCategory'>分類查詢</a><br> 
    		</td>
		    <td width="350"><p align="left" />
		    	<a href='products/add'>新增產品資料</a><br>
    		</td>
		</tr>
		
		<tr height="52" bgcolor="lightblue" align="center">
    		<td width="350"><p align="left" /> 
    			<a href='forwardDemo'>RedirectView: forwardDemo</a><br> 
    		</td>
		    <td width="350"><p align="left" />
		    	<a href='redirectDemo'>RedirectView: redirectDemo</a><br>
    		</td>
		</tr>
		
	</table>
</body>
</html>
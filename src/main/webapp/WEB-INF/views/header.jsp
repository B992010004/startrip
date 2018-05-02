<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar"
		id="probootstrap-navbar">
	<div class="container">
		<a class="navbar-brand" href="/">Places</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#probootstrap-menu" aria-controls="probootstrap-menu"
			aria-expanded="false" aria-label="Toggle navigation">
			<span><i class="ion-navicon"></i></span>
		</button>
		<div class="collapse navbar-collapse" id="probootstrap-menu">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="city-guides.html">City Guides</a></li>
				<li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
				<li class="nav-item"><a class="nav-link" href="review/UserReviewEdit">寫評論</a></li>
				<li class="nav-item"><c:if test="${ !empty LoginOK }">
						<a class="nav-link" href="travel.html">會員專區 </a>
					</c:if></li>
				<li class="nav-item"><c:if test="${ !empty LoginOK }">
						<a class="nav-link" href="travel.html"> ${userBean.username} </a>
					</c:if></li>
				<li class="nav-item"><c:if test="${ empty LoginOK }">
						<a class="nav-link" href="#" data-toggle="modal"
							data-target=".bd-example-modal-lg">登入</a>
					</c:if> <c:if test="${ !empty LoginOK }">
						<a class="nav-link" href="index">登出</a>
					</c:if>
			</ul>
		</div>
	</div>
	</nav>
	<!-- END nav -->
</body>
</html>
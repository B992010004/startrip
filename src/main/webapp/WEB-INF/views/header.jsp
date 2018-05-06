<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
					href="/startrip/">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="city-guides.html">City Guides</a></li>
				<li class="nav-item"><a class="nav-link" href="/startrip/TravelMain">行程規劃</a></li>
				<li class="nav-item"><a class="nav-link" href="/startrip/review/UserReviewEdit">寫評論</a></li>
				<li class="nav-item"><c:if test="${ !empty LoginOK }">
						<a class="nav-link" href="travel.html">會員專區 </a>
					</c:if></li>
				<li class="nav-item"><c:if test="${ !empty LoginOK }">
						<a class="nav-link" href="travel.html"> ${userBean.username} </a>
					</c:if></li>
				<li class="nav-item"><c:if test="${ empty LoginOK }">
						<a class="nav-link" href="/startrip/login" data-toggle="modal"
							data-target=".bd-example-modal-lg">登入</a>
					</c:if> <c:if test="${ !empty LoginOK }">
						<a class="nav-link" href="logout">登出</a>
					</c:if>
				
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
</body>
</html>
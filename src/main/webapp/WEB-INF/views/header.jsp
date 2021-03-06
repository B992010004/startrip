<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
	<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">


		<div class="container">
			<a class="navbar-brand" href="#">TRIP_LOGO</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu"
			 aria-expanded="false" aria-label="Toggle navigation">
				<span>
					<i class="ion-navicon"></i>
				</span>
			</button>
			<div class="collapse navbar-collapse" id="probootstrap-menu">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item  active">
						<a class="nav-link" href="/startrip/">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/startrip/Rooms">房型</a>
					</li>

					<li class="nav-item"><a class="nav-link"
						href="/startrip/restaurantHome">餐廳</a></li>
						<li class="nav-item"><a class="nav-link"
						href="/startrip/station/index">大眾運輸</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/startrip/station/index">大眾運輸</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/startrip/TravelMain">行程規劃</a></li>
					<li class="nav-item"><a class="nav-link"														
						href="/startrip/review/UserReviewEdit/1">寫評論</a></li>	
					
					<li class="nav-item"><a class="nav-link"
						href="/startrip/insertupdate">餐廳資料修改</a></li>
					

                    <!-- 測試 --><li class="nav-item"><a class="nav-link"
						href="/startrip/Individualdetails">o測試o個別餐廳資料o</a></li><!-- 測試 -->

					<li class="nav-item">
						<c:if test="${ empty LoginOK }">
							<a class="nav-link" href="#" data-toggle="modal" data-target=".bd-example-modal-lg">登入</a>
						</c:if>
					</li>
					<li class="nav-item">
						<c:if test="${ !empty LoginOK }">								
			            <div class="dropdown show">
					<a class="nav-link" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">		
								${LoginOK.username}
									<img style="border-radius: 50%;" width="30px" height="30px" src="<c:url value='/getPicture/${LoginOK.mail}'/>">
								</a>
								  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
									<a class="btn" href="ModifyMember">修改個人資料 </a>
									<a class="btn" href="#">Another action</a>
									<a class="btn" href="logout">登出</a>
								</div>
								</div>
							</c:if>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

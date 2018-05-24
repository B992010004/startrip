<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar"
	id="probootstrap-navbar">
<script>
	function statusChangeCallback(response) {
		if (response.status === 'connected') {
			FB.logout();
			testAPI();
		}
	}
	function checkLoginState() {
		FB.getLoginStatus(function(response) {
			statusChangeCallback(response);
		});
	}
	window.fbAsyncInit = function() {
		FB.init({
			appId : '1677443222291210',
			cookie : true,
			xfbml : true,
			version : 'v2.8'
		});
		FB.getLoginStatus(function(response) {
			statusChangeCallback(response);
		});

	};
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = 'https://connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v3.0&appId=1677443222291210&autoLogAppEvents=1';
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	
	document.addEventListener("DOMContentLoaded", function() {
		document.getElementById("logout").addEventListener("click",
				fblogout);})
	
	function fblogout(){     
		FB.logout(function(response){    
		localStorage.clear();	
		location.replace( "https://startrip.southeastasia.cloudapp.azure.com:8443/startrip");
		})}
	
		
	function testAPI() {
		FB.api('/me', function(response) {
             var ajaxdata = {
				userid : response.id,
				username : response.name
			}
			$.ajax({
				url : "/startrip/facebooklogin",
				type : "POST",
				data : ajaxdata,
				async : false,
				success : function(responseText, textStatus) {
					document.location.href = "https://startrip.southeastasia.cloudapp.azure.com:8443/startrip";
				},
				error : function() {

				}
			});
		});
	}
</script>
	<div class="container">
		<a class="navbar-brand" href="/startrip/">
			<h2 style="color:white;">Star ★ Trip</h2></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#probootstrap-menu" aria-controls="probootstrap-menu"
			aria-expanded="false" aria-label="Toggle navigation">
			<span> <i class="ion-navicon"></i>
			</span>
		</button>
		<div class="collapse navbar-collapse" id="probootstrap-menu">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item  active"><a class="nav-link"
					href="/startrip/">Home</a></li>

				<li class="nav-item"><a class="nav-link"
					href="/startrip/restaurantHome">餐廳</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/startrip/select">大眾運輸</a></li>
					<c:if test="${not empty LoginOK}">
				<li class="nav-item"><a class="nav-link"
					href="/startrip/TravelMain/">行程規劃</a></li>
					</c:if>
				<c:if test="${not empty LoginOK}">
					<li class="nav-item"><a class="nav-link"
						href="/startrip/admin/HostManage">✎住宿管理</a></li>
				</c:if>
				<c:if test="${not empty LoginOK}">
					<li class="nav-item"><a class="nav-link"
						href="/startrip/insertupdate">✎餐廳管理</a></li>
				</c:if>

				<li class="nav-item"><c:if test="${ empty LoginOK }">
						<a class="nav-link" href="" data-toggle="modal"
							data-target=".bd-example-modal-lg">登入</a>
					</c:if></li>
				<li class="nav-item"><c:if test="${ !empty LoginOK }">
						<div class="dropdown show">
							<a class="nav-link" href="#" role="button" id="dropdownMenuLink"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> ${LoginOK.lastname} <img
								style="border-radius: 50%;" width="30px" height="30px"
								src="<c:url value='/getPicture/${LoginOK.mail}'/>">
							</a>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<a class="btn" href="/startrip/ModifyMember">編輯個人資料 </a> <a
									class="btn" href="/startrip/selectdata/${LoginOK.memberid}">查看我的訂單</a>
								<a class="btn" href="/startrip/logout">登出</a>
								
							</div>
						</div>
					</c:if></li>
			</ul>
		</div>
	</div>
</nav>
<!-- END nav -->

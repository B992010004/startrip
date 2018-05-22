<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="689390388499-b3hifo46ha5ch3l3emcjif9ffphu7etu.apps.googleusercontent.com">
<link href="/startrip/assets/css/bootstrap/botton.css" rel="stylesheet"
	type="text/css" />
<script src="https://apis.google.com/js/platform.js" async defer></script>
<!-- <script src='https://www.google.com/recaptcha/api.js'></script>  -->
<script src="https://apis.google.com/js/platform.js?onload=init" async
	defer></script>
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://www.google.com/recaptcha/api.js"></script>

<style>
.errorMsg {
	text-align: center;
	font-family: 標楷體;
	padding-left: 150px;
	color: red;
	font-size: 14px;
}
</style>



<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"
	aria-labelledby="myLargeModalLabel" aria-hidden="true" id="loginmodal">
	<div class="modal-dialog modal-md">

		<div class="probootstrap-form">

			<div class="row mb-3" id="login-box1">

				<!-- /.login-logo -->
				<div class="col-md">
					<H2 class="col-md" style="text-align: center">Login in</h2>
					<%--  --%>
					<form id="loginform" method="POST"
						action="<c:url value="/LoginServlet"/>" onsubmit="return false"
						class="form-group" name="loginform">
						<div class="form-group">

							<input type="text" style="width: 85%" id="loginmail"
								class="form-control" name="mail" placeholder="請輸入信箱"
								value="${rememberme.cookiemail}"></input> <span id="nname"
								class="errorDiv"></span>
						</div>
						<div class="form-group">
							<input type="password" style="width: 85%" id="loginpassword"
								class="form-control" name="password" placeholder="請輸入密碼"
								value="${rememberme.cookiepassword}" /> <span id="pswid"
								class="errorDiv"></span>
						</div>
						<div class="g-recaptcha" style="width: 100%"
							data-sitekey="6LfjZ04UAAAAANYVbrm9fNL517kNiqrXlaU9UqFw"></div>

						<div class="form-group" style="margin: 0px">
							<input type="checkbox" id="remember" name="remember"
								${rememberme.cookieremember}> <label for="remember">記住我</label>
							<div>
								<span><a class="text-center" target="_blank"
									href="https://privacypolicies.com/privacy/view/KJBiiN">隱私權政策</a></span>
								<span style='position: absolute; right: 20px;'><a
									href="/startrip/member/forgetpassword" class="text-center">忘記密碼?</a></span>
							</div>
						</div>
						<span id="errorMsg" class="errorMsg" style="color: red;"></span>
						<!-- /.col -->
						<div class="form-group">
							<input type="submit" id="loginSubmit"
								class="btn btn-primary btn-block btn-flat" value="登入">
						</div>
						<!-- /.col -->
					</form>
					<div class="social-auth-links text-center">
						<p class="mr-5" style="padding-left: 30px">或使用其他方式登入</p>

						<fb:login-button class="fb-login-button" data-max-rows="1"
							data-size="large" data-button-type="login_with"
							data-show-faces="false" data-auto-logout-link="true"
							data-use-continue-as="false" scope="public_profile,email"
							onlogin="checkLoginState();">
						</fb:login-button>



						<!-- 							<div class="btn btn-block btn-social btn-google-plus btn-flat" -->
						<!-- 								data-onsuccess="onSignIn" data-theme="dark"> -->
						<!-- 								<i class="fa fa-google-plus"></i> Google+ 登 入 -->
						<!-- 							</div> -->

						<!-- 						</div> -->
						<!-- /.social-auth-links -->

						<p>
							還沒加入會員嗎? 立即<a href="/startrip/member/insertMember"
								class="text-center" style="text-align: right">加入會員</a>
						</p>

					</div>
					<!-- /.login-box-body -->

				</div>
			</div>
			<!-- /.login-box -->
		</div>
	</div>
</div>
<script>
	function onSignIn(googleUser) {
		// Useful data for your client-side scripts:
		var profile = googleUser.getBasicProfile();
		alert("ID: " + profile.getId()); // Don't send this directly to your server!
		alert('Full Name: ' + profile.getName());
		alert('Given Name: ' + profile.getGivenName());
		alert('Family Name: ' + profile.getFamilyName());
		alert("Image URL: " + profile.getImageUrl());
		alert("Email: " + profile.getEmail());
		// The ID token you need to pass to your backend:
		var id_token = googleUser.getAuthResponse().id_token;
		console.log("ID Token: " + id_token);
	};
</script>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		document.getElementById("loginSubmit").addEventListener("click",
				checkUserName);
		document.getElementById("loginmodal").addEventListener("blur", reset);
	})
	function reset() {
		document.getElementById("nname").innerHTML = "";
		document.getElementById("pswid").innerHTML = "";
		document.getElementById("errorMsg").innerHTML = "";
	}
	function checkUserName() {
		var ajaxdata = {
			mail : $('#loginmail').val(),
			password : $('#loginpassword').val(),
			recaptcha : grecaptcha.getResponse()
		}
		var getPwd = document.getElementById("loginpassword").value;
		var getname = document.getElementById("loginmail").value;
		if (getname == "") {
			document.getElementById("nname").innerHTML = "請輸入帳號"
		} else {
			document.getElementById("nname").innerHTML = ""
		}
		if (getPwd == "") {
			document.getElementById("pswid").innerHTML = "請輸入密碼"
		} else {
			document.getElementById("pswid").innerHTML = ""
		}
		$.ajax({
			url : "/startrip/chickpassword",
			type : "POST",
			data : ajaxdata,
			async : false,
			success : function(responseText, textStatus) {
				if (responseText == 0) {
					document.loginform.submit();
				} else if (responseText == 1) {
					document.getElementById("errorMsg").innerHTML = "請點選我不是機器人"
				} else {
					document.getElementById("errorMsg").innerHTML = "帳號或密碼錯誤"
					grecaptcha.reset();
				}
			},
			error : function() {

			}
		});

	}
</script>

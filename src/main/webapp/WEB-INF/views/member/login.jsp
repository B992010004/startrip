<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<link href="/startrip/assets/css/bootstrap/botton.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/*.min.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
	async defer></script>
<style>
.errorMsg {
	text-align: center;
	font-family: 標楷體;
	padding-left:150px;
	color:red;
	font-size:14px;
}
</style>

</head>
<body>
	<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true" id="modal">
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

								<input type="text" style="width: 85%" id="mail"
									class="form-control" name="mail" placeholder="請輸入信箱"></input>
									 <span id="nname" class="errorDiv"></span>
							</div>
							<div class="form-group">
								<input type="password" style="width: 85%" id="password"
									class="form-control" name="password" placeholder="請輸入密碼" /> <span
									id="pswid" class="errorDiv"></span>
							</div>

							<div class="g-recaptcha" style="width: 100%"
								data-sitekey="6LfjZ04UAAAAANYVbrm9fNL517kNiqrXlaU9UqFw"></div>
							<div style="text-align: right;">
								<a href="#" class="text-center" style="text-align: right;">忘記密碼?</a>
							</div>
							<span id="errorMsg" class="errorMsg" style="color:red;"></span>
							<!-- /.col -->
							<div class="form-group" style="margin: 15px">
								<input type="submit" id="loginSubmit"
									class="btn btn-primary btn-block btn-flat" value="登入">
							</div>
							<!-- /.col -->
						</form>

						<div class="social-auth-links text-center">
							<p class="mr-5" style="text-align: center">或使用其他方式登入</p>
							<a href="#"
								class="btn btn-block btn-social btn-facebook btn-flat"> <i
								class="fa fa-facebook"></i>Facebook 登 入
							</a> <a href="#"
								class="btn btn-block btn-social btn-google-plus btn-flat"> <i
								class="fa fa-google-plus"></i> Google+ 登 入
							</a>
						</div>
						<!-- /.social-auth-links -->

						<p>
							還沒加入會員嗎? 立即<a href="insertMember" class="text-center"
								style="text-align: right">加入會員</a>
						</p>
					</div>
					<!-- /.login-box-body -->

				</div>
			</div>
			<!-- /.login-box -->
		</div>
	</div>
	<script>
		$('#modal').modal('hide')
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("mail").addEventListener("blur", ckname);
			document.getElementById("password").addEventListener("blur",
					chkPassword);
			document.getElementById("loginSubmit").addEventListener("click",
					checkUserName);

		})
		function ckname() {
			var getname = document.getElementById("mail").value;
			if (getname == "") {
				document.getElementById("nname").innerHTML = "請輸入帳號"
			} else {
				document.getElementById("nname").innerHTML = ""
			}
		}

		function chkPassword() {

			var getPwd = document.getElementById("password").value;

			if (getPwd == "") {
				document.getElementById("pswid").innerHTML = "請輸入密碼"
			} else {
				document.getElementById("pswid").innerHTML = ""
			}
		}
		function checkUserName() {
			var ajaxdata = {
				mail : $('#mail').val(),
				password : $('#password').val()
			}
			$.ajax({
				url : "/startrip/chickpassword",
				type : "POST",
				data : ajaxdata,
				async : false,
				success : function(responseText, textStatus) {
					if (responseText == "0") {
						document.loginform.submit();
					} else {
						document.getElementById("errorMsg").innerHTML = "帳號或密碼錯誤"
					}
				},
				error : function() {

				}
			});

		}
	</script>

</body>
</html>
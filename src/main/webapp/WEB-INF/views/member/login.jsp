<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/*.min.js"></script>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		document.getElementById("nameid").addEventListener("blur", ckname);
		document.getElementById("idPwd").addEventListener("blur", chkPassword);
		document.getElementById("loginSubmit").addEventListener("click", login);
	
	})
	function ckname() {
		var getname = document.getElementById("nameid").value;
		if (getname == "") {
			document.getElementById("nname").innerHTML = "請輸入帳號"
		} else {
			document.getElementById("nname").innerHTML = ""
		}
	}

	function chkPassword() {

		var getPwd = document.getElementById("idPwd").value;

		if (getPwd == "") {
			document.getElementById("pswid").innerHTML = "請輸入密碼"
		} else {
			document.getElementById("pswid").innerHTML = ""
		}
	}
</script>


</head>
<body>
	<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-md">

			<div class="probootstrap-form">

				<div class="row mb-3" id="login-box1">
					<!-- /.login-logo -->
					<div class="col-md">
						<H2 class="col-md" style="text-align: center">Login in</h2>

						<form action="<c:url value='/LoginServlet' />" class="form-group"
							method="POST" name="loginform">
							<div class="form-group">
								<input type="text" id="nameid" style="width: 75%"
									class="form-control" name="acc" value="" placeholder="請輸入帳號" />
								<span id="nname" class="errorDiv"></span>
							</div>
							<div class="form-group">
								<input type="password" id="idPwd" style="width: 75%"
									class="form-control" name="password" placeholder="請輸入密碼" /> <span
									id="pswid" class="errorDiv"></span>
							</div>

							<div class="g-recaptcha" style="width: 85%"
								data-sitekey="6LfjZ04UAAAAANYVbrm9fNL517kNiqrXlaU9UqFw"></div>
							<div style="text-align: right;">
								<span id="errorMsg"></span> <a href="#" class="text-center"
									style="text-align: right;">忘記密碼?</a>
							</div>
							<!-- /.col -->
							<div class="form-group" style="margin: 15px">
								<button type="submit" id="loginSubmit"
									class="btn btn-primary btn-block btn-flat">登入</button>
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
							還沒加入會員嗎? 立即<a href="insertMember"
								class="text-center" style="text-align: right">加入會員</a>
						</p>
					</div>
					<!-- /.login-box-body -->

				</div>
			</div>
			<!-- /.login-box -->
		</div>
	</div>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>

</body>
</html>
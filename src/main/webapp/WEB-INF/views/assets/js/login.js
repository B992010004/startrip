	$('#modal').modal('hide')
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
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
				document.getElementById("nname").innerHTML = "�п�J�b��"
			} else {
				document.getElementById("nname").innerHTML = ""
			}
		}

		function chkPassword() {

			var getPwd = document.getElementById("password").value;

			if (getPwd == "") {
				document.getElementById("pswid").innerHTML = "�п�J�K�X"
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
						document.getElementById("errorMsg").innerHTML = "�b���αK�X���~"
					}
				},
				error : function() {

				}
			});

		}

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>行程總表</title>
<meta name="description"
	content="Free Bootstrap 4 Theme by ProBootstrap.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="/startrip/assets/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="/startrip/assets/css/animate.css">
<link rel="stylesheet"
	href="/startrip/assets/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="/startrip/assets/css/bootstrap/botton.css"
	type="text/css" />
<link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/startrip/assets/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet"
	href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/startrip/assets/css/select2.css">
<link rel="stylesheet" href="/startrip/assets/css/helpers.css">
<link rel="stylesheet" href="/startrip/assets/css/style.css">

<link rel="stylesheet" href="/startrip/assets/Travel/css/MainStyle.css">

<link rel="stylesheet"
	href="/startrip/assets/Travel/css/jquery-ui.min.css">

</head>
<body>
	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>


	 <section class="probootstrap_section bg-dark" id="section-contact">
     </section>
		
	<section class="probootstrap_section" id="section-feature-testimonial" style="padding: 2em 8em;">

		<div class="row">
			<div class="col-md-3" style="background-color: blcak;">
				<ul class="list-group list-group-flush">
					<li class="list-group-item " align="center"><a	href="/startrip/Travel/addPlan/${LoginOK.mail}">新增行程</a></li>
<%-- 					
						<li class="list-group-item " align="center"><a	href="Travel/addPlan/${LoginOK.mail}">新增行程</a></li> --%>
<!-- 					<li class="list-group-item " align="center"><a href="Travel/addList">新增清單</a></li> -->
<!-- 					<li class="list-group-item " align="center"><a	href="Views/add">新增景點</a></li> -->
<!-- 					<li class="list-group-item " align="center"><a	href="TravelViews/all">查詢景點</a></li> -->
				</ul> 
					<img style="width:100%;height:100%;opacity: 0.5;"	alt="" src="/startrip/assets/Travel/img/BG.jpg">
			</div>

			<div class="col-md-9" id="travels">
				<div class="row" id="row">
					<div class="card col-md-6" style="width: 18rem;">
						<img class="card-img-top" src="..." alt="Card image cap">
						<div class="card-body">
							<p class="card-text">${travel.travelName}</p>
						</div>
					</div>

					<div class="card  col-md-6" style="width: 18rem;">
						<img class="card-img-top" src="..." alt="Card image cap">
						<div class="card-body">
							<p class="card-text">${travel.travelName}</p>
						</div>
					</div>

					<div class="card  col-md-6" style="width: 18rem;">
						<img class="card-img-top" src="..." alt="Card image cap">
						<div class="card-body">
							<p class="card-text">${travel.travelName}</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div>
		<jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
	</div>
	<div>
		<jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" />
	</div>


	<div class="modal fade" tabindex="-1" role="dialog"	aria-labelledby="exampleModalCenterTitle" aria-hidden="true"	id="model">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">新增行程</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				
			
				</div>
				<!-- -------------------------------------------------------- -->
				<form method='GET' name="update">
					<div class="modal-body">

						<div class="form-group">
							<label class="form-control-label" for="formGroupExampleInput">travelName:</label>
							<input value="請輸入行程名稱" type="text" name="travelName"
								class="form-control" />
						</div>

						<div class="form-group">
							<label class="form-control-label" for="startDate:">startDate:</label>
							<input placeholder="請輸入行程名稱" type="text" name="startDate"
								id="startDate" class="form-control" />
						</div>
						<div class="form-group">
							<label class="form-control-label" for="endDate">endDate:</label>
							<input placeholder="請輸入行程名稱" type="text" name="endDate"
								id="endDate" class="form-control" />
						</div>
						<input name="mail" value="${LoginOK.mail}" type="hidden">
						<input name="travelId" type="hidden">

					</div>



					<div class="modal-footer">
						<button id="check" type="submit" class="btn btn-primary">確認</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	<!--  ----------------------------------------------------------------------- -->

	<script src="/startrip/assets/js/jquery.min.js"></script>
	<script src="/startrip/assets/js/popper.min.js"></script>
	<script src="/startrip/assets/js/bootstrap.min.js"></script>
	<script src="/startrip/assets/js/owl.carousel.min.js"></script>
	<script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
	<script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
	<script src="/startrip/assets/js/select2.min.js"></script>
	<script src="/startrip/assets/js/main.js"></script>

	<script src="/startrip/assets/Travel/js/jquery-ui.min.js"></script>


	<script type="text/javascript">
		$(function() {
			searchTravels();
			//表單狀態  
			$('.list-group-item').hover(function(e) {
				$(e.target).addClass('active');
			}, function(e) {
				$(e.target).removeClass('active');
			})
			//刪除行程
			$(document).on(	"click",".del",function(e) {
								console.log(e.target.id)
								var del = {}
								del.email = "${LoginOK.mail}";
								del.id = $('#' + e.target.id).parent().parent().find('.id').text();
								$.ajax({
											url : "/startrip/travel/remove",
											type : "GET",
											dataType : "json",
											data : del,
											contentType : "application/json; charset=utf-8",
											success : function(data) {
												console.log(e.target.id)
												$('#' + e.target.id).parent().parent().remove();
											}
										})
							})//click end

			$(document).on(	"click",".update",function(e) {
								var update = {}
								update.mail = "${LoginOK.mail}";
								update.travelId = $('#' + e.target.id).parent().parent().find('.id').text();
								$.ajax({
									url : "/startrip/travel/id",
									type : "GET",
									dataType : "json",
									data : update,
									contentType : "application/json; charset=utf-8",
									success : function(data) {
							$('input[name="travelName"]').val(data.Name.travelName);
							$('input[name="startDate"]').val(data.startDate);
							$('input[name="endDate"]').val(data.endDate);
							$('input[name="travelId"]').val(data.Name.travelId);
							$("#model").modal({
													"show" : true,
											})
							$(document).on('click',"#check",function() {
								var datas = $('form[name="update"]').serialize();
						$.ajax({
							url : "/startrip/travel/update",
							type : "GET",
							dataType : "json",
							data : datas,
							contentType : "application/json; charset=utf-8",
							success : function(data) {
								console.log(data)
								}
							})
					})
											}
										})
							})//click end

			$(document).on('click', '.btn.btn-primary.btn-lg.btn-block', function(e) {
				var value = {}
				mail = '${LoginOK.mail}'
				value.mail = mail;
				travelId = $('#' + e.target.id).prev().prev().text();
				//   		console.log($('#'+e.target.id).prev().prev().text())
				value.travelId = travelId

				$.get("/startrip/travel/id", value, function(data) {
					console.log(data)
				})

				location.href = "/startrip/list/All/" + mail + "/" + travelId
			})

			//dataPicker
			var dateFormat = "yy-mm-dd", startDate = $("#startDate")
					.datepicker({
						dateFormat : "yy-mm-dd",
						defaultDate : "+1w",
						changeMonth : true,
						numberOfMonths : 1
					}).on("change", function() {
						endDate.datepicker("option", "minDate", getDate(this));
					}), endDate = $("#endDate").datepicker({
				dateFormat : "yy-mm-dd",
				defaultDate : "+1w",
				changeMonth : true,
				numberOfMonths : 1
			}).on("change", function() {
				startDate.datepicker("option", "maxDate", getDate(this));
			});
			function getDate(element) {
				var date;
				try {
					date = $.datepicker.parseDate(dateFormat, element.value);
				} catch (error) {
					date = null;
				}

				return date;
			}

		})//end

		//搜尋會員行程
		function searchTravels() {
			var all = {};
			all.mail = "${LoginOK.mail}";

			$.ajax({
					url : "/startrip/travel/all",
					type : "GET",
					dataType : "json",
					data : all,
					contentType : "application/json; charset=utf-8",
					success : function(data) {
							$('#row').empty();
							var docFrag = $(document.createDocumentFragment());
							var start;
							var end;
							for (var i = 0, len = data.length; i < len; i++) {
								var card = $('<div class="card col-5" id="plan" style="width: 18rem;"></div>')
								var imgrow = $('<div class="row" "></div>');
								var img = $('<img id="travelimg" class="card-img-top col-8" src="/startrip/show/'+data[i].img+'" alt="Card image cap"><img src = /startrip/assets/Travel/img/marker.png class="icon col-2 update" id="update'
										+ (i + 1)
										+ '"><img id="del'
										+ (i + 1)
										+ '" class="icon col-2 del" src = "/startrip/assets/Travel/img/close2.png">')
								var body = $('<div class="card-body"></div>')
								var title = $('<h5 class="card-title">'	+ data[i].travelName + '</h5><div class="id"  style="display:none;">'+ data[i].travelId + '</div>')

								start = new Date(data[i].startDate);
								StartDate = format(start);
								end = new Date(data[i].endDate);
								endDate = format(end);
								var text = $('<p class="card-text">'
										+ StartDate
										+ '-'
										+ endDate
										+ '</p><button  id="planset'+i+'"  class="btn btn-primary btn-lg btn-block" type="submit" id=btn'+i+'>確定</button>')
								body.append([ title, text ]);
								imgrow.append(img);
								card.append([ imgrow, body ]);
								docFrag.append(card);
							}
							$('#row').append(docFrag);
						}

					})

		}

		function format(time) {
			var y = time.getFullYear();
			var M = time.getMonth();
			var d = time.getDate();
			return y + '/' + M + '/' + d;
		}
	</script>
</body>
</html>
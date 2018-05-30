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
<!-- 		<img src="/startrip/assets/Travel/img/loading.gif" id="loading_img" style="display: none;position:fixed;"> -->
			<div class="col-md-3" style="background-color: blcak;">
				<ul class="list-group list-group-flush">
					<a class="list-group-flush list-group-item"	href="/startrip/Travel/addPlan/${LoginOK.mail}">新增行程</a>
<%-- 					
						<li class="list-group-item " align="center"><a	href="Travel/addPlan/${LoginOK.mail}">新增行程</a></li> --%>
<!-- 					<li class="list-group-item " align="center"><a href="Travel/addList">新增清單</a></li> -->
<!-- 					<li class="list-group-item " align="center"><a	href="Views/add">新增景點</a></li> -->
<!-- 					<li class="list-group-item " align="center"><a	href="TravelViews/all">查詢景點</a></li> -->
				</ul> 
<!-- 					<img style="width:100%;height:100%;opacity: 0.5;"	alt="" src="/startrip/assets/Travel/img/BG.jpg"> -->
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
				<div>
				<ul class="pagination">
			        <li><a id="left" href="#" class="page not-active">上一页</a></li>  
			        <li class="active"><a id="now" href="#">1</a></li>
			        <li><a id="right" href="#" class="page">下一页</a></li>
			    </ul>
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
	
	
		<div class="modal fade" tabindex="-1" role="dialog"	aria-labelledby="exampleModalCenterTitle" aria-hidden="true"	id="modeal">
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
				<form method='GET' name="insert">
					<div class="modal-body">

						<div class="form-group">
							<label class="form-control-label" for="formGroupExampleInput">travelName:</label>
							<input value="請輸入行程名稱" type="text" name="travelName"
								class="form-control" />
						</div>

						<div class="form-group">
							<label class="form-control-label" for="startDate:">startDate:</label>
							<input placeholder="請輸入開始日期" type="text" name="startDate"
								id="insertstartDate" class="form-control" />
						</div>
						<div class="form-group">
							<label class="form-control-label" for="endDate">endDate:</label>
							<input placeholder="請輸入結束日期" type="text" name="endDate"
								id="insertendDate" class="form-control" />
						</div>
						<div class="form-group" id="listview">
						<div class=lists>
						<h4 class="traveltitle"></h4>
						<div class="list"></div>
						</div>
						</div>
						
						<input name="mail" value="${LoginOK.mail}" type="hidden">
						<input name="travelid" type="hidden">

					</div>



					<div class="modal-footer">
						<button id="insert" type="submit" class="btn btn-primary">確認</button>
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
<!-- 	//圖表 -->
	
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/data.js"></script>
	<script src="https://code.highcharts.com/modules/drilldown.js"></script>


	<script type="text/javascript">
		$(function() {
			searchTravels();
			searchMemberTravels()
			$('.navbar-nav.ml-auto').children().eq(0).removeClass('active');
			$('.navbar-nav.ml-auto').children().eq(3).addClass('active')
			
			
			//表單狀態  
			$('.list-group-item').hover(function(e) {
				$(e.target).addClass('active');
			}, function(e) {
				$(e.target).removeClass('active');
			})
			//刪除行程
			$(document).on(	"click",".icon.del",function(e) {
				e.stopPropagation();
								alert(e.target.id)
								alert(e.cancelBubble)
								var del = {}
								del.email = "${LoginOK.mail}";
								del.id = $('#' + e.target.id).prev().prev().prev().data('travelid');
								console.log(del)
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
				alert(e.target.id)
				alert(e.cancelBubble=true)
			e.stopPropagation();
								var update = {}
								update.mail = "${LoginOK.mail}";
								update.travelId = $('#' + e.target.id).prev().prev().data('travelid');
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
							
	$(document).on('click','.bgImg',function(e){
		console.log(e.target)
		var data={}
		var mail='${LoginOK.mail}'
		var travelId=$(e.target).find('h5').data('travelid')
		data.mail=mail
		data.travelId=travelId
		console.log(mail+","+travelId)
		$.get('/startrip/travel/id',data,function(data){
			console.log(data)
		location.href = "/startrip/list/All/" + mail + "/" + travelId
		})
// 		alert('enter')
	})						
							
							
							
$(document).on('click', '.btn.btn-primary.btn-lg.btn-block', function(e) {
				var value = {}
				mail = '${LoginOK.mail}'
				travelName = $('#' + e.target.id).prev().prev().prev().text();
				travelId = $('#' + e.target.id).prev().prev().prev().data('travelid');
				value.mail = mail;
				value.travelId = travelId;
				value.travelName=travelName;
				console.log(travelId) 
				$('#listview').empty();
				var docFrag = $(document.createDocumentFragment());
				$.get("/startrip/travel/searchPlan", value, function(data) {
					
					$('input[name="travelName"]').val(data.travelName);
					$('input[name="travelid"]').val(travelId)
					var lists=$('<div class=lists></div>')
					
					console.log('days='+data.travelDays)
					for(var i =0;i<data.travelDays;i++){
						var daytitle =$('<h4 class="listtitle">Day'+(i+1)+'</h4>');
						var list=$('<div class="list"></div>')
						value.day=(i+1);
						console.log()
						
					$.ajax({
						url : "/startrip/list/travelId/name",
						type : "GET",
						dataType : "json",
						data : value,
						contentType : "application/json; charset=utf-8",
						async: false, 
						success : function(data) {
							
							for(var j = 0;j<data.length;j++){
								console.log(data[j].viewName+','+data[j].tripday)
								list.append("【"+data[j].viewName+"】→")
								if(j==(data.length-1)){
									list.append("【"+data[j].viewName+"】")
								}
							}
							
						}
		})
						
						
					lists.append([daytitle,list])
						
					docFrag.append(lists)
					
					}
					$('#listview').append(docFrag)
					$("#modeal").modal({
						"show" : true,
					})
					
					
					$(document).on('click',"#insert",function() {
					var datas = $('form[name="insert"]').serialize();
					
					console.log(datas)
					
					$.ajax({
						url : "/startrip/travel/insert",
						type : "GET",
						dataType : "json",
						data : datas,
						async: false, 
						contentType : "application/json; charset=utf-8",
						success : function(data) {
							console.log(data)
// 							location.href = "/startrip/list/All/" + data.mail + "/" + data.travelId
							}
						})
					
// 				location.href = "/startrip/list/All/" + mail + "/" + travelId
				})

			})
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
			
	var dateFormat2 = "yy-mm-dd", startDate = $("#insertstartDate")
			.datepicker({
				dateFormat : "yy-mm-dd",
				defaultDate : "+1w",
				changeMonth : true,
				numberOfMonths : 1
			}).on("change", function() {
				endDate.datepicker("option", "minDate", getDate(this));
			}), endDate = $("#insertendDate").datepicker({
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
			var num=6;//每页显示多少条数据，暂定设为6.
			var page;//总页数
			var now_page=1;//当前页数
			var result
			
			var all = {};
			all.mail = "${LoginOK.mail}";
			
			$.ajax({ 
					url : "/startrip/travel/all",
					type : "GET",
					data : all,
					dataType : "json",
				    contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
				    success : function(data) {
						
						 result=data;
						if(result.length%num==0){
							page=result.length/num
						}else{ 
							page=Math.ceil(result.length/num);
						}
							
						var index=num;
						dataDisplay(result,0,index)
							
						 $("#right").click(function(){
							
					            now_page++; /*每次点击下一页，页数+1*/
					            $("#now").text(now_page);/*改变分页按钮上显示的页数*/
					            
					            if(now_page==page){
					            $("#right").addClass('not-active') 
					              
					            }else{
							         $("#right").removeClass('not-active');
					            }
					            
					            if(now_page-1<page){
					                $("#left").removeClass('not-active');
					                /*如果是最后一页，就禁用a标签*/
					            } 
					            else{
					                $("#left").addClass('not-active');
					                /*如果不是最后一页，就重新启用a标签*/
					            }
					          
					            
			            		
				            $('#row').empty();/*清空上一页显示的数据*/
			            		  dataDisplay(result,index,index=index+num)
						        });  
							
							 $("#left").click(function(){
						            now_page--;/*每次点击上一页，页数-1*/
						            $("#now").text(now_page);  //改变分页按钮上显示的页数
						            if(now_page-1<1){
						            	$("#left").addClass('not-active') 
						                /*如果是第一页，就禁用a标签*/
						            }
						            else{
						            	  $("#left").removeClass('not-active');
						                /*如果不是第一页，就重新启用a标签*/
						            }

						            if(now_page+1>1){
						                $("#right").removeClass('not-active');
						                /*如果是最后一页，就禁用a标签*/
						            } 
						            else{
						                $("#right").addClass('not-active');
						                /*如果不是最后一页，就重新启用a标签*/
						            }
						            $('#row').empty();/*清空上一页显示的数据*/
						            dataDisplay(result,index=index-2*num,index=index+num);
						            /*显示新一页的数据，*/                    
							 });
// 							 $("#loading_img").ajaxStart(function(){ $(this).show(); }); 
// 							 $("#loading_img").ajaxStop(function(){ $(this).hide(); }); 
							






function  dataDisplay(data,start,end){
			$('#row').empty();
		var docFrag = $(document.createDocumentFragment());
		var start;
		var end;
		if(end>result.length){
			end=result.length
		}
		for (var i = start, len = end; i < len; i++) {
			var card = $('<div class="card col-5" id="plan" style="width: 18rem;"></div>')
			var imgrow = $('<div class="row" "></div>');
			var img = $('<img id="travelimg" class="card-img-top col-10" src="/startrip/show/'+data[i].img+'" alt="Card image cap">')
			var body = $('<div class="card-body"></div>')
			var title = $('<h3 class="card-title" data-travelid="'+data[i].travelId+'">'	+ data[i].travelName + '</h3><div class="id"  style="display:none;">'+ data[i].travelId + '</div>')

			start = new Date(data[i].startDate);
			StartDate = format(start);
			end = new Date(data[i].endDate);
			endDate = format(end); 
			var text = $('<div class="tavelDays">'+data[i].travelDays+'日遊</div><button  id="planset'+i+'"  class="btn btn-primary btn-lg btn-block" type="submit" id=btn'+i+'>匯入行程</button>')
			body.append([ title,text ]);
			imgrow.append(img);
			card.append([ imgrow, body ]);
			docFrag.append(card);
		}
		
		$('#row').append(docFrag);
		}
						}//success---end
					})//ajax --end
		}
		
			
		
		
		
		function format(time) {
			var y = time.getFullYear();
			var M = time.getMonth()+1;
			var d = time.getDate();
			return y + '/' + M + '/' + d;
		}
		
		
		function searchMemberTravels() {
			var all={};
			all.mail = "${LoginOK.mail}";
			var docFrag = $(document.createDocumentFragment());
			$.ajax({ 
					url : "/startrip/travel/member/all",
					type : "GET",
					data : all,
					dataType : "json",
				    contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
				    success : function(data) {
				    	var len = data.length;
				 		console.log(data)
				 		
				 		
				 		for(var i =0;i<len;i++){ 
				 		var start = new Date(data[i].startDate);
						var StartDate = format(start);
						var end = new Date(data[i].endDate);
						var endDate = format(end);
				    	var membertravellist=$('<div style=" height: 700px;overflow-y: scroll;" class="membertravellist"></div>');
				    	var membertravel=$('<div style="width:100%;height:180px;" class="membertravel"></div>')
				    	var traveltitle=$('<h5 class="traveltitle" data-travelId="'+data[i].travelId+'" style="padding: 0 3%;">'+data[i].travelName+'</h5><br><div  class="icon update" id="update'
								+ (i + 1)+ '"></div><div id="del'+ (i + 1)+ '" class="icon  del" ></div>')
				    	var traveldate=$('<span class="startDate">'+StartDate+'</span><br><span style="margin:0px 10%">|</span><br><span class="endDate">'+endDate+' </span>')
				    	var bg=$('<div class="bgImg"></div>')
				    	bg.append([traveltitle,traveldate])
		
				    	membertravel.css('background-image','url(/startrip/show/'+data[i].img+')') 
				    	membertravel.css('background-repeat','no-repeat') 
				    	membertravel.css('background-size','100%') 
				    	membertravel.append(bg); 
				    	
				    	docFrag.append(membertravel);
				 		}
				    	
				    	membertravellist.append(docFrag)
				    	$('.col-md-3').append(membertravellist);
				    
				    }
			 })
		}	
		
		
		
	</script>
</body>
</html>
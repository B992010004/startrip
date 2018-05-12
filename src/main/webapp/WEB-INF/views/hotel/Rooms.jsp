<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>HotelsSearchResult</title>


    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="/startrip/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="/startrip/assets/css/animate.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/ionicons/css/ionicons.min.css">

    <link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">

    <link rel="stylesheet" href="/startrip/assets/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/startrip/assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/startrip/assets/css/select2.css">


    <link rel="stylesheet" href="/startrip/assets/css/helpers.css">
    <link rel="stylesheet" href="/startrip/assets/css/style.css">


    <link rel="stylesheet" href="/startrip/assets/css/jquery-ui.css">


    <style>
        #section-home {
            padding-top: 45px;
            padding-bottom: 45px;
        }

        .probootstrap-form {
            margin-bottom: 0;
            padding-top: 15px;
            padding-bottom: 15px;
        }

        .owl-dots {
            display: none;
        }

        .probootstrap_section {

            padding-top: 0px;
            padding-bottom: 0px;
        }

        .owl-stage-outer {
            padding-top: 0px !important;
            padding-bottom: 0px !important;
        }



        #inputState {
            height: 46px;
            color: rgb(151, 148, 148)
        }

        .commentdate {
            text-align: right;
        }

        .inputState label,
        .inputState select {
            height: 46px;
            width: 100%;
            color: rgb(151, 148, 148)
        }

        .imgmaxsize {
            width: 795px;
            height: 550px;
        }

        .popwindow {
            margin: 100px
        }


        .imglist {
            height: 80px;
        }

        tbody th img {
            max-width: 180px;
            height: 130px;
        }
        
        .progress-bar {
/* 	    	margin-top: 10px; */
 	    	
	    }
	    
	    .progress-label{
	    	margin-top: 5px;
	    	width: 50px; 
	    }
	    .travler-rank{
	    	width: 300px; 
	    
	    }
	    
	    .review-image{
	    	 height:120px;
	    	 margin:5px;
	    }
	    
	     .review-memberphoto {
            /* 照片圓圈大小倚靠各div的class設定 */
            
           	width: 80px;
           	height: 80px; 
           	border-radius: 50%;
        }
    </style>


</head>

<body>


    
        <jsp:include page="/WEB-INF/views/header.jsp" flush="true" />

    <!-- END nav -->
  	<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5"
    	id="section-home">
		<div class="overlay"></div>
  	</section>
  <!-- END section -->
    
    <div class="container">
        <p></p>
        <div class="row">
            <div class="col-md">
                <div class="row">
                    <div class="col-md">
                        <form action="HotelsSearchResult.html" class="probootstrap-form">
                            <div class="form-group">
                                <div class="row">
                                    <!-- place -->
                                    <div class="col-md-4">
                                        <div class="form-group inputState">
                                            <label for="id_label_location">
                                                <input type="text" id="id_label_location" name="location" class="form-control" placeholder="地點或飯店名稱">
                                            </label>
                                        </div>
                                    </div>
                                    <!-- place -->
                                    <!-- arrival -->
                                    <div class="col-md">
                                        <div class="form-group inputState">
                                            <div class="probootstrap-date-wrap">
                                                <label for="probootstrap-date-arrival">
                                                    <span class="icon ion-calendar"></span>
                                                    <input type="text" id="probootstrap-date-arrival" name="checkin" class="form-control" placeholder="入住">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- arrival -->
                                    <!-- departure -->
                                    <div class="col-md">
                                        <div class="form-group inputState">
                                            <div class="probootstrap-date-wrap">
                                                <label for="probootstrap-date-departure">
                                                    <span class="icon ion-calendar"></span>
                                                    <input type="text" id="probootstrap-date-departure" name="checkout" class="form-control" placeholder="退房">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- departure -->
                                    <!-- people -->
                                    <div class="col-md">
                                        <div class="form-group inputState">
                                            <label for="id_label_people">
                                                <select id="inputState" class="form-control" name="poeple">
                                                    <option selected value="1">人數</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                    <option value="7">7</option>
                                                    <option value="8">8</option>
                                                    <option value="9">9</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                    <option value="13">13</option>
                                                    <option value="14">14</option>
                                                    <option value="15">15</option>
                                                    <option value="16">16</option>
                                                    <option value="17">17</option>
                                                    <option value="18">18</option>
                                                    <option value="19">19</option>
                                                    <option value="20">20</option>
                                                </select>
                                            </label>
                                        </div>
                                    </div>
                                    <!-- people -->
                                    <!-- summit -->
                                    <div class="col-md">
                                        <div class="form-group">
                                            <div class="col-md">
                                                <input type="submit" value="重新搜尋" class="btn btn-primary btn-block">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- summit -->
                                </div>
                                <!-- END row -->
                            </div>
                        </form>
                    </div>
                </div>
                <hr>
                <!-- content -->
                <div class="row">
                    <!-- 主要資訊 -->
                    <div class="col-md">
                        <div class="row">
                            <div class="col-md-9">OX飯店★★★★★
                            </div>
                            <div class="col-md-3">最低訂房價格：3000</div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">台北市內湖區</div>
                        </div>
                        <div class="row">
                            <div class="col-md-9">02-12345678</div>
                            <div class="col-md-3">
                                <button id="bookingnow" type="button" class="btn btn-outline-warning">
                                    立即預定
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <!-- 相片 + 評分 + 地圖 -->
                    <div class="col-md-9">
                        <!-- 相片 section -->
                        <section class="probootstrap_section">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="owl-carousel js-owl-carousel-2">
                                            <!-- photo slide item -->
                                            <div>
                                                <div class="media probootstrap-media d-block align-items-stretch imgmaxsize">
                                                    <img src="/startrip/assets/images/test1.jpg" value="1" name="XX" class="img-fluid mainimg">
                                                </div>
                                            </div>
                                            <!-- END photo slide item -->
                                            <!-- photo slide item -->
                                            <div>
                                                <div class="media probootstrap-media d-block align-items-stretch imgmaxsize">
                                                    <img src="/startrip/assets/images/sq_img_1.jpg" value="2" name="AA" class="img-fluid mainimg">
                                                </div>
                                            </div>
                                            <!-- END photo slide item -->
                                            <!-- photo slide item -->
                                            <div>
                                                <div class="media probootstrap-media d-block align-items-stretch imgmaxsize">
                                                    <img src="/startrip/assets/images/sq_img_2.jpg" value="3" name="BB" class="img-fluid mainimg">
                                                </div>
                                            </div>
                                            <!-- END photo slide item -->
                                        </div>
                                        <div>
                                            <p class="my_popup_open">圖片名稱
                                                <i>(點我看更多)</i>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- END section -->
                    </div>
                    <div class="col-md-3">
                        <!-- 評分 + 地圖 -->
                        <div class="row">
                            <div class="col-md">
                                <!-- 評分 -->
                                旅客評分 5.7/10
                                <br> 查看所有旅客評論(預定)
                            </div>
                        </div>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-md">
                                <!-- 地圖 -->
                                <a href="http://maps.google.com/maps?q=福華飯店,+台北市&amp;z=11" data-geo="" target="_blank">
                                    <img class="map" alt="福華飯店, 台北市" src="http://maps.google.com/maps/api/staticmap?zoom=17&size=300x300&maptype=terrain&sensor=false&center=福華飯店, 台北市&key=AIzaSyAphlUZhilGS44rk9TBLOoMluxpNJa0Cfk">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr id="bookingposition">
                <div class="row">
                    <div class="col-md">
                        <!-- 選擇房型 -->
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th width="20%" scope="col">房型</th>
                                    <th width="25%" scope="col">服務</th>
                                    <th width="25%" scope="col">設施</th>
                                    <th width="15%" scope="col">每晚平均房價</th>
                                    <th width="15%" scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- 房間資料起始 -->
                                <tr>
                                    <th scope="row">
                                        <img src="/startrip/assets/images/sq_img_2.jpg">
                                        <br> 豪華雙人房
                                    </th>
                                    <td>附早餐
                                        <br>可加床
                                        <br>不可退款
                                    </td>
                                    <td>
                                        1 張雙人床 / 2 張單人床
                                        <br>室內WIFI
                                    </td>
                                    <td>3000</td>
                                    <td>
                                        <form action="HotelCheckout.html">
                                            <button type="submit" class="btn btn-outline-warning">預定</button>
                                            <br>
                                            <br>
                                            <label for="extrabed">
                                                是否加床
                                                <input type="checkbox" id="extrabed" name="extrabed">
                                            </label>
                                        </form>
                                    </td>
                                </tr>
                                <!-- 房間資料結束 -->
                            </tbody>
                        </table>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md">
                        <h5>介紹：</h5>
                        <br>
                        <!-- 介紹生成起始 -->
                        <p class="ml-3">這裡放介紹</p>
                        <!-- 介紹生成結束 -->
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md">
                        <h5>服務與設施：</h5>
                        <br>
                        <!-- 服務與設施生成起始 -->
                        <p class="ml-3">服務與設施列表</p>
                        <!-- 服務與設施生成結束 -->
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md">
                        <!-- 規定 -->
                        <h5>政策提示：</h5>
                        <br>
                        <table rules="none" class="table table-hover ml-3">
                            <tbody>
                                <tr>
                                    <th width="4%" scope="row">1.</th>
                                    <td>入住時間：15:00 以後 ~ 退房時間：12:00 以前</td>
                                </tr>
                                <!-- 政策提示生成起始 -->
                                <tr>
                                    <th width="4%" scope="row">2.</th>
                                    <td>未滿18周歲的小孩需有成人陪同才可入住。</td>
                                </tr>
                                <!-- 政策提示生成結束 -->
                                <tr>
                                    <th scope="row">3.</th>
                                    <td>6歲以下兒童免費房型，每床共床限1人</td>
                                </tr>
                                <tr>
                                    <th scope="row">4.</th>
                                    <td>[2017年01月13日 - 2019年12月31日] 訂單一經確認，不可更改或添加入住人姓名。 </td>
                                </tr>
                                <tr>
                                    <th scope="row">5.</th>
                                    <td>[2018年03月16日 - 2018年12月31日] 此期間每日上午9時至下午6時進行客房裝修工程，期間可能會有噪音滋擾，敬請諒解。</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <!--評論 -->
                <hr>
                <div class="row justify-content-between">
                    <div class="col-md-8">
                        <div class="title_text">
                        	<h5>評論</h5>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <a href="/startrip/review/UserReviewEdit/1" class="btn btn-primary">發表評論</a>
                        <a href="" class="btn btn-outline-primary">即時客服</a>
                    </div>
                </div>
				<div class="row">
                        <!-- 旅客評等 -->
						<!-- <p class="col-md-3">旅客評等</p> -->
						<label class="sr-only-focusable">旅客評等</label>
                        <!-- 旅客評等 -->
                                <div class="travler-rank col-md-3" >                            
		                            <div class="progress">
		                            	<span class="progress-label">很棒</span>
										<div class="progress-bar" role="progressbar" style="width: ${ranks[0]/rankSize *100}%"aria-valuenow="${ranks[0]/rankSize *100}" aria-valuemin="0" aria-valuemax="100"><fmt:formatNumber type="number" value="${ranks[0]/rankSize *100}" maxFractionDigits="0"/>%</div>
									</div>							
									
									<div class="progress">
										<span class="progress-label">非常好</span>							  							  
									  	<div class="progress-bar" role="progressbar" style="width: ${ranks[1]/rankSize *100}%" aria-valuenow="${ranks[1]/rankSize *100}" aria-valuemin="0" aria-valuemax="100"><fmt:formatNumber type="number" value="${ranks[1]/rankSize *100}" maxFractionDigits="0"/>%</div>
									</div>					
									
									<div class="progress">
										<span class="progress-label">普通</span>							  		
									  	<div class="progress-bar" role="progressbar" style="width: ${ranks[2]/rankSize *100}%" aria-valuenow="${ranks[2]/rankSize *100}" aria-valuemin="0" aria-valuemax="100"><fmt:formatNumber type="number" value="${ranks[2]/rankSize *100}" maxFractionDigits="0"/>%</div>
									</div>							
									
									<div class="progress">
										<span class="progress-label">差</span>
										<div class="progress-bar" role="progressbar" style="width: ${ranks[3]/rankSize *100}%" aria-valuenow="${ranks[3]/rankSize *100}" aria-valuemin="0" aria-valuemax="100"><fmt:formatNumber type="number" value="${ranks[3]/rankSize *100}" maxFractionDigits="0"/>%</div>
									</div>						
									
									<div class="progress">
										<span class="progress-label">糟透了</span>
									  	<div class="progress-bar" role="progressbar" style="width: ${ranks[4]/rankSize *100}%" aria-valuenow="${ranks[4]/rankSize *100}" aria-valuemin="0" aria-valuemax="100"><fmt:formatNumber type="number" value="${ranks[4]/rankSize *100}" maxFractionDigits="0"/>%</div>
									</div>       
								</div>
						
                        <!-- 旅客類型 -->
                        <p class="col-md-3">旅客類型</p>
                        <!-- 旅客類型 -->
                        
                        <!-- 月份 -->
                        <p class="col-md-3">月份</p>
                        <!-- 月份 -->
                    </div>                    
                </div>
            </div>     
			<c:forEach var='review' items='${reviews}'>	        
				<div class="row" style="margin:16px;">
					<div class="col-md-1">
						<div class="row justify-content-center" style="margin:16px;"><img class="review-memberphoto" src="<c:url value='/getPicture/${review.memberBean.mail}'/>"></div>
						<div class="row justify-content-center"><div><h6>${review.memberBean.username }</h6></div></div>
					</div>
					<div class="col-md-9">
						<div class="probootstrap_font-18"><h5>${review.title}</h5></div>
						<div class="">${review.content }</div>
						<c:if test="${not empty review.photoPathList }">
							<c:forEach var="photoPath" items="${review.photoPathList }">
								<img src="/startrip/getPicture/reviewUpload/${photoPath }" class="review-image"/>
							</c:forEach>
						</c:if>					
					</div>
				</div>				
			</c:forEach>
		</div>
		
		<!-- 訊息聊天框  -->
	<div style="float:right">

        <button class="btn btn-secondary" type="button" id="dropdownMessageButton" onclick="slideFrame()">
            按鈕名字
        </button>
        <div id="dropdownMessage" style="padding:0px;display:none;border:#F8F8FF 1px solid">
            <div style="color: #fff;background-color: #00CA4C;
            border-color: #00CA4C;"> 對方帳號名</div>
            <div id="displayMessage" style="width:250px;height:250px;overflow-y:auto;"></div>
            <div class="dropdown-divider "></div>
            <div>
                <textarea id="messages" rows="1" cols="25;" style="resize:none;" placeholder="請輸入訊息" maxlength="250"></textarea>
            </div>
            <div class="btn btn-secondary" onclick="sendMessage(${LoginOK.memberid }, 20)">送出</div>
        </div>

	</div>
        
        <!-- 圖片彈出區間 -->
        <div id="my_popup" hidden="hidden">
            <div class="row">
                <div class="col-md popwindow">
                    <img src="/startrip/assets/images/test1.jpg" value="1" title="XX" class="ui-corner-all img-fluid imglist my_popup_close  img-thumbnail">
                    <img src="/startrip/assets/images/sq_img_1.jpg" value="2" title="AA" class="ui-corner-all img-fluid imglist my_popup_close img-thumbnail">
                    <img src="/startrip/assets/images/sq_img_2.jpg" value="3" title="BB" class="ui-corner-all img-fluid imglist my_popup_close img-thumbnail">
                </div>
            </div>
        </div>
        <!-- 圖片彈出區間 -->


        <!-- END section -->
        <div>
            <jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
        </div>
        <div>
            <jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" />
        </div>
        <!-- END footer -->

        <script src="/startrip/assets/js/jquery.min.js"></script>

        <script src="/startrip/assets/js/popper.min.js"></script>
        <script src="/startrip/assets/js/bootstrap.min.js"></script>
        <script src="/startrip/assets/js/owl.carousel.min.js"></script>

        <script src="/startrip/assets/js/bootstrap-datepicker.js"></script>
        <script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
        <script src="/startrip/assets/js/jquery.easing.1.3.js"></script>

        <script src="/startrip/assets/js/select2.min.js"></script>

        <script src="/startrip/assets/js/main.js"></script>

        <script src="/startrip/assets/js/range.js"></script>


        <script src="/startrip/assets/js/jquery-ui.js"></script>
        <script src="/startrip/assets/js/jquery.popupoverlay.js"></script>
        
<!-- -------------------------------------------------------------------------- -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.0.3/sockjs.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>

<!-- 即時聊天 -->
 
	<script>
//現在只測試傳20號	
	function slideFrame(){
		$('#dropdownMessage').slideToggle(200);
	}
	
	   function sendMessage(senderPk, receiverPk){
	  	  var url = 'http://'+ window.location.host +'/startrip/chat';
	      var sock = new SockJS(url);
	      var stomp = Stomp.over(sock);
	      
	      //先檢查是否有值
	   if($('#messages').val()){
	      
	      //清空輸入欄 並加入文字至上方顯示窗
	      var message = $('#messages').val();    
	      $('#messages').val("");
	      var myText = $("<span class='myText' style='color:#FFFFFF;text-align:center;'></span>").text(message);
	      var myTextdiv = $("<div class='myTextDiv' style='border-radius:10px;background-color:#0066FF;float:right;clear:both;max-width:146px;word-wrap: break-word;margin-bottom:5px;'></div>").append(myText);
	      $('#displayMessage').append(myTextdiv);
	      
	//       var payload = JSON.stringify({'message':'Marco!'});
	      var payload = JSON.stringify({"message":message});
	      stomp.connect('guest', 'guest', function(frame) {
	      console.log('*****  Connected  *****');
	
	//       stomp.subscribe("/user/queue/notifications", handleNotification);
	//       stomp.subscribe("/target/message/4/2", handleSpittle);
	      stomp.subscribe("/target/message/" + senderPk + "/" + receiverPk, handleText);
	//       stomp.send("/app/chatRoom/4/2", {}, payload);
	      stomp.send("/app/chatRoom/" + senderPk + "/" + receiverPk, {}, payload);
	      });
	    }
	  }
	
      function handleText(message) {
    	  
    	  console.log('message:', message);
//     	  $('#output').append("<b>Received spittle: " + JSON.parse(message.body).message + "</b><br/>");
    	  var callBackText = $("<span class='callBackText' style='text-align:center;'></span>").text(JSON.parse(message.body).message);
	      var callBackTextdiv = $("<div class='callBackTextDiv' style='border-radius:10px;background-color:#DDDDDD;float:left;clear:both;max-width:146px;word-wrap:break-word;margin-bottom:5px;'></div>").html(callBackText);
	      $('#displayMessage').append(callBackTextdiv);
      
      }
      
      function sendSpittle(text) {
        console.log('Sending Spittle');
        stomp.send("/app/spittle", {}, 
            JSON.stringify({ 'text': text }));
      }

      $('#stop').click(function() {sock.close()});
	</script>
    
     
<!-- ------------------------------------------       -->
        <script>
            $(document).ready(function () {
                $("#my_popup").attr("hidden", false)
            })

            $('.js-owl-carousel-2').owlCarousel({
                loop: false,
                margin: 20,
                nav: false,
                autoplay: true,
                autoplayTimeout: 5000,
                smartSpeed: 800,
                stagePadding: 0,
                navText: ["<span class='ion-chevron-left'></span>", "<span class='ion-chevron-right'></span>"],
                responsive: {
                    0: {
                        items: 1
                    }
                }
            });

            $('#bookingnow').click(function () {
                $('html,body').animate({
                    scrollTop: $('#bookingposition').offset().top
                }, 800);
            });
            // 滑動至預定區間

            $(document).ready(function () {
                $('#my_popup').popup();

            });
            // 初始化跳出視窗區間
            $('#my_popup').popup({
                opacity: 0.4,
                // 設定不透明度

            });

            $('.imglist').click(function () {
                var imgval = $(this).attr("value")
                var clickimg = $(".mainimg[value=" + imgval + "]").parent().parent().parent()
                var activeimg = $(".owl-stage-outer>div .active").children().children().children()
                var activeimgval = activeimg.attr("value")
                if (imgval == activeimgval)
                    return
                var b = clickimg.parent().parent().parent()
                b.attr("class", "owl-carousel js-owl-carousel-2 owl-loaded owl-drag owl-grab")
                b.attr("class", "owl-carousel js-owl-carousel-2 owl-loaded owl-drag")
                b.children().children().css("transition", "0.8s")
                var imgwidthstart = clickimg.parent().attr("style").lastIndexOf(": ")
                var imgwidthend = clickimg.parent().attr("style").lastIndexOf("px;")
                var imgwidth = clickimg.parent().attr("style").substr(imgwidthstart + 2, imgwidthend - imgwidthstart - 2)
                var imglength = $("div .col-md.popwindow").children().length
                var a = imgwidth * -1 / imglength * (imgval - 1)
                var imgchoice = clickimg.parent().css("transform", "translate3d(" + a + "px, 0px, 0px)")
                activeimg.parent().parent().parent().removeClass("active")
                clickimg.attr("class", "owl-item active")

            })

            $(function () {
                $(document).tooltip({
                    items: "[title]",
                    content: function () {
                        var element = $(this);
                        if (element.is("[data-geo]")) {
                            var text = element.children().attr("map");
                            console.log(text)
                            return "<img class='map' alt='" + text +
                                "' src='http://maps.google.com/maps/api/staticmap?" +
                                "zoom=16&size=350x350&maptype=terrain&sensor=false&center=" +
                                text + "&key=AIzaSyAphlUZhilGS44rk9TBLOoMluxpNJa0Cfk'>";
                        }
                        if (element.is("[title]")) {
                            return element.attr("title");
                        }
                        if (element.is("img")) {
                            return element.attr("alt");
                        }
                    }
                });
            });
        </script>
</body>

</html>
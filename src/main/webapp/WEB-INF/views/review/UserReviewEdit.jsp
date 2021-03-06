<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html>
<meta charset="UTF-8">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>寫評論</title>
    <meta name="description" content="Free Bootstrap 4 Theme by ProBootstrap.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">


    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="/startrip/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="/startrip/assets/css/animate.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/startrip/assets/css/bootstrap/botton.css" type="text/css" />
    <link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/startrip/assets/css/select2.css">
    <link rel="stylesheet" href="/startrip/assets/css/helpers.css">
    <link rel="stylesheet" href="/startrip/assets/css/style.css">
    
    <style>

	    #section-home {
            padding-top: 45px;
            padding-bottom: 45px;
        }
        
        .thumb {
 	             height:75px;margin:5px;
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
	    



    </style>

</head>

<body>
   	<div><jsp:include page="/WEB-INF/views/header.jsp" flush="true" /></div>

    <!-- END nav -->
    <section id="section-home" class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/images/bg_1.jpg');"
        data-stellar-background-ratio="0.5" >
        <div class="overlay"></div>
    </section>
    <!-- END section -->
    
    <section class="probootstrap_section bg-light" id="section-contact">
        <div class="container">

            <div class="row">
                
                <div class="col-md-6  probootstrap-animate">
                    <form:form id="reviewForm" name="reviewForm" method='POST' modelAttribute="reviewBean" class="probootstrap-form probootstrap-form-box mb60"
                        enctype="multipart/form-data">
                        <div class="form-group">
                            <div class="form-group">
                                <div class="form-group" id="rating">
                                    <label class="sr-only-focusable">你對此飯店的整體評價</label>
                                    <p>
                                        <img id="oR1" src="/startrip/assets/images/review/star.gif" width="10%" />
                                        <img id="oR2" src="/startrip/assets/images/review/star.gif" width="10%" />
                                        <img id="oR3" src="/startrip/assets/images/review/star.gif" width="10%" />
                                        <img id="oR4" src="/startrip/assets/images/review/star.gif" width="10%" />
                                        <img id="oR5" src="/startrip/assets/images/review/star.gif" width="10%" />
                                        <span id="oR"></span>

                                </div>
                                <div class="form-group">
                                    <label for="title" class="sr-only-focusable">您的評論標題</label>
                                    <form:input path="title" type="text" class="form-control" id="title" name="title" placeholder="蓋述你的造訪或有趣的細節" />
                                </div>
                            </div>
                            <!-- <div class="col-md-6">
                                <div class="form-group">
                                    <label for="content" class="sr-only sr-only-focusable">您的評論內容</label>
                                    <input type="text" class="form-control" id="content" name="content" placeholder="跟大家分享您的體驗: 客房、交通位置、設施?">
                                </div>
                            </div> -->
                        </div>

                        <div class="form-group">
                            <label for="content" class="sr-only-focusable">您的評論內容</label>
                            <form:textarea cols="30" rows="10" path="content" class="form-control" id="content" name="content" placeholder="跟大家分享您的體驗: 客房、交通位置、設施?"></form:textarea>
                        </div>

                        <div class="form-group">
                            <label for="tips" class="sr-only-focusable">分享客房建議給其他旅客</label>
                            <form:input path="roomTips" type="text" class="form-control" id="tips" name="tips" placeholder="例如:最佳景觀、較安靜的樓層、無障礙等等。" />
                        </div>


                        <!-- 						很特別, 新方法學一下 -->
                        <label class="form-group sr-only-focusable">此次隨行的同伴是？</label>
                        <div class=" form-group btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-outline-primary active">
                                <form:radiobutton path="tripType" autocomplete="off" checked="checked" value="商務" class="form-control" /> 商務
                            </label>
                            <label class="btn btn-outline-primary">
                                <form:radiobutton path="tripType" autocomplete="off" value="伴侶旅行" class="form-control" /> 伴侶旅行
                            </label>
                            <label class="btn btn-outline-primary">
                                <form:radiobutton path="tripType" autocomplete="off" value="家庭" class="form-control" /> 家庭
                            </label>
                            <label class="btn btn-outline-primary">
                                <form:radiobutton path="tripType" autocomplete="off" value="朋友" class="form-control" /> 朋友
                            </label>
                            <label class="btn btn-outline-primary">
                                <form:radiobutton path="tripType" autocomplete="off" value="單獨旅行" class="form-control" /> 單獨旅行
                            </label>
                        </div>

                        <div class="form-group">
                            <label class="sr-only-focusable">你對此飯店的服務</label>
                            <p>
                                <img id="sR1" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="sR2" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="sR3" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="sR4" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="sR5" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <span id="sR"></span>

                        </div>
                        <div class="form-group">
                            <label class="sr-only-focusable">你對此飯店的清潔與衛生</label>
                            <p>
                                <img id="vR1" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="vR2" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="vR3" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="vR4" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="vR5" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <span id="vR"></span>

                        </div>
                        <div class="form-group">
                            <label class="sr-only-focusable">你對此飯店的睡眠品質</label>
                            <p>
                                <img id="rR1" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="rR2" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="rR3" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="rR4" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <img id="rR5" src="/startrip/assets/images/review/star.gif" width="10%" />
                                <span id="rR"></span>

                        </div>
                        
<!--                         可以一次上傳多個檔案!!! -->
                        <div>
                        	<label class="btn btn-primary" for="files">上傳相片</label>
                        	<form:input path="multipartFiles" type="file" class="form-control-file" id="files" name="files" value="Send Review" multiple="multiple" style="display:none;" accept="image/*" onchange="fileViewer()"/>
                        </div>
                        <div id="dropZone"></div>

						<br>
                        <div class="form-group">
                            <input type="submit" class="btn btn-primary" id="submit" name="submit" value="Send Review">
                        </div>
                        
                        <form:input id="overallRank" path="overallRank" type="hidden" class="form-control" placeholder="星星評分用(隱藏欄位)" />
                        <form:input id="serviceRating" path="serviceRating" type="hidden" class="form-control" placeholder="服務評分用(隱藏欄位)" />
                        <form:input id="valueRating" path="valueRating" type="hidden" class="form-control" placeholder="衛生評分用(隱藏欄位)" />
                        <form:input id="roomsRating" path="roomsRating" type="hidden" class="form-control" placeholder="睡眠評分用(隱藏欄位)" />
                    </form:form>                  
                    
                </div>
            </div>
     	</div>
<!--             結束 -->                
    </section>
    <!-- END section -->
    
    <c:forEach var='rank' items='${ranks}'>
	<h1>${ranks}</h1>
	<h1>${rankSize}</h1>
    </c:forEach>
				<div class="container">
					<label class="sr-only-focusable">旅客評等</label>
                        <div class="travler-rank" >                            
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
				</div>
				
		
		<div class="container">
		<div class="row">
		<c:forEach var='review' items='${reviews}'>
			<div class="col-md-8">
			<div class="probootstrap_font-18">${review.title}</div>
			<div class="">${review.content }</div>
			<div><img src="/startrip/getPicture/reviewUpload/4f04d103-46db-426d-b468-7bf9a151e258.jpg" /></div>
			</div>
		</c:forEach>
		</div>
		</div>



    <div>
        <jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
    </div>
    <div>
        <jsp:include page="/WEB-INF/views/member/login.jsp" flush="true" />
    </div>


    <script src="/startrip/assets/js/jquery.min.js"></script>
    <script src="/startrip/assets/js/popper.min.js"></script>
    <script src="/startrip/assets/js/bootstrap.min.js"></script>
    <script src="/startrip/assets/js/owl.carousel.min.js"></script>
    <script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
    <script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
    <script src="/startrip/assets/js/select2.min.js"></script>
    <script src="/startrip/assets/js/main.js"></script>
    <script> 
        document.addEventListener("DOMContentLoaded", function () {
            for (var i = 1; i <= 5; i++) {
                document.getElementById("oR" + i).addEventListener("mouseover", mouseover1);  //事件繫結，滑鼠滑入
                document.getElementById("oR" + i).addEventListener("mouseout", mouseout1);
                document.getElementById("oR" + i).addEventListener("click", click1);   //事件繫結，滑鼠滑出
            }
            
            for (var i = 1; i <= 5; i++) {
                document.getElementById("sR" + i).addEventListener("mouseover", mouseover2);  //事件繫結，滑鼠滑入
                document.getElementById("sR" + i).addEventListener("mouseout", mouseout2);
                document.getElementById("sR" + i).addEventListener("click", click2);   //事件繫結，滑鼠滑出
            }
            
            for (var i = 1; i <= 5; i++) {
                document.getElementById("vR" + i).addEventListener("mouseover", mouseover3);  //事件繫結，滑鼠滑入
                document.getElementById("vR" + i).addEventListener("mouseout", mouseout3);
                document.getElementById("vR" + i).addEventListener("click", click3);   //事件繫結，滑鼠滑出
            }
            
            for (var i = 1; i <= 5; i++) {
                document.getElementById("rR" + i).addEventListener("mouseover", mouseover4);  //事件繫結，滑鼠滑入
                document.getElementById("rR" + i).addEventListener("mouseout", mouseout4);
                document.getElementById("rR" + i).addEventListener("click", click4);   //事件繫結，滑鼠滑出
            }

        });
        
        
	</script>
	
<!-- 	控制overallRank -->
	<script>
		flag1 = false;
		
		function mouseover1() {
            if (flag1 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
//                 	console.log(this.id.substr(2));
                    document.getElementById("oR" + i).src = "/startrip/assets/images/review/chngstar.gif";
                }
                document.getElementById("oR").innerHTML = "請評價... " + this.id.substr(2) + "顆星";
            }
        }

        function mouseout1() {
            if (flag1 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
                    document.getElementById("oR" + i).src = "/startrip/assets/images/review/star.gif";
                }
                document.getElementById("oR").innerHTML = "";
            }
        }

        function click1() {
        	
            if (flag1 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
                    document.getElementById("oR" + i).src = "/startrip/assets/images/review/chngstar.gif";
                }
                flag1 = true;
                document.getElementById("oR").innerHTML = "你的評價: " + this.id.substr(2) + "顆星<br>再按一下重新評等";
                document.getElementById("overallRank").setAttribute("value", this.id.substr(2));
                console.log(this.id.substr(2));
            } else {
                for (var i = 1; i <= 5; i++) {
                    document.getElementById("oR" + i).src = "/startrip/assets/images/review/star.gif";
                    document.getElementById("oR").innerHTML = "";
                    document.getElementById("overallRank").setAttribute("value", "");
                    console.log(this.id.substr(2));
                }
                flag1 = false;
            }
        }
	
	</script>
        
<!--     控制serviceRating -->
	<script>
		flag2 = false;
		
		function mouseover2() {
            if (flag2 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
                    document.getElementById("sR" + i).src = "/startrip/assets/images/review/chngstar.gif";
                }
                document.getElementById("sR").innerHTML = "請評價... " + this.id.substr(2) + "顆星";
            }
        }

        function mouseout2() {
            if (flag2 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
                    document.getElementById("sR" + i).src = "/startrip/assets/images/review/star.gif";
                }
                document.getElementById("sR").innerHTML = "";
            }
        }

        function click2() {
        	
            if (flag2 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
                    document.getElementById("sR" + i).src = "/startrip/assets/images/review/chngstar.gif";
                }
                flag2 = true;
                document.getElementById("sR").innerHTML = "你的評價: " + this.id.substr(2) + "顆星<br>再按一下重新評等";
                document.getElementById("serviceRating").setAttribute("value", this.id.substr(2));
            } else {
                for (var i = 1; i <= 5; i++) {
                    document.getElementById("sR" + i).src = "/startrip/assets/images/review/star.gif";
                    document.getElementById("sR").innerHTML = "";
                    document.getElementById("serviceRating").setAttribute("value", "");
                }
                flag2 = false;
            }
        }
	
	</script>
	
<!-- 	控制valueRating -->
	<script>
		flag3 = false;
		
		function mouseover3() {
            if (flag3 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
                    document.getElementById("vR" + i).src = "/startrip/assets/images/review/chngstar.gif";
                }
                document.getElementById("vR").innerHTML = "請評價... " + this.id.substr(2) + "顆星";
            }
        }

        function mouseout3() {
            if (flag3 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
                    document.getElementById("vR" + i).src = "/startrip/assets/images/review/star.gif";
                }
                document.getElementById("vR").innerHTML = "";
            }
        }

        function click3() {
        	
            if (flag3 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
                    document.getElementById("vR" + i).src = "/startrip/assets/images/review/chngstar.gif";
                }
                flag3 = true;
                document.getElementById("vR").innerHTML = "你的評價: " + this.id.substr(2) + "顆星<br>再按一下重新評等";
                document.getElementById("valueRating").setAttribute("value", this.id.substr(2));
            } else {
                for (var i = 1; i <= 5; i++) {
                    document.getElementById("vR" + i).src = "/startrip/assets/images/review/star.gif";
                    document.getElementById("vR").innerHTML = "";
                    document.getElementById("valueRating").setAttribute("value", "");
                }
                flag3 = false;
            }
        }
	
	</script>
	
<!-- 	控制roomsRating -->
	<script>
		flag4 = false;
		
		function mouseover4() {
            if (flag4 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
                    document.getElementById("rR" + i).src = "/startrip/assets/images/review/chngstar.gif";
                }
                document.getElementById("rR").innerHTML = "請評價... " + this.id.substr(2) + "顆星";
            }
        }

        function mouseout4() {
            if (flag4 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
                    document.getElementById("rR" + i).src = "/startrip/assets/images/review/star.gif";
                }
                document.getElementById("rR").innerHTML = "";
            }
        }

        function click4() {
        	
            if (flag4 == false) {
                for (var i = 1; i <= this.id.substr(2); i++) {
                    document.getElementById("rR" + i).src = "/startrip/assets/images/review/chngstar.gif";
                }
                flag4 = true;
                document.getElementById("rR").innerHTML = "你的評價: " + this.id.substr(2) + "顆星<br>再按一下重新評等";
                document.getElementById("roomsRating").setAttribute("value", this.id.substr(2));
            } else {
                for (var i = 1; i <= 5; i++) {
                    document.getElementById("rR" + i).src = "/startrip/assets/images/review/star.gif";
                    document.getElementById("rR").innerHTML = "";
                    document.getElementById("roomsRating").setAttribute("value", "");
                }
                flag4 = false;
            }
        }
	
	</script>
	
<!-- 	預覽上傳相片 -->
	<script>
        function fileViewer() {
            var theFiles = document.getElementById("files").files;

            var dropZone = document.getElementById("dropZone")
            dropZone.innerHTML=""
			// 修正圖片未被清除的BUG
            
            for (var i = 0; i < theFiles.length; i++) {
                
                var reader = new FileReader();
                reader.readAsDataURL(theFiles[i]);
                reader.onload = function (e) {
                    var fileContent = e.target.result;
                    
                    var imgObj = document.createElement("img");  //<img>
                    imgObj.setAttribute("src", fileContent);  //<img src="....
                    imgObj.setAttribute("class", "thumb"); //<img src="... class="....
                    
                    dropZone.appendChild(imgObj);
					// 移出getElementById
                }
            }
        }
    </script>
	
        
</body>

</html>
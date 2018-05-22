<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>     
<!DOCTYPE html">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Free Bootstrap 4 Theme by ProBootstrap.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    
     <style>
        #showMap {
            width: 300px;
            height: 300px;
        }

        #inputState {
            height: 46px;
            color: rgb(151, 148, 148)
        }

        .inputState label,
        .inputState select {
            height: 46px;
            width: 100%;
            color: rgb(151, 148, 148)
        }

        .probootstrap-cover .overlay {
            position: absolute;
            background: rgba(0, 0, 0, 0.2);
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }

        .adbody {
            text-align: center;
            width: 600px;
            margin: auto;
        }
        .mapImage {
        	cursor: pointer;
        
        }
    </style>
    <title>訂位系統</title>
</head>

<body>
   <div>
        <jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
    </div>



    <!-- 以下為訂票功能 -->

    <section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/transport/images/into.jpg');"
        data-stellar-background-ratio="0.5" id="section-home">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md probootstrap-animate">
                                                                                                       <h3 style="color:#E8CCFF" align="center" >請輸入基本資料</h3>
                    <form action="stationEdit" class="probootstrap-form" style="border-radius: 30px;">
                        <div class="form-group">
                                                 
                              
									<div class="form-group ">
										
										<label for=" ">
											身分證字號:
											</label>
											<input type="text" id="id_label_location" name="searchSrting" class="form-control" placeholder="">
						
										
									</div>
								
<!-- 分隔線								 -->
							
									<div class="form-group">
										
										<label for="id_label_location">
											姓名
											</label>
											<input type="text" id="id_label_location" name="searchSrting" class="form-control" placeholder="">

										
										
									</div>
							
<!-- 分隔線 -->
								
									<div class="form-group inputState">
										
										<label for="id_label_location">
											電子郵件:
										</label>
											<input type="text" id="id_label_location" name="searchSrting" class="form-control" placeholder="">
										

										
										
									</div>
								
<!-- 分隔線 -->
								
<!-- 連絡電話 -->
								
									<div class="form-group inputState">
										
										<label for="id_label_location">
											連絡電話:<input type="text" id="id_label_location" name="searchSrting" class="form-control" placeholder="">

										</label>
										
									</div>
								
                                <!-- 							送出 -->
                                

                                <!-- 							送出 -->

                      
                        </div>
                    </form>
                    
                    <!-- summit -->
                               
            <div class="form-group">
               <div class="col-md">
                        <input  type="submit" value="送出" class="btn btn-primary btn-block" src="">
                         </div>
                </div>
                            
                    <!-- summit -->
                </div>
            </div>
    </section> 
 
                              
                              
<h1 id="QQ">請選擇座位</h1>
	
    <div class="div">
<table id class="table  table-bordered">
            <tr>
                <td scope="col" style="background-color:#00FFCC;" cellpadding="5" border="0">門</td>
                <td id="05">
                    <img id="idimg5" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="08">
                    <img id="idimg8" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="11">
                    <img id="idimg11" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="12">
                    <img id="idimg12" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="15">
                    <img id="idimg15" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="18">
                    <img id="idimg18" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="21">
                    <img id="idimg21" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="24">
                    <img id="idimg24" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="27">
                    <img id="idimg27" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="31">
                    <img id="idimg31" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
            </tr>
            <tr>

                <td style="background-color:#00FFCC"></td>
                <td style="background-color:#00FFCC"></td>
                <td style="background-color:#00FFCC"></td>
                <td style="background-color:#00FFCC"></td>
                <td style="background-color:#00FFCC"></td>
                <td style="background-color:#00FFCC"></td>
                <td style="background-color:#00FFCC"></td>
                <td style="background-color:#00FFCC"></td>
                <td style="background-color:#00FFCC"></td>
                <td style="background-color:#00FFCC"></td>
                <td id="30" class="hover" :hover>
                    <img id="idimg30" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
            </tr>
            <tr>
                <td id="02">
                    <img id="idimg2" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="04">
                    <img id="idimg4" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="07">
                    <img id="idimg7" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="10">
                    <img id="idimg10" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td scope="col" style="background-color:#00FFCC"></td>
                <td id="14">
                    <img id="idimg14" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="17">
                    <img id="idimg17" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="20">
                    <img id="idimg20" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="23">
                    <img id="idimg23" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="26">
                    <img id="idimg26" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="29">
                    <img id="idimg29" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
            </tr>
            <tr>
                <td id="01">
                    <img id="idimg1" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="03">
                    <img id="idimg3" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="06">
                    <img id="idimg6" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="09">
                    <img id="idimg9" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td scope="col" style="background-color:#00FFCC"></td>
                <td id="13">
                    <img id="idimg13" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="16">
                    <img id="idimg16" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="19">
                    <img id="idimg19" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="22">
                    <img id="idimg22" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="25">
                    <img id="idimg25" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
                <td id="23">
                    <img id="idimg28" src="/startrip/assets/transport/images/setOff.jpg" width="50" height="50">
                </td>
            </tr>
        </table>
       </div>
        <br>
<button id="random" value="submit">電腦選位</button>
        <h1 id="QQ"></h1>
<br>         
<select id="inputState" class="form-control" name="poeple">
    <option value="">請選擇票種</option>
                                               
    <option value="">全票</option>
    <option value="">半票</option>
    <option value="">學生票</option>
    </select>
    <br>
    <br>
    
    
    
    
    
    
    
    
    
    
    
<a href="/startrip/select">回上一步</a>

<script>
        
        document.addEventListener("DOMContentLoaded", function () {
            for (var i = 1; i <= 31; i++) {
                document.getElementById("idimg" + i).addEventListener("mouseover", mouseover);  //事件繫結，滑鼠滑入
                document.getElementById("idimg" + i).addEventListener("mouseout", mouseout);//事件繫結，滑鼠滑出
                document.getElementById("idimg" + i).addEventListener("click", click1);   
                
            }
                document.getElementById("random" ).addEventListener("click", getRandom);   
        });

        function mouseover() {			
            this.src = "/startrip/assets/transport/images/setOn.png";
        }
        function mouseout() {
        	this.src = "/startrip/assets/transport/images/setOff.jpg";
        }
        function click1() {
        	this.src = "/startrip/assets/transport/images/setOn.png";
        	 this.innerHTML = '您選的座位為' + this.id.substr(5) + '號';
             $("#QQ").html("<span>"+'您選的座位為'+this.id.substr(5)+'號'+"</span>");
        }
		function getRandom(){
			$("#QQ").html("<span>"+'您選的座位為'+Math.floor(Math.random()*31+1)+'號'+"</span>");
			
		}	
    </script>
    
    <script src="/startrip/assets/js/jquery.min.js"></script>
    <script src="/startrip/assets/js/popper.min.js"></script>
    <script src="/startrip/assets/js/bootstrap.min.js"></script>
    <script src="/startrip/assets/js/owl.carousel.min.js"></script>
    <script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
    <script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
    <script src="/startrip/assets/js/select2.min.js"></script>
    <script src="/startrip/assets/js/main.js"></script>
    <script src="/startrip/assets/js/jquery.min.js"></script>
    <script src="/startrip/assets/js/popper.min.js"></script>
    <script src="/startrip/assets/js/bootstrap.min.js"></script>
    <script src="/startrip/assets/js/owl.carousel.min.js"></script>
    <script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
    <script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
    <script src="/startrip/assets/js/select2.min.js"></script>
    <script src="/startrip/assets/js/main.js"></script>
</body>

</html>

  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>     
<!DOCTYPE html">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>訂位系統</title>
</head>

<body>

    <!-- action="transport/stationEdit" -->
    <form:form method="post" modelAttribute="inputStation">

        地區:
        <form>
            <select name="YourLocation">
                <option value="" selected="selected">請選擇</option>
                <option value="基隆">基隆</option>
                <option value="台北">台北</option>
                <option value="新北">新北</option>
                <option value="桃園">桃園</option>
                <option value="新竹">新竹</option>
                <option value="苗栗">苗栗</option>
                <option value="台中">台中</option>
                <option value="彰化">彰化</option>
                <option value="南投">南投</option>
                <option value="雲林">雲林</option>
                <option value="嘉義">嘉義</option>
                <option value="台南">台南</option>
                <option value="高雄">高雄</option>
                <option value="屏東">屏東</option>
                <option value="宜蘭">宜蘭</option>
                <option value="花蓮">花蓮</option>
                <option value="台東">台東</option>

            </select>
        </form>
        站名:
        <form:input path="stationName" />
        <br>
        <input type="button" value="新增">
    </form:form>

    <br>
    <br>
    <a href="http://localhost:8080//startrip/views/transport/stationInput.jsp">手動選位</a>



    <script src="/startrip/assets/js/jquery.min.js"></script>
    <script src="/startrip/assets/js/popper.min.js"></script>
    <script src="/startrip/assets/js/bootstrap.min.js"></script>
    <script src="/startrip/assets/js/owl.carousel.min.js"></script>
    <script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
    <script src="/startrip/assets/js/jquery.easing.1.3.js"></script>
    <script src="/startrip/assets/js/select2.min.js"></script>
    <script src="/startrip/assets/js/main.js"></script>

    <script>
        //        document.addEventListener("DOMContentLoaded", function () {
        //           for (var i = 1; i <= 5; i++) {
        //               document.getElementById("oR" + i).addEventListener("mouseover", mouseover);  //事件繫結，滑鼠滑入
        //               document.getElementById("oR" + i).addEventListener("mouseout", mouseOut);
        // document.getElementById("oR" + i).addEven
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

	<h1 id="QQ"></h1>
    <div class="div">
<table class="table  table-bordered">
            <tr>
                <td scope="col" style="background-color:burlywood;" cellpadding="5" border="0">門</td>
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

                <td style="background-color:burlywood"></td>
                <td style="background-color:burlywood"></td>
                <td style="background-color:burlywood"></td>
                <td style="background-color:burlywood"></td>
                <td style="background-color:burlywood"></td>
                <td style="background-color:burlywood"></td>
                <td style="background-color:burlywood"></td>
                <td style="background-color:burlywood"></td>
                <td style="background-color:burlywood"></td>
                <td style="background-color:burlywood"></td>
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
                <td scope="col" style="background-color:burlywood"></td>
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
                <td scope="col" style="background-color:burlywood"></td>
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
        <br>
<button id="random" value="submit">電腦選位</button>
        
         
<div class="Div02">
           
            


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

<link rel="stylesheet" href="/startrip/assets/css/owl.carousel.min.css">

<link rel="stylesheet"
	href="/startrip/assets/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet"
	href="/startrip/assets/fonts/fontawesome/css/font-awesome.min.css">

<link rel="stylesheet" href="/startrip/assets/css/select2.css">


<link rel="stylesheet" href="/startrip/assets/css/helpers.css">
<link rel="stylesheet" href="/startrip/assets/css/style.css">
<link rel="stylesheet" href="/startrip/assets/css/rthome.css">
<link rel="stylesheet" href="/startrip/assets/css/rthome2.css">
<link rel="stylesheet" href="/startrip/assets/css/rthome3.css">
<link rel="stylesheet" href="/startrip/assets/css/rthome4.css">
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

  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- action="transport/stationEdit" -->
<form:form  method="post" modelAttribute="inputStation">

地區:<form>
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
站名:<form:input path="stationName"/>
<br>
<input type="button" value="新增">
</form:form>

  <script>

 document.addEventListener("DOMContentLoaded", function () {
            document.getElementById("01").addEventListener("onclick",onclick);  //事件繫結，滑鼠滑入
            document.getElementById("01").addEventListener("ondblclick",ondblclick);    //事件繫結，滑鼠滑出
        });

        function onclick() {
            ba
            document.getElementById("01").className = "hover1";
        }
        function mouseOut() {
            document.getElementById("01").className = "hover";
        }
  
  </script>

  <div class="div">
  <table class="table  table-bordered">
    <tr>
      <td scope="col" style="background-color:burlywood;" cellpadding="5" border="0">門</td>
      <td id="05" class="hover":hover ><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="08" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="11" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="12" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="15" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="18" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="21" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="24" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="27" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="31" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
    </tr>
    <tr >

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
      <td  id="30" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
    </tr>
    <tr>
      <td id="02" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="04" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="07" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="10" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td  scope="col" style="background-color:burlywood"></td>
      <td id="14" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="17" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="20" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="23" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="26" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="29" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
    </tr>
    <tr>
      <td id="01" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="03" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="06" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="09" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td scope="col" style="background-color:burlywood"></td>
      <td id="13" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="16" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="19" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="22" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="25" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
      <td id="23" class="hover":hover><img src="http://localhost:8080//startrip/assets/transport/images/setOff.png"width="20" height="20"></td>
    </tr>
  </table>
<div class="Div02">
    路線資訊查詢(地圖選取)
    <div class="map"> <img src="http://localhost:8080//startrip/assets/transport/images/taiwan.png" width="280" height="460" usemap="#Map" id="Image1" border="0">
    <map name="Map" id="Map">
      <area shape="rect"  coords="201,54,248,76"  onclick="city(&#39;新北&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map01.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="181,23,228,44"  onclick="city(&#39;台北&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map02.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="229,28,274,52"  onclick="city(&#39;基隆&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map03.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="122,186,170,208"  onclick="city(&#39;南投&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map04.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="53,303,100,328"  onclick="city(&#39;高雄&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map05.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="208,99,260,122"  onclick="city(&#39;宜蘭&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map06.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="176,196,224,215"  onclick="city(&#39;花蓮&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map07.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="136,278,185,302"  onclick="city(&#39;台東&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map08.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="84,335,132,359"  onclick="city(&#39;屏東&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map09.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="54,260,100,283"  onclick="city(&#39;台南&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map10.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="37,227,86,252"  onclick="city(&#39;嘉義&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map11.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="36,193,85,212"  onclick="city(&#39;雲林&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map12.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="69,161,119,185"  onclick="city(&#39;彰化&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map13.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="111,137,160,160"  onclick="city(&#39;台中&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map14.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="92,104,142,128"  onclick="city(&#39;苗栗&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map15.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="155,93,204,114"  onclick="city(&#39;新竹&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map16.png&#39;,1)" onmouseout="MM_swapImgRestore()">
      <area shape="rect" coords="148,44,197,67"  onclick="city(&#39;桃園&#39;);" onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map17.png&#39;,1)" onmouseout="MM_swapImgRestore()">
    </map>
    </div>						
  </div> 

<script src="assets/js/jquery.min.js"></script>

  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/owl.carousel.min.js"></script>

  <script src="assets/js/jquery.waypoints.min.js"></script>
  <script src="assets/js/jquery.easing.1.3.js"></script>

  <script src="assets/js/select2.min.js"></script>

  <script src="assets/js/main.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>站名編號查詢</title>
</head>
<body>
	<a href="/startrip/stationEdit">開始訂位</a>

	<h2 class="title01">1 起迄地區查詢</h2>
	<div class="search">
		<form id="form1" name="form1" method="post">
			<label for="city1" class=""> 起站地區：</label>
			<div>
				<select id="city1" name="city1" style="width: 120px">
					<option value="">請選擇</option>
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
			</div>
			<label for="city2" class=""> 訖站地區：</label>
			<div>
				<select id="city2" name="city2" style="width: 120px">
					<option value="">請選擇</option>
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
			</div>
		</form>
	</div>

	<h2 class="title01">2 起迄站查詢</h2>
	<div class="search">

		<label for="area" class=""> 起站地區：</label>
		<div>
			<select id="area" name="area" style="width: 120px">
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
		</div>
		<label for="origin" class=""> 上車站：</label>
		<div>
			<select id="origin" name="origin" style="width: 120px">
				<option value="" selected="selected">請選擇</option>

			</select>
		</div>
		<label for="destination" class=""> 下車站：</label>
		<div>
			<select id="destination" name="destination" style="width: 120px">
				<option value="" selected="selected">請選擇</option>

			</select>
		</div>
	</div>

	<h2 class="title04">3 營業據點路線列表</h2>
	<div class="search">
		<label for="area3" class="">請選擇地區：</label>
		<div>
			<select id="area3" name="area3" style="width: 120px">
				<option value="" selected="selected">請選擇</option>

				<option value="14">基隆</option>

				<option value="1">台北</option>

				<option value="16">新北</option>

				<option value="3">桃園</option>

				<option value="4">新竹</option>

				<option value="5">苗栗</option>

				<option value="6">台中</option>

				<option value="7">南投</option>

				<option value="8">彰化</option>

				<option value="9">雲林</option>

				<option value="10">嘉義</option>

				<option value="11">台南</option>

				<option value="12">高雄</option>

				<option value="13">屏東</option>

				<option value="15">宜蘭</option>

				<option value="17">台東</option>
			</select>
		</div>
		<label for="point" class="">營業據點：</label>
		<div>
			<select id="point" name="point" style="width: 120px">
				<option value="" selected="selected">請選擇</option>
				

			</select>
		</div>
		<input type="submit" value="查詢" name="submit" style="width: 60px">
	<input type="hidden" id="opt" name="opt" value="search">
	</div>




	<h1>查詢車站(地圖)</h1>
	<div class="map">
		<img src="/startrip/assets/transport/images/taiwan.png" width="280"
			height="460" usemap="#Map" id="Image1" border="0">
		<map name="Map" id="Map">
			<area shape="rect" coords="201,54,248,76"
				onclick="city(&#39;新北&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map01.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="181,23,228,44"
				onclick="city(&#39;台北&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map02.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="229,28,274,52"
				onclick="city(&#39;基隆&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map03.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="122,186,170,208"
				onclick="city(&#39;南投&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map04.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="53,303,100,328"
				onclick="city(&#39;高雄&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map05.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="208,99,260,122"
				onclick="city(&#39;宜蘭&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map06.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="176,196,224,215"
				onclick="city(&#39;花蓮&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map07.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="136,278,185,302"
				onclick="city(&#39;台東&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map08.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="84,335,132,359"
				onclick="city(&#39;屏東&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map09.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="54,260,100,283"
				onclick="city(&#39;台南&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map10.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="37,227,86,252"
				onclick="city(&#39;嘉義&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map11.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="36,193,85,212"
				onclick="city(&#39;雲林&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map12.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="69,161,119,185"
				onclick="city(&#39;彰化&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map13.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="111,137,160,160"
				onclick="city(&#39;台中&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map14.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="92,104,142,128"
				onclick="city(&#39;苗栗&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map15.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="155,93,204,114"
				onclick="city(&#39;新竹&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map16.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
			<area shape="rect" coords="148,44,197,67"
				onclick="city(&#39;桃園&#39;);"
				onmouseover="MM_swapImage(&#39;Image1&#39;,&#39;&#39;,&#39;images/map/map17.png&#39;,1)"
				onmouseout="MM_swapImgRestore()">
		</map>
	</div>
	</div>

	<table border="1" cellpadding="10" cellspacing="0"
		class="table  table-bordered">
		<tr>
			<th>站名編號</th>
			<th>地區</th>
			<th>站名</th>
		</tr>

		<c:forEach items='${stationList}' var='select'>
			<tr>
				<td>${select.stationId}</td>
				<td>${select.area}</td>
				<td>${select.stationName}</td>
			</tr>
		</c:forEach>
	</table>



	






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
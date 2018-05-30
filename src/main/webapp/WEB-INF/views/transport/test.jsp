<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="/startrip/assets/images/rt/favicon.ico" />
<title>Insert title here</title>
</head>
<body>
	<h3><a href="/startrip/station/select">顯示站名編號</a></h3>
	
<!-- 老師範例 -->

<!-- 老師範例 -->
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
	<!--以下為起訖站查詢 	-------------------------------------------------------------------------------------------- -->

	<!-- 起訖站查詢function -->

	<!-- 以上為起訖站查詢function -->
	<!-- 起訖站查詢版面開始 -->
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
				<c:forEach items='${stationList}' var='select'>


					<option value="">${select.stationName}</option>

				</c:forEach>
			</select>
		</div>
		<label for="destination" class=""> 下車站：</label>
		<div>
			<select id="destination" name="destination" style="width: 120px">
				<option value="" selected="selected">請選擇</option>
				<c:forEach items='${stationList}' var='select'>


					<option value="">${select.stationName}</option>

				</c:forEach>

			</select>
		</div>
	</div>
	<!-- 以上為起訖站查詢版面----------------------------- -->


	<!--      以下為用地區選車站----------- -->
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
				<option value="" selected="selected">請選擇</option>


			</select>
		</div>

		<input type="submit" value="查詢" name="submit" style="width: 60px">
		<input type="hidden" id="opt" name="opt" value="search">
	</div>

	<!-- 以上為用地區選車站------------------- -->




	<!-- 	<div id="mapdiv" style="float:left;width:auto;height:auto;"></div>	 -->




	<table border="1" cellpadding="10" cellspacing="0"
		class="table  table-bordered">
		<tr>
			<th>站名編號</th>
			<th>地區</th>
			<th>站名</th>
			<th>車站地址</th>
		</tr>

		<c:forEach items='${stationList}' var='select'>
			<tr>
				<td>${select.stationId}</td>
				<td>${select.area}</td>
				<td>${select.stationName}</td>
				<td>${select.address}</td>

			</tr>
		</c:forEach>
	</table>
	
	
	
</body>
</html>
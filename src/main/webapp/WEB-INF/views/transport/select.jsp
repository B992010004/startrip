<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html">
<html>

<head>
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
    <title>站名編號查詢</title>
        
</head>
<!--     搜尋車站vvv -->
                   <script>
                    function getArea(data) {
                        //     alert($('#FPMap0'));
                        //    alert(data);
                        var abb = {};
                        abb.local = data;
                        $.ajax({
                            type: 'POST',
                            url: 'selectArea',
                            data: abb,
                            success: function (response) {
                                $("#tbo").empty();
                                $("#gm").empty();
                                for (var i = 0; i < response.length; i++) {
                                    $("#tbo").append("<tr><td>" + response[i].area + "</td>" +
                                        "<td>" + response[i].stationName + "</td>" +
                                        "<td >" + "<img class='mapImage' id='getAddress' width='30' height='30' src='/startrip/assets/transport/images/mapicon.png' ><span>" + response[i].address + "</span></td></tr>");
                                }

                            }, error: function (jqXHR, textStatus, errorThrown) { alert("no") },

                        });

                        $(document).on('click', '.mapImage', function () {
                            //    alert(this)
                            //    alert('aaaa')
                            $("#gm").empty();
                            var googleAddress = $(this).parent('td').children('span').text()
                            //                             alert(googleAddress)
                            console.log("地址: " + googleAddress);
                            $($("#gm")).hide().append(
                                "<a href='https://maps.google.com/maps?q=" + googleAddress + "&amp;z=11"
                                + "data-geo='' target='_blank'> <img class='map' alt=" + googleAddress + "src='https://maps.google.com/maps/api/staticmap?zoom=15&size=330x500&maptype=terrain&sensor=false&center=" + googleAddress + "&markers=color:green%7Clabel:S%7C$" + googleAddress + "&key=AIzaSyARfDct4ecrevMJjHgcrjmPOLfbM6X9N7w'></a>"
                            ).slideDown(2000) ;
                        });

                    };
                </script>          
                  <script>
                  document.addEventListener("DOMContentLoaded",function(){
                		 document.getElementById("inputArea").addEventListener("change", change1);
                		} )
                  function change1() {             	    
                  
                	  var abb = { local : $("#inputArea").val()
                    		  };
                		 document.getElementById('inputStation').innerHTML = "";
                        $.ajax({
                            type: 'POST',
                            url: 'selectArea',
                            data: abb,
                            success: function (response) {                 
                            	var aaa=$("#inputArea").val();                     
                            	for (var i = 0; i < response.length; i++) {                       	                  		
                            		var opt1 = document.createElement("option");
                                        opt1.setAttribute("value", response[i].stationName);   
                                        opt1.appendChild( document.createTextNode(response[i].stationName));
                                        document.getElementById('inputStation').appendChild(opt1);                       		                 	                          	
                                }
                            }, error: function (jqXHR, textStatus, errorThrown) { alert("no") },

                        });     }           
                </script>
     <script>
                  document.addEventListener("DOMContentLoaded",function(){
                		 document.getElementById("inputArea2").addEventListener("change", change2);
                		} )
                  function change2() {             	    
                  
                	  var abb = { local : $("#inputArea2").val()
                    		  };
                		 document.getElementById('inputStation2').innerHTML = "";
                        $.ajax({
                            type: 'POST',
                            url: 'selectArea',
                            data: abb,
                            success: function (response) {                 
                            	var aaa=$("#inputArea2").val();                     
                            	for (var i = 0; i < response.length; i++) {                       	                  		
                            		var opt1 = document.createElement("option");
                                        opt1.setAttribute("value", response[i].stationName);   
                                        opt1.appendChild( document.createTextNode(response[i].stationName));
                                        document.getElementById('inputStation2').appendChild(opt1);                       		                 	                          	
                                }
                            }, error: function (jqXHR, textStatus, errorThrown) { alert("no") },

                        });     }           
                </script>

    <!-- 以下為地圖查車站function -->

    <script>
        document.addEventListener("DOMContentLoaded", function () {

            var areas = document.querySelectorAll("area.imgbut");
            var areasLen = areas.length;
            console.log(areas);
            console.log(areasLen);
            for (var i = 0; i < areasLen; i++) {
                areas[i].addEventListener("mouseover", mouseOver);
                areas[i].addEventListener("mouseout", mouseOut);
            }
        });
        function mouseOver() {
            console.log(this.id);
            // document.images[0].src = "images/MapTaipei.gif"; 
            //console.log("QQQ");
            document.images[0].src = "/startrip/assets/transport/images/map/map" + this.id + ".png";
            //console.log("/startrip/assets/transport/images/map/map"+ this.id +".png");
        }
        function mouseOut() {
            document.images[0].src = "/startrip/assets/transport/images/taiwan.png";
        }
    </script>  
    <!-- 以上為地圖查車站function -->    
<body>
    <div>
        <jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
    </div>
<div>

</div>
    <!-- 以下為訂票功能 -->

    <section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/transport/images/into.jpg');"
        data-stellar-background-ratio="0.5" id="section-home">
        <div class="container">
            <div class="row align-items-center">
                
                    <form action="/startrip/selectTripInf" class="probootstrap-form" style="border-radius: 30px;">
                        <div class="form-group">
                            <div class="row">
                                <!-- 							選擇出發日期 -->
                                <div class="col-md">
                                    <div class="form-group inputState">
                                        <div class="probootstrap-date-wrap">
                                            <label for="probootstrap-date-arrival">
                                                <span class="icon ion-calendar"></span>
                                                出發日期<input type="text" id="probootstrap-date-arrival" name="date" class="form-control" placeholder="出發日期">
                                            </label>
                                        </div>
                                    </div>
                                </div>
<!-- 							以上選擇出發日期 -->
<!--  								選擇出發時間                      -->
<!--                  選擇出發時間      -->



                                <!-- 選擇出發地點 -->
                                <div class="col-md">
                                    <div class="form-group inputState">
                                        <label for="id_label_people">
                                            出發地點<select id="inputArea" class="form-control" name="">
                                                <option value="">請選擇出發地點</option>
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
                                        </label>
                                    </div>
                                </div>

                                <!-- 選擇出發地點 -->
         
                                <!-- 選擇出發站名 -->
                                <div class="col-md">
                                    <div class="form-group inputState">
                                        <label for="id_label_people">
                                            出發站名<select id="inputStation" class="form-control" name="StarStation">

                                                <option value="" selected="selected">選擇出發車站</option>
   
                                            </select>
                                        </label>
                                    </div>
                                </div>
                                <!-- 選擇出發站名 -->
                                <!-- 選擇到達地點 -->
                                <div class="col-md">
                                    <div class="form-group inputState">
                                        <label for="id_label_people">
                                            到達地點<select id="inputArea2" class="form-control" name="poeple" >
                                                <option value="">請選擇前往地點</option>
                                                <option id="aaa" value="基隆">基隆</option>
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
                                        </label>
                                    </div>
                                </div>
                                <!-- 選擇到達地點 -->
                                <!-- 選擇到達車站 -->
                                <div class="col-md">
                                    <div class="form-group inputState">
                                        <label for="id_label_people">
                                            到達車站<select id="inputStation2" class="form-control" name="EndStation">
                                                <option value="">請選擇目的車站</option>
                                                

                                               
                                            </select>
                                        </label>
                                    </div>
                                </div>
                                <!-- 選擇到達車站 -->
                                <!-- 							送出 -->
                                <!-- summit -->
                                <div class="col-md">
                                    <div class="form-group">
                                        <div class="col-md">
                                            <input type="submit" value="送出" class="btn btn-primary btn-block">
                                        </div>
                                    </div>
                                </div>
                                <!-- summit -->

                                <!-- 							送出 -->

                            </div>
                        </div>
                    </form>
                </div>
            </div>
    </section>
    <!-- 以上為訂票功能版面 -->
    <!-- 以下為地圖標註顯示 -->
    
        <div align="left" style="margin-left:100px">
            <div class="row text-center mb-5 probootstrap-animate">
                <div class="col-md-12">
                    <h4 class="display-4 probootstrap-section-heading">查詢車站</h4>
                </div>
            </div>
            <div style="width:200%" class="row">
                <div id="mapDiv">
            <a id="mapDiv" class="probootstrap-thumbnail">
                        <img style="width:200% " id="imgMap" class="img-fluid" alt="Free Template by ProBootstrap.com" src="/startrip/assets/transport/images/taiwan.png"
                            usemap="#FPMap0" width="280" height="460" usemap="#Map" border="0">
                        <map id="FPMap0" name="FPMap0">
                            <area class=imgbut shape="rect" coords="201,54,248,76" id=01 onclick="getArea('新北')">
                            <area class=imgbut shape="rect" coords="181,23,228,44" id=02 onclick="getArea('台北')">
                            <area class=imgbut shape="rect" coords="229,28,274,52" id=03 onclick="getArea('基隆')">
                            <area class=imgbut shape="rect" coords="122,186,170,208" id=04 onclick="getArea('南投')">
                            <area class=imgbut shape="rect" coords="53,303,100,328" id=05 onclick="getArea('高雄')">
                            <area class=imgbut shape="rect" coords="208,99,260,122" id=06 onclick="getArea('宜蘭')">
                            <area class=imgbut shape="rect" coords="176,196,224,215" id=07 onclick="getArea('花蓮')">
                            <area class=imgbut shape="rect" coords="136,278,185,302" id=08 onclick="getArea('台東')">
                            <area class=imgbut shape="rect" coords="84,335,132,359" id=09 onclick="getArea('屏東')">
                            <area class=imgbut shape="rect" coords="54,260,100,283" id=10 onclick="getArea('台南')">
                            <area class=imgbut shape="rect" coords="37,227,86,252" id=11 onclick="getArea('嘉義')">
                            <area class=imgbut shape="rect" coords="36,193,85,212" id=12 onclick="getArea('雲林')">
                            <area class=imgbut shape="rect" coords="69,161,119,185" id=13 onclick="getArea('彰化')">
                            <area class=imgbut shape="rect" coords="111,137,160,160" id=14 onclick="getArea('台中')">
                            <area class=imgbut shape="rect" coords="92,104,142,128" id=15 onclick="getArea('苗栗')">
                            <area class=imgbut shape="rect" coords="155,93,204,114" id=16 onclick="getArea('新竹')">
                            <area class=imgbut shape="rect" coords="148,44,197,67" id=17 onclick="getArea('桃園')">
                        </map>

                    </a>
                </div>
                <!-- 以上為地圖顯示區塊 -->
                <!-- 產生出的車站資訊表格 -->
                <div style="margin-left:100px">
                    <table  class="for-table table">
                        <thead>
                            <tr>
                                <th width="100">地區</th>
                                <th width="100">站名</th>
                                <th>車站地址</th>
                            </tr>
                        </thead>
                        <tbody id="tbo">
                        <tr><td>台北        </td>
                        <td>台北車站      </td>
                        <td><img class='mapImage' id='getAddress' width='30' height='30' src='/startrip/assets/transport/images/mapicon.png' ><span>台北市中正區市民大道一段168號   /span></td></tr>
                        <tr><td>台北 </td>
                        <td>市府轉運站     </td><td><img class="mapImage" id="getAddress" width="30" height="30" src="/startrip/assets/transport/images/mapicon.png"><span>台北市信義區忠孝東路五段6號   </span></td></tr>
                        <tr><td>台北        </td>
                        <td>士林轉運站     </td>
                        <td><img class="mapImage" id="getAddress" width="30" height="30" src="/startrip/assets/transport/images/mapicon.png"><span>臺北市士林區福德路1號                                                                                         </span></td></tr>
                        <tr><td>台北        </td>
                        <td>松山機場站     </td>
                        <td><img class="mapImage" id="getAddress" width="30" height="30" src="/startrip/assets/transport/images/mapicon.png"><span>台北市松山區敦化北路340之9號                                                                                    </span></td></tr>
                        <tr><td>台北        </td><td>南港轉運站     </td><td><img class="mapImage" id="getAddress" width="30" height="30" src="/startrip/assets/transport/images/mapicon.png"><span>台北市南港區南港路一段313號                                                                                     </span></td></tr>
                        <tr><td>台北        </td><td>捷運南港展覽館   </td><td><img class="mapImage" id="getAddress" width="30" height="30" src="/startrip/assets/transport/images/mapicon.png"><span>台北市南港區經貿二路1號(163櫃)                                                                                  </span></td></tr>
                        <tr><td>台北        </td><td>捷運圓山站     </td><td><img class="mapImage" id="getAddress" width="30" height="30" src="/startrip/assets/transport/images/mapicon.png"><span>台北市大同區酒泉街9-1號     
                        </tbody>
                        <tfoot>
                    </table>
                    

                </div>
               <div id="gm">
	<div class="row">
                            <div class="col-md">
                                <!-- 地圖 -->
                                <a href="https://maps.google.com/maps?q=台北市中正區市民大道一段168號&amp;z=11" data-geo="" target="_blank">
                                    <img class="map" alt=台北市中正區市民大道一段168號 src="https://maps.google.com/maps/api/staticmap?zoom=15&size=330x500&maptype=terrain&sensor=false&center=台北市中正區市民大道一段168號&markers=color:blue%7Clabel:S%7C台北市中正區市民大道一段168號&key=AIzaSyARfDct4ecrevMJjHgcrjmPOLfbM6X9N7w">
                                </a>
                            </div>
                        </div>
               </div>
            </div>
        </div>



    
    <!-- 以上為地區顯示車站 -->


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

    <script src="/startrip/assets/js/bootstrap-datepicker.js"></script>
    <script src="/startrip/assets/js/jquery.waypoints.min.js"></script>
    <script src="/startrip/assets/js/jquery.easing.1.3.js"></script>

    <script src="/startrip/assets/js/select2.min.js"></script>

    <script src="/startrip/assets/js/main.js"></script>

</body>

</html>
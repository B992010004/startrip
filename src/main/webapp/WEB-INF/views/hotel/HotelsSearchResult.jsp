<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>飯店搜尋結果</title>

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

  <link rel="stylesheet" href="/startrip/assets/css/range.css">
  <link rel="shortcut icon" type="image/x-icon" href="/startrip/assets/images/rt/favicon.ico" />
  <style>
    .roomlink:link,
    .roomlink:visited,
    .roomlink:hover,
    .roomlink:active {
      color: black;
    }

    #section-home {
      padding-top: 45px;
      padding-bottom: 45px;
    }

    .inputState label,
    .inputState select {
      height: 46px;
      width: 100%;
      color: rgb(151, 148, 148)
    }

    .imgmaxheight {
      height: 168px;
    }

    .imgmaxheight img {
      max-width: 100%;
      max-height: 100%;
    }
  </style>


</head>

<body>


    
<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
		
  <!-- END nav -->
  <section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5"
    id="section-home">
    <div class="overlay" style="height:300px;"></div>
  </section>
  <!-- END section -->
  <div class="container">
    <div class="row">
      <!-- select -->
      <div class="col-md-3">
        <br>
        <form action="/startrip/HotelsSearchResult" class="probootstrap-form">
          <div class="form-group">
            <!-- place -->
            <div class="row">
              <div class="col-md">
                <div class="form-group inputState">
                  <label for="id_label_location">
                    <input type="text" id="id_label_location" name="searchSrting" class="form-control" placeholder="地點或飯店名稱">
                  </label>
                </div>
              </div>
            </div>
            <!-- place -->
            <!-- arrival -->
            <div class="row">
              <div class="col-md">
                <div class="form-group">
                  <div class="probootstrap-date-wrap inputState">
                    <label for="probootstrap-date-arrival">
                      <span class="icon ion-calendar"></span>
                      <input type="text" id="probootstrap-date-arrival" name="checkIn" class="form-control" placeholder="入住">
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <!-- arrival -->
            <!-- departure -->
            <div class="row">
              <div class="col-md">
                <div class="form-group">
                  <div class="probootstrap-date-wrap inputState">
                    <label for="probootstrap-date-departure">
                      <span class="icon ion-calendar"></span>
                      <input type="text" id="probootstrap-date-departure" name="checkOut" class="form-control" placeholder="退房">
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <!-- departure -->
            <!-- people -->
            <div class="row">
              <div class="col-md">
                <div class="form-group inputState">
                  <label for="id_label_people">
                    <select class="form-control" name="personNum">
                      <option selected value="1">人數</option>
                      <option value="1">1</option>
                      <option value="2" selected="selected">2</option>
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
            </div>
            <!-- people -->
            <!-- summit -->
            <div class="row">
              <div class="col-md">
                <div class="form-group">
                  <div class="col-md">
                    <input type="submit" value="重新搜尋" class="btn btn-primary btn-block">
                  </div>
                </div>
              </div>
            </div>
            <!-- summit -->
            <!-- END row -->
          </div>
        </form>
        <hr>
        <h4>進階篩選</h4>
        <hr>
        <h5>每晚價格</h5>
        <!-- range-slider -->
        <div class="range-slider">
          <input id="range1" value="0" min="0" max="12000" step="100" type="range" />
          <input id="range2" value="12000" min="0" max="12000" step="100" type="range" />
          <br>
          <br>
          <form class="range1">
          <span class="rspan1">NT$</span>
            <input disabled type="number" value="0" min="0" max="12000" />
            
          </form>
          <form class="range2">
          <span class="rspan2">NT$</span>
            <input disabled type="number" value="12000" min="0" max="12000" />
            
          </form>
        </div>
        <!-- range-slider -->
        <hr>
        <h5>星等</h5>
        <div>
          <label for="5star">
            <input id="5star" type="checkbox" value="5">★★★★★5星級
          </label>
          <br>
          <label for="4star">
            <input id="4star" type="checkbox" value="4">★★★★4星級
          </label>
          <br>
          <label for="3star">
            <input id="3star" type="checkbox" value="3">★★★3星級
          </label>
        </div>
        <hr>
        <h5>評分</h5>
        <!-- range-slider1 -->
        <div class="range-slider1">
          <input id="raterange1" value="0" min="0" max="10" step="0.1" type="range" />
          <input id="raterange2" value="10" min="0" max="10" step="0.1" type="range" />
          <br>
          <br>
          <input disabled class="range1" type="number" value="0" min="0" max="10" />
          <input disabled class="range2" type="number" value="10" min="0" max="10" />
        </div>
        <!-- range-slider1 -->
        <hr>
        <h5 data-toggle="collapse" data-target="#roomtypelist">房型</h5>
        <div id="roomtypelist" class="collapse">
          <form>
            <input type="checkbox" id="room1" value="1">
            <label for="room1">單人房</label>
            <br>
            <input type="checkbox" id="room2" value="2">
            <label for="room2">雙人房</label>
            <br>
            <input type="checkbox" id="room3" value="3">
            <label for="room3">三人房</label>
            <br>
            <input type="checkbox" id="room4" value="4">
            <label for="room4">四人房</label>
            <br>
            <input type="checkbox" id="room5" value="5">
            <label for="room5">超過四人</label>
            <br>
          </form>
        </div>
        <hr>
        <h5 data-toggle="collapse" data-target="#servicelist">服務</h5>
        <div id="servicelist" class="collapse">
          <form>
            <input type="checkbox" id="service1" value="1">
            <label for="service1">wifi</label>
            <br>
            <input type="checkbox" id="service2" value="2">
            <label for="service2">溫泉</label>
            <br>
            <input type="checkbox" id="service3" value="3">
            <label for="service3">停車場</label>
            <br>
            <input type="checkbox" id="service4" value="4">
            <label for="service4">接送服務</label>
            <br>
            <input type="checkbox" id="service5" value="5">
            <label for="service5">游泳池</label>
            <br>
            <input type="checkbox" id="service6" value="6">
            <label for="service6">SPA</label>
            <br>
            <input type="checkbox" id="service7" value="7">
            <label for="service7">健身中心</label>
            <br>
            <input type="checkbox" id="service8" value="8">
            <label for="service8">餐廳</label>
            <br>
            <input type="checkbox" id="service9" value="9">
            <label for="service9">可攜寵物</label>
            <br>
          </form>
        </div>
        <hr>
        <h5 data-toggle="collapse" data-target="#facilitylist">設施</h5>
        <div id="facilitylist" class="collapse">
          <form>
            <input type="checkbox" id="facility1" value="1">
            <label for="facility1">wifi</label>
            <br>
            <input type="checkbox" id="facility2" value="2">
            <label for="facility2">溫泉</label>
            <br>
            <input type="checkbox" id="facility3" value="3">
            <label for="facility3">停車場</label>
            <br>
            <input type="checkbox" id="facility4" value="4">
            <label for="facility4">接送服務</label>
            <br>
            <input type="checkbox" id="facility5" value="5">
            <label for="facility5">游泳池</label>
            <br>
            <input type="checkbox" id="facility6" value="6">
            <label for="facility6">SPA</label>
            <br>
            <input type="checkbox" id="facility7" value="7">
            <label for="facility7">健身中心</label>
            <br>
            <input type="checkbox" id="facility8" value="8">
            <label for="facility8">餐廳</label>
            <br>
            <input type="checkbox" id="facility9" value="9">
            <label for="facility9">可攜寵物</label>
            <br>
          </form>
        </div>

      </div>
      <!-- select -->
      <!-- result -->
      <div class="col-md-9" >
      <br>
      <div id="displayHotels">
        
        <!-- 靜態資料產生 -->
<!--         <a href="/startrip/Rooms/1" class="roomlink"> -->
<!--           <div class="row"> -->
<!--             <div class="col-md"> -->
<!--               card -->
<!--               <div class="card"> -->
<!--                 <div class="row"> -->
<!--                   <div class="col-md-4 imgmaxheight">   -->
<!--                       <img src="/startrip/assets/images/img_1.jpg" class="img-thumbnail" alt="飯店圖片"> -->
<!--                   </div> -->
<!--                   <div class="col-md-8"> -->
<!--                     <div class="row"> -->
<!--                       <div class="col-md-8">OX飯店</div> -->
<!--                       <div class="col-md-4">5.7</div> -->
<!--                     </div> -->
<!--                     <div class="row"> -->
<!--                       <div class="col-md-12">台北市內湖區</div> -->
<!--                     </div> -->
<!--                     <div class="row"> -->
<!--                       <div class="col-md-12">★★★★★</div> -->
<!--                     </div> -->
<!--                     <br> -->
<!--                     <br> -->
<!--                     <div class="row"> -->
<!--                       <div class="col-md-8">服務種類</div> -->
<!--                       <div class="col-md-4">價格：30000</div> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--               end card -->
<!--             </div> -->
<!--           </div> -->
<!--           <p></p> -->
<!--         </a> -->
        <!-- 靜態資料結束 -->
        <!-- 動態資料產生 -->
        <c:forEach var="hotel" items="${results }">
        <a href="/startrip/Rooms/${hotel.hotelid }" class="roomlink">
          <div class="row">
            <div class="col-md">
              <!-- card -->
              <div class="card">
                <div class="row">
                  <div class="col-md-4 imgmaxheight">
<%--                     ${hotel.photoArr[0] } --%>
                      <img src="/startrip/getPicture/hotel/${hotel.hotelid }/${hotel.photoArr[0] }" class="img-thumbnail" alt="飯店圖片">
                  </div>
                  <div class="col-md-8">
                    <div class="row">
                      <div class="col-md-8" style="font-weight:bold;font-size:16px;">${hotel.hotelname }</div>
                      <div class="col-md-4">5.7</div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">${hotel.hoteladdress }</div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                      <c:forEach var = "i" begin = "1" end = "${hotel.hotelstar }">
                      	★
                      </c:forEach>
                      </div>
                    </div>
                    <br>
                    <br>
                    <div class="row">
                      <div class="col-md-8">服務種類</div>
                      <div class="col-md-4">價格：NT$ <fmt:formatNumber value="${hotel.lowestPrice }" type="number" /></div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end card -->
            </div>
          </div>
          <p></p>
        </a>
        </c:forEach>
        </div>
        <!-- 動態資料結束 -->
        <div class="row justify-content-between">
            <div class="col-2">
            <button id="prePage" type="button" class="btn btn-outline-primary " style="display: none;">
             上一頁
            </button>
            </div>
            <div class="col-2">
            <span id="idx">第1頁/ 共<fmt:formatNumber value="${counts/5  + (counts % 5 == 0 ? 0 : 0.5)}" type="number" pattern="#" />頁</span>
            </div>
            <div class="col-2">
            <button id="nextPage" type="button" class="btn btn-outline-primary">
             下一頁
            </button>
            </div>
        </div>
      </div>
      <!-- result -->
    </div>

  </div>

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


  <script>

    var maincontent = '<a href="{link+pk}" class="roomlink"><div class="row"><div class="col-md"><div class="card"><div class="row"><div class="col-md-4 imgmaxheight">' +
      '<img src="{img src}"  class="img-thumbnail" ></div><div class="col-md-8"><div class="row">' +
      '<div class="col-md-8">{hotelname}}</div>' +
      '<div class="col-md-4">{rate}</div></div><div class="row">' +
      '<div class="col-md-12">{location}</div></div><div class="row">' +
      '<div class="col-md-12">{star}</div></div><br><br><div class="row">' +
      '<div class="col-md-8">{service list}</div>' +
      '<div class="col-md-4">{service price}</div></div></div></div></div></div></div><p></p></a>'

    $(":checkbox").change(function (e) {
      var checkstate = $(this).is(":checked")
      var checkboxvalue = $(this).val()
      var checkedid = e.target.id
      console.log(checkstate)
      console.log(checkboxvalue)
      console.log(checkedid)
    })
    $("input[type=range]").change(function (e) {
      var rangevalue = $(this).val()
      var checkedid = e.target.id
      console.log(rangevalue)
      console.log(checkedid)
    })
    
    $('#prePage, #nextPage').click(function () {
                $('html, body').animate({
                    scrollTop: $('#displayHotels').offset().top
                }, 800);
            });
            // 滑動至預定區間

  </script>
  <script>
  
  var nowPage = 0;
  
  $(document).on('click','#nextPage', function (){
	  nowPage+=1;
	  page();
  });
  $(document).on('click','#prePage', function(){
	  nowPage-=1;
	  page();
  });
  
  function page(){
	  $.ajax({
			url : '/startrip/pages',
			type : 'GET',
			data : {"page":nowPage},
			//enctype: "multipart/form-data",
			//contentType : false,
			//processData : false,
			//dataType:"json",
			
			error:function(e){
				console.log(e);
			}
	
		}).done(function(responce){
			$('#displayHotels').empty();
			
			var docFrag = $(document.createDocumentFragment());
			// for(i=0;i<responce.length;i++){
			// 	console.log(responce[i].content);
			// 	docFrag.append(row);
			// }
	
            $.each(responce.hotels, function (idx, hotel) {
                //連結
                var a = $('<a href="/startrip/Rooms/'+ hotel.hotelid + '" class="roomlink"></a>');
                var row = $('<div class="row"></div>');
                var col = $('<div class="col-md"></div>');
                var card = $('<div class="card"></div>');

                var card_row = $('<div class="row"></div>');
                var card_row_md4 = $('<div class="col-md-4 imgmaxheight"></div>');
                var card_row_md4_img = $('<img src="/startrip/getPicture/hotel/'+ hotel.hotelid +'/'+ hotel.photoArr[0]  +'" class="img-thumbnail" alt="飯店圖片">');
                card_row_md4.append(card_row_md4_img);
                var card_row_md8 = $('<div class="col-md-8"></div>');
                var card_row_md8_row1 = $('<div class="row"></div>');
                var card_row_md8_row1_col8 = $('<div class="col-md-8" style="font-weight:bold;font-size:16px;">'+ hotel.hotelname +'</div>');
                var card_row_md8_row1_col4 = $('<div class="col-md-4">5.7</div>');
                card_row_md8_row1.append([card_row_md8_row1_col8,card_row_md8_row1_col4]);

                var card_row_md8_row2 = $('<div class="row"></div>');
                var card_row_md8_row2_col12 = $('<div class="col-md-12">'+ hotel.hoteladdress +'</div>');
                card_row_md8_row2.append(card_row_md8_row2_col12);

                var card_row_md8_row3 = $('<div class="row"></div>');
                var card_row_md8_row3_col12 = $('<div class="col-md-12"></div>');
                    for(i=0;i<hotel.hotelstar;i++){
                        card_row_md8_row3_col12.append("★");
                    }
                card_row_md8_row3.append(card_row_md8_row3_col12);
                card_row_md8_row3.append($('<br><br>'));

                var card_row_md8_row4 = $('<div class="row"></div>');
                var card_row_md8_row4_col8 = $('<div class="col-md-8">服務種類</div>');
                var card_row_md8_row4_col4 = $('<div class="col-md-4">價格：NT$ '+hotel.lowestPrice+'</div>');
                card_row_md8_row4.append([card_row_md8_row4_col8, card_row_md8_row4_col4]);
                
                card_row_md8.append([card_row_md8_row1, card_row_md8_row2, card_row_md8_row3, card_row_md8_row4]);
                card_row.append([card_row_md4, card_row_md8]);
                card.append(card_row);
                col.append(card);
                row.append(col);
                a.append(row);
                a.append($('<p></p>'));

                docFrag.append(a);
            	
            });

			$('#displayHotels').html(docFrag);			
			
			console.log(responce);			
			console.log(nowPage);
			
			//設定上一頁按鈕
			if(nowPage != 0){
// 				$('#prePage').attr('hidden',false);
				$('#prePage').show();
				
			}else{
// 				$('#prePage').attr('hidden',true);
				$('#prePage').hide();
			}
			
			//設定下一頁
			if(nowPage == Math.floor(responce.counts/5)){
				$('#nextPage').hide();
				
			}else{

				$('#nextPage').show();
			}
			var temp = nowPage;
			temp += 1;
			$('#idx').text("第"+temp+"頁/ 共3頁");
			
		});	  
  }
  
  </script>
</body>

</html>
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
    <title>基本資料輸入</title>
</head>

<body>
    



    <!-- 以下為訂票功能 -->

    <div>
		<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	</div>
	<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/images/bg_1.jpg');"
	 data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md probootstrap-animate">
					<form action="/startrip/HotelsSearchResult" class="probootstrap-form" style="border-radius:30px;">
						<div class="form-group">
							<div class="row">
								<!-- place -->
								<div class="col-md-4">
									<div class="form-group inputState">
										<label for="id_label_location">
											<input type="text" id="id_label_location" name="searchSrting" class="form-control" placeholder="地點或飯店名稱">
<!-- 											
										</label>
										
									</div>
								</div>
								<!-- place -->
								<!-- arrival -->
								
								<!-- arrival -->
								<!-- departure -->
								
								<!-- departure -->
								<!-- people -->
								
								<!-- people -->
								<!-- summit -->
								<div class="col-md">
									<div class="form-group">
										<div class="col-md">
											<input type="submit" value="送出" class="btn btn-primary btn-block">
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
		</div>

	</section>
    <!-- 以上為訂票功能版面 -->

    


    <!-- 輪播牆 -->

    <!-- 輪播牆 -->


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
                //				areas[i].addEventListener("click", Click);
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

    <!-- 以下為地圖標註顯示 -->
   

    </section>
    <!-- 以上為地區顯示車站 -->



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
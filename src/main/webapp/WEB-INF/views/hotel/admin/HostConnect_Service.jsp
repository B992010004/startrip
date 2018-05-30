<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HostConnect Service</title>


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
  <link rel="shortcut icon" type="image/x-icon" href="/startrip/assets/images/rt/favicon.ico" />

  <style>
    #section-home {
      padding-top: 45px;
      padding-bottom: 45px;
    }

    label {
      width: 150px;
    }

    .nav-link {
      padding-bottom: 8px;
    }

    a,a:visited,
    a:active {
      color: #afafaf;
    }

    .subnav .active {
      color: rgb(23, 156, 0);
    }

    a:hover {
      color: rgb(23, 156, 0);
    }

    .roomnumber {
      width: 112px;
    }
      button{
    cursor: pointer; 
    }
  </style>


</head>

<body>


   
<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
		
  <!-- END nav -->
  <section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/startrip/assets/images/bg_1.jpg');"
    data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
  </section>
  <!-- END section -->


  <div class="container">
    <div class="row">
    
		<%@ include file="/WEB-INF/views/hotel/admin/HotelAdminNav.jsp" %>
      
      <div class="col-md-10">
        <form action="/startrip/admin/HostConnect_Rooms" method="POST">
          <br>
          <div class="row">
            <div class="col-md">
              <h4>設定所有房型共同的服務與設施
              </h4>
            </div>
          </div>
          <br>
          <div class="row">
            <div class="col-md-3">
              <h5>退款規定：</h5>
              <div class="form-row ml-4">
                <div class="form-group">
                  <select  class="form-control" name="refund" hotelrule="${hotel.refundid}">
                    <option value="1">嚴格 - 不可退款</option>
                    <option value="2">寬鬆 - 入住 3 日前可退款</option>
                    <option selected value="3">基本 - 入住 7 日前可退款</option>
                    <option value="4">無限制</option>
                  </select>
                </div>
              </div>
              <h5>可預定時間：</h5>
              <div class="form-row ml-4">
                <div class="form-group">
                  <select class="form-control" name="advanceday" hotelrule="${hotel.advancedayid}">
                    <option value="1">一個月內</option>
                    <option value="2">三個月內</option>
                    <option value="3">六個月內</option>
                    <option value="4">一年內</option>
                    <option selected value="5">無限制</option>
                  </select>
                </div>
              </div>
             
            </div>
            <div class="col-md-9">
              <div class="row">
                <div class="col-md">
                  <div class="row">
                    <div class="col-md">
                      <h5 class="ml-2">服務：</h5>
                      
                     <c:forEach var="service" items="${servicename}" varStatus="status">
                     <c:if test="${status.count%4 == 1}">
                       <div class="form-row ml-4">
                       <div class="form-group">
                       <div class="col-md">
                     </c:if>
                     		
                             <label for="service${service.serviceid}">
                             <input type="checkbox" 
                             <c:forEach var="checked" items="${servicelist}">
                             <c:if test="${checked eq service.serviceid}">checked</c:if>
                             </c:forEach>
							 id="service${service.serviceid}" name="service" 
							 value="${service.serviceid}">${service.servicename}</label>
                             
								
                     <c:if test="${status.count%4 == 0}">
                      </div>
                      </div>
                      </div>
                     </c:if>
                     <c:if test="${status.last && status.count%4 != 0}">
                      </div>
                      </div>
                      </div>
                     </c:if>
                     </c:forEach> 

                    </div>
                  </div>
                  <hr>
                  <h5 class="ml-2">設施：</h5>
                 <div hidden id="facilitylist">

                 </div>
                 <c:forEach var="facility" items="${facilityname}" varStatus="status">
                     <c:if test="${status.count%4 == 1}">
                       <div class="form-row ml-4">
                       <div class="form-group">
                       <div class="col-md">
                     </c:if>
                     
                             <label for="facility${facility.facilityid}">
                             <input type="checkbox"
                             <c:forEach var="checked" items="${facilitylist}">
                             <c:if test="${checked eq facility.facilityid}">checked</c:if>
                             </c:forEach>
							 id="facility${facility.facilityid}" name="facility"
   	  						 value="${facility.facilityid}">${facility.facilityname}</label>

                     <c:if test="${status.count%4 == 0}">
                      </div>
                      </div>
                      </div>
                     </c:if>
                     <c:if test="${status.last && status.count%4 != 0}">
                      </div>
                      </div>
                      </div>
                     </c:if>
                     </c:forEach> 
            
                  
                </div>
              </div>
            </div>
          </div>
          <hr>
          <div class="row">
            <div class="col-md-3">
              <a href="HostManage">儲存並離開</a>
            </div>
            <div class="col-md-2">
             <a href="/startrip/admin/HostConnect_Info" class="btn btn-outline-secondary">上一步</a>
            </div>
            <div class="col-md-2">
              <button type="submit" class="btn btn-outline-primary">下一步</button>
            </div>
          </div>
        </form>
      </div>
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
	$("#adminnav").children().eq(2).attr("class","nav-link active")
	
	
	var refundid = $("select[name='refund']").attr("hotelrule")
	var refund = $("select[name='refund'] option[value="+refundid+"]")
	if(refundid != refund){
		var refundselected = $("select[name='refund'] option:selected").attr("selected",false)
		refund.attr("selected",true)
	}
	
	var advancedayid = $("select[name='advanceday']").attr("hotelrule")
	var advanceday = $("select[name='advanceday'] option[value="+advancedayid+"]")
	if(advancedayid != advanceday){
		var refundselected = $("select[name='advanceday'] option:selected").attr("selected",false)
		advanceday.attr("selected",true)
	}
	
	
	</script>
</body>

</html>
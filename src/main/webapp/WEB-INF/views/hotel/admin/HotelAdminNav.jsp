<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

      <div class="col-md-2">
        <nav id="adminnav" class="nav flex-column subnav">
          <a class="nav-link" href="/startrip/admin/HostConnect_Hotel">基本資訊</a>
          <a class="nav-link" <c:if test='${hotelbean.hotelstate >= 1}'>href="/startrip/admin/HostConnect_Info"</c:if>>住宿簡介</a>
          <a class="nav-link" <c:if test='${hotelbean.hotelstate >= 2}'>href="/startrip/admin/HostConnect_Service"</c:if>>服務與設施</a>
          <a class="nav-link" <c:if test='${hotelbean.hotelstate >= 3}'>href="/startrip/admin/HostConnect_Rooms"</c:if>>設定房型</a>
          <a class="nav-link" <c:if test='${hotelbean.hotelstate >= 4}'>href="/startrip/admin/HostConnect_Bookingday"</c:if>>設定可訂房期間</a>
          <a class="nav-link" <c:if test='${hotelbean.hotelstate >= 5}'>href="/startrip/admin/HostConnect_Image"</c:if>>照片</a>
          <a class="nav-link" <c:if test='${hotelbean.hotelstate >= 6}'>href="/startrip/admin/HostConnect_Onsale"</c:if>>上線販售</a>
        </nav>
      </div>
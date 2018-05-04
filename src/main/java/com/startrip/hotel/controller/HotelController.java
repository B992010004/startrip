package com.startrip.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelController {

	// 以下非會員也可瀏覽
	@RequestMapping("/Hotels")
	public String hotels() {
		return "hotel/Hotels";
	}

	@RequestMapping("/HotelsSearchResult")
	public String hotelsSearchResult() {
		return "hotel/HotelsSearchResult";
	}

	@RequestMapping("/Rooms")
	public String rooms() {
		return "hotel/Rooms";
	}

	@RequestMapping("/HotelCheckout")
	public String hotelCheckout() {
		return "hotel/HotelCheckout";
	}

	@RequestMapping("/Payment_Creditcard")
	public String paymentCreditcard() {
		return "hotel/Payment_Creditcard";
	}

	@RequestMapping("/Payment_Allpay")
	public String paymentAllpay() {
		return "hotel/Payment_Allpay";
	}

	@RequestMapping("/PayEnd")
	public String payEnd() {
		return "hotel/PayEnd";
	}
	// 以上非會員也可瀏覽

	// 以下功能會員專用
	@RequestMapping("/admin/HostManage")
	public String hostManage() {
		return "hotel/admin/HostManage";
	}
	@RequestMapping("/admin/HostConnect_Orders")
	public String hostConnectOrders() {
		return "hotel/admin/HostConnect_Orders";
	}

	@RequestMapping("/admin/HostConnect_Hotel")
	public String hostConnectHotel() {
		return "hotel/admin/HostConnect_Hotel";
	}

	@RequestMapping("/admin/HostConnect_Info")
	public String hostConnectInfo() {
		return "hotel/admin/HostConnect_Info";
	}

	@RequestMapping("/admin/HostConnect_Service")
	public String hostConnectService() {
		return "hotel/admin/HostConnect_Service";
	}

	@RequestMapping("/admin/HostConnect_Rooms")
	public String hostConnectRooms() {
		return "hotel/admin/HostConnect_Rooms";
	}

	@RequestMapping("/admin/HostConnect_Roomset")
	public String hostConnectRoomset() {
		return "hotel/admin/HostConnect_Roomset";
	}

	@RequestMapping("/admin/HostConnect_Bookingday")
	public String hostConnectBookingday() {
		return "hotel/admin/HostConnect_Bookingday";
	}

	@RequestMapping("/admin/HostConnect_Bookingdetail")
	public String hostConnectBookingdetail() {
		return "hotel/admin/HostConnect_Bookingdetail";
	}

	@RequestMapping("/admin/HostConnect_Image")
	public String hostConnectImage() {
		return "hotel/admin/HostConnect_Image";
	}

	@RequestMapping("/admin/HostConnect_Onsale")
	public String hostConnectOnsale() {
		return "hotel/admin/HostConnect_Onsale";
	}
	// 以上功能會員專用

}

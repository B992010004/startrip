package com.startrip.hotel.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.startrip.hotel.model.persistent.HotelsBean;
import com.startrip.hotel.model.repository.HotelsDAO;
import com.startrip.hotel.model.service.HotelAdminService;
import com.startrip.hotel.model.service.HotelService;

@Controller
public class HotelController {

	@Autowired
	HotelAdminService hotelAdminService;
	@Autowired
	HotelService hotelService;

	@Autowired
	ServletContext context;

	// 以下非會員也可瀏覽
	@RequestMapping(value = "/Hotels")
	public String hotels(Model model) {
		return "hotel/Hotels";
	}

	@RequestMapping(value = "/HotelsSearchResult")
	public String hotelsSearchResult(Model model, String location, java.sql.Date checkin, java.sql.Date checkout,
			Integer People) {
		return "hotel/HotelsSearchResult";
	}

	@RequestMapping(value = "/Rooms")
	public String rooms(Model model) {
		return "hotel/Rooms";
	}

	@RequestMapping(value = "/HotelCheckout")
	public String hotelCheckout(Model model) {
		return "hotel/HotelCheckout";
	}

	@RequestMapping(value = "/Payment_Creditcard")
	public String paymentCreditcard(Model model) {
		return "hotel/Payment_Creditcard";
	}

	@RequestMapping(value = "/Payment_Allpay")
	public String paymentAllpay(Model model) {
		return "hotel/Payment_Allpay";
	}

	@RequestMapping(value = "/PayEnd")
	public String payEnd(Model model) {
		return "hotel/PayEnd";
	}
	// 以上非會員也可瀏覽

	// 以下功能會員專用
	@RequestMapping(value = "/admin/HostManage")
	public String hostManage(Model model, HttpSession session) {

		return "hotel/admin/HostManage";
	}

	@RequestMapping(value = "/admin/HostConnect_Orders")
	public String hostConnectOrders(Model model) {
		return "hotel/admin/HostConnect_Orders";
	}

	@RequestMapping(value = "/admin/HostConnect_AddHotel")
	public String hostConnectCheckHotel(Model model, HttpServletRequest request, HttpSession session) {
		Integer temp = (Integer) session.getAttribute("pk");
		if (temp != null) {
			session.removeAttribute("pk");
			System.out.println("新增前刪除已存在的pk");
		}
		System.out.println("add hotel");
		return "redirect:/admin/HostConnect_Hotel";
	}

	@RequestMapping(value = "/admin/HostConnect_Hotel")
	public String hostConnectAddHotel(Model model, HttpServletRequest request, HttpSession session) {
		String pk = request.getParameter("pk");
		if (pk != null) {
			System.out.println("pk = " + pk);
			session.setAttribute("pk", Integer.valueOf(pk));
		}

		return "hotel/admin/HostConnect_Hotel";
	}

	@RequestMapping(value = "/admin/HostConnect_Info", method = RequestMethod.POST)
	public String hostConnectInfoNextPage(Model model, @RequestParam String name, @RequestParam String phone,
			@RequestParam String address, @RequestParam Integer star, HttpSession session) {

		System.out.println("name=" + name + ", phone=" + phone + ", address=" + address + ", star=" + star);

		Integer pk = (Integer) session.getAttribute("pk");

		if (pk != null) {
			System.out.println("變更飯店基本資料");
			hotelAdminService.updateHotel(pk, name, phone, address, star);
		} else {
			HotelsBean bean = new HotelsBean();
			bean.setHotelname(name);
			bean.setHotelphone(phone);
			bean.setHoteladdress(address);
			bean.setHotelstar(star);
			bean.setHotelstate(false);
			System.out.println("新增飯店基本資料");
			session.setAttribute("pk", hotelAdminService.insertHotel(bean));

		}

		return "redirect:/admin/HostConnect_Info";
	}

	@RequestMapping(value = "/admin/HostConnect_Info", method = RequestMethod.GET)
	public String hostConnectInfo(Model model) {

		return "hotel/admin/HostConnect_Info";
	}

	@RequestMapping(value = "/admin/HostConnect_Service", method = RequestMethod.POST)
	public String hostConnectServiceNextPage(Model model, HttpSession session, @RequestParam String info,
			@RequestParam String note) {
		Integer pk = (Integer) session.getAttribute("pk");
		StringBuilder sb = new StringBuilder();
		for (String s : note.split("\\n")) {
			System.out.println(s);
			sb.append(s);
			sb.append("-----");
		}
		note = sb.toString();

		if (pk != null) {
			HotelsBean bean = new HotelsBean();

			hotelAdminService.updateHotel(pk, info, note);
		}
		return "redirect:/admin/HostConnect_Service";
	}

	@RequestMapping(value = "/admin/HostConnect_Service", method = RequestMethod.GET)
	public String hostConnectService(Model model, HttpServletRequest request) {

		request.setAttribute("facilityname", hotelAdminService.selectFacilityname());
		request.setAttribute("servicename", hotelAdminService.selectServicename());

		return "hotel/admin/HostConnect_Service";
	}

	@RequestMapping(value = "/admin/HostConnect_Rooms", method = RequestMethod.POST)
	public String hostConnectRoomsNextPage(Model model, HttpServletRequest request, @RequestParam Integer refund,
			@RequestParam Integer advanceday) {
		String[] service = request.getParameterValues("service");
		String[] facility = request.getParameterValues("facility");
		System.out.println(service);
		System.out.println(facility);
		

		return "redirect:/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/HostConnect_Rooms", method = RequestMethod.GET)
	public String hostConnectRooms(Model model) {
		return "hotel/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/HostConnect_Roomset")
	public String hostConnectRoomset(Model model) {
		return "hotel/admin/HostConnect_Roomset";
	}

	@RequestMapping(value = "/admin/HostConnect_Bookingday")
	public String hostConnectBookingday(Model model) {
		return "hotel/admin/HostConnect_Bookingday";
	}

	@RequestMapping(value = "/admin/HostConnect_Bookingdetail")
	public String hostConnectBookingdetail(Model model) {
		return "hotel/admin/HostConnect_Bookingdetail";
	}

	@RequestMapping(value = "/admin/HostConnect_Image")
	public String hostConnectImage(Model model) {
		return "hotel/admin/HostConnect_Image";
	}

	@RequestMapping(value = "/admin/HostConnect_Onsale")
	public String hostConnectOnsale(Model model) {
		return "hotel/admin/HostConnect_Onsale";
	}
	// 以上功能會員專用

}

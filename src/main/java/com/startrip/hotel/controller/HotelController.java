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

import com.startrip.hotel.model.persistent.FacilitylistBean;
import com.startrip.hotel.model.persistent.HotelsBean;
import com.startrip.hotel.model.persistent.RoomtypeBean;
import com.startrip.hotel.model.persistent.ServicelistBean;
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
		Integer temp = (Integer) session.getAttribute("hotelid");
		if (temp != null) {
			session.removeAttribute("hotelid");
			System.out.println("新增前刪除已存在的hotelid");
		}
		System.out.println("add hotel");
		return "redirect:/admin/HostConnect_Hotel";
	}

	@RequestMapping(value = "/admin/HostConnect_Hotel")
	public String hostConnectHotel(Model model, HttpServletRequest request, HttpSession session) {
		
		String hotelidtemp = request.getParameter("hotelid");
		if (hotelidtemp != null) {
			Integer hotelid = Integer.valueOf(hotelidtemp);
			System.out.println("hotelid = " + hotelid);
			request.setAttribute("hotelbean", hotelAdminService.selectHotelByPk(hotelid));
			session.setAttribute("hotelid", hotelid);
		}else {
			Integer hotelid = (Integer) session.getAttribute("hotelid");
			if(hotelid != null) {
				request.setAttribute("hotelbean", hotelAdminService.selectHotelByPk(hotelid));
				
			}
		
		}

		return "hotel/admin/HostConnect_Hotel";
	}

	@RequestMapping(value = "/admin/HostConnect_Info", method = RequestMethod.POST)
	public String hostConnectInfoNextPage(Model model, @RequestParam String name, @RequestParam String phone,
			@RequestParam String address, @RequestParam Integer star, HttpSession session) {

		System.out.println("name=" + name + ", phone=" + phone + ", address=" + address + ", star=" + star);

		Integer hotelid = (Integer) session.getAttribute("hotelid");

		if (hotelid != null) {
			System.out.println("變更飯店基本資料");
			hotelAdminService.updateHotel(hotelid, name, phone, address, star);
		} else {
			HotelsBean bean = new HotelsBean();
			bean.setHotelname(name);
			bean.setHotelphone(phone);
			bean.setHoteladdress(address);
			bean.setHotelstar(star);
			bean.setHotelstate(1);
			System.out.println("新增飯店基本資料");
			session.setAttribute("hotelid", hotelAdminService.insertHotel(bean));

		}

		return "redirect:/admin/HostConnect_Info";
	}

	@RequestMapping(value = "/admin/HostConnect_Info", method = RequestMethod.GET)
	public String hostConnectInfo(Model model,HttpSession session,HttpServletRequest request) {
		 Integer hotelid = (Integer) session.getAttribute("hotelid");
		 HotelsBean bean = hotelAdminService.selectHotelByPk(hotelid);
		 request.setAttribute("hotelbean",bean);
		 
		return "hotel/admin/HostConnect_Info";
	}

	@RequestMapping(value = "/admin/HostConnect_Service", method = RequestMethod.POST)
	public String hostConnectServiceNextPage(Model model, HttpSession session, @RequestParam String info,
			@RequestParam String note) {
		Integer hotelid = (Integer) session.getAttribute("hotelid");
		StringBuilder sb = new StringBuilder();
		for (String s : note.split("\\n")) {
			System.out.println(s);
			sb.append(s);
			sb.append("-----");
		}
		note = sb.toString();

		if (hotelid != null) {
			hotelAdminService.updateHotel(hotelid, info, note);
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
	public String hostConnectRoomsNextPage(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam Integer refund, @RequestParam Integer advanceday) {

		Integer hotelid = (Integer) session.getAttribute("hotelid");

		hotelAdminService.updateHotel(hotelid, refund, advanceday);

		String[] service = request.getParameterValues("service");
		hotelAdminService.deleteServicelistByHotelid(hotelid);
		if (service != null) {
			ServicelistBean temp1 = new ServicelistBean();
			for (String s : service) {
				temp1.setHotelid(hotelid);
				System.out.println(s);
				Integer serviceid = Integer.valueOf(s);
				temp1.setServiceid(serviceid);
				hotelAdminService.insertServicelist(temp1);
			}

		}

		String[] facility = request.getParameterValues("facility");
		hotelAdminService.deleteFacilitylistByHotelid(hotelid);
		if (facility != null) {
			FacilitylistBean temp2 = new FacilitylistBean();
			for (String s : facility) {
				temp2.setHotelid(hotelid);
				System.out.println(s);
				Integer facilityid = Integer.valueOf(s);
				temp2.setFacilityid(facilityid);
				hotelAdminService.insertFacilitylist(temp2);
			}

		}

		return "redirect:/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/HostConnect_Rooms", method = RequestMethod.GET)
	public String hostConnectRooms(Model model) {
		return "hotel/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/AddRoom", method = RequestMethod.POST)
	public String hostConnectRoomsAddRoom(Model model, HttpSession session, @RequestParam String name,
			@RequestParam Integer people, @RequestParam Integer rooms) {
		Integer hotelid = (Integer) session.getAttribute("hotelid");
		System.out.println(hotelid);
		RoomtypeBean bean = new RoomtypeBean();
		bean.setHotelid(hotelid);
		bean.setRoomname(name);
		bean.setNumberofpeople(people);
		bean.setNumberofrooms(rooms);
		bean.setRoomstate(false);
		hotelAdminService.insertRoomtype(bean);

		return "redirect:/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/DeleteRoom", method = RequestMethod.POST)
	public String hostConnectRoomsDeleteRoom(Model model, HttpSession session, @RequestParam Integer roomid) {

		RoomtypeBean bean = new RoomtypeBean();
		bean.setRoomid(roomid);
		hotelAdminService.deleteRoomtype(bean);
		return "redirect:/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/HostConnect_Roomset")
	public String hostConnectRoomset(Model model, @RequestParam Integer roomid) {
		System.out.println("roomid = " + roomid);
		model.addAttribute("roomid", roomid);
		return "hotel/admin/HostConnect_Roomset";
	}

	@RequestMapping(value = "/admin/Roomsetting", method = RequestMethod.POST)
	public String hostConnectRoomsetSave(Model model, HttpServletRequest request, @RequestParam Integer roomid,
			@RequestParam Integer price, @RequestParam String roomnote) {
		System.out.println("setting roomid = " + roomid);
		String checkintemp = request.getParameter("checkin").replaceAll("/", "-");
		String checkouttemp = request.getParameter("checkout").replaceAll("/", "-");
		java.sql.Date checkin = java.sql.Date.valueOf(checkintemp);
		java.sql.Date checkout = java.sql.Date.valueOf(checkouttemp);
		System.out.println(checkin);
		System.out.println(checkout);
		hotelAdminService.updateRoomtype(roomid, checkin, checkout, price, roomnote);

		return "redirect:/admin/HostConnect_Rooms";
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

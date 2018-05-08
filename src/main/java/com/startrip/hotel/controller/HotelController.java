package com.startrip.hotel.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.startrip.hotel.model.service.HotelAdminService;
import com.startrip.hotel.model.service.HotelService;

@Controller
public class HotelController {
	

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
}

package com.startrip.hotel.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.startrip.hotel.model.SearchHotel;
import com.startrip.hotel.model.service.HotelService;
import com.startrip.reviews.model.ReviewBean;
import com.startrip.reviews.service.ReviewService;

@Controller
public class HotelController {

	@Autowired
	HotelService hotelService;

	@Autowired
	ServletContext context;

	// 評論內容
	@Autowired
	ReviewService reviewService;

	// 以下非會員也可瀏覽
	@RequestMapping(value = "/Hotels")
	public String hotels(Model model) {
		return "hotel/Hotels";
	}

	@RequestMapping(value = "/HotelsSearchResult")
	public String hotelsSearchResult(Model model, SearchHotel searchHotel) {
		// public String hotelsSearchResult(Model model, String location, java.sql.Date
		// checkin, java.sql.Date checkout,
		// Integer People) {
		System.out.println(searchHotel);
		return "hotel/HotelsSearchResult";
	}

	@RequestMapping(value = "/Rooms/{hotelId}")
	public String rooms(@PathVariable("hotelId") Integer hotelId, Model model) {

		// review
		// 評等
		List<Long> ranks = reviewService.getRankByRestaurantId(hotelId);
		Integer rankSize = 0;
		for (Long rank : ranks) {
			Integer tmp = rank.intValue();
			rankSize += tmp;
		}
		// 避免0/0
		if (rankSize == 0) {
			rankSize = -1;
		}
		model.addAttribute("rankSize", rankSize);
		model.addAttribute("ranks", ranks);
		// 評論bean
		List<ReviewBean> reviews = reviewService.getReviewsByRestaurantId(hotelId);
		model.addAttribute("reviews", reviews);

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

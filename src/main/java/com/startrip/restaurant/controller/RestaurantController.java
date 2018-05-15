package com.startrip.restaurant.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.restaurant.model.RtBookingBean;
import com.startrip.restaurant.model.RtDetailsBean;
import com.startrip.restaurant.service.RtBookingService;
import com.startrip.restaurant.service.RtDetailsService;
import com.startrip.reviews.model.ReviewBean;
import com.startrip.reviews.service.ReviewService;

@Controller
public class RestaurantController {

	@Autowired
	RtDetailsService rtDetailsService;

	@Autowired
	RtBookingService rtBookingService;

	@Autowired
	ReviewService reviewService;

	// 前台餐廳首頁---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/restaurantHome")
	public String getAllListRtDetails(Model model) {
		List<RtDetailsBean> list = rtDetailsService.getAll();
		List<RtDetailsBean> list2 = rtDetailsService.getAll();
		model.addAttribute("RtDetails", list);
		model.addAttribute("HIGH", list2);
		return "restaurant/restaurantHome";
	}

	// /前台餐廳首頁/--------------------------------------------------------------------------------------------

	// 前台新增訂單---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String insertRtBooking(Model model) {
		RtBookingBean rbb = new RtBookingBean();
		model.addAttribute("RtBookingBean", rbb);
		return "restaurant/reservation";
	}

	@RequestMapping(value = "/insertRtBooking", method = RequestMethod.POST)
	public String insertRtBooking(@ModelAttribute("RtBookingBean") RtBookingBean rbb, BindingResult result,
			HttpServletRequest request) {
		rtBookingService.insertRtBooking(rbb);
		return "redirect:/Individualdetails";
	}

	// /前台新增訂單/---------------------------------------------------------------------------------------------

	// 展示餐廳資訊
	@RequestMapping(value = "/restaurant/{restaurantId}")
	public String rooms(@PathVariable("restaurantId") Integer restaurantId, Model model) {

		// review
		// 評等
		List<Long> ranks = reviewService.getRankByRestaurantId(restaurantId);
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
		List<ReviewBean> reviews = reviewService.getReviewsByRestaurantId(restaurantId);
		model.addAttribute("reviews", reviews);

		return "/restaurant/Individualdetails";
	}

	// ---------測試------------------------測試------------------測試----------------測試-------------

	// 新增訂單頁面 樣板

	@RequestMapping(value = "/RtAllList")
	public String allList(Model model) {
		return "/restaurant/RtAllList";
	}

	// ---------測試------------------------測試------------------測試----------------測試-------------

}

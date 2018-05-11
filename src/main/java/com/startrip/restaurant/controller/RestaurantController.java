package com.startrip.restaurant.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.startrip.restaurant.model.RtDetailsBean;
import com.startrip.restaurant.service.RtBookingService;
import com.startrip.restaurant.service.RtDetailsService;

@Controller
public class RestaurantController {

	@Autowired
	RtDetailsService rtDetailsService;

	@Autowired
	RtBookingService rtBookingService;

	// 只能瀏覽全部

	@RequestMapping(value = "/restaurantHome")
	public String getAllListRtDetails(Model model) {
		List<RtDetailsBean> list = rtDetailsService.getAll();
		List<RtDetailsBean> list2 = rtDetailsService.getAll();
		model.addAttribute("RtDetails", list);
		model.addAttribute("HIGH", list2);
		return "restaurant/restaurantHome";
	}

	// ---------測試------------------------測試------------------測試----------------測試-------------

	// 只能瀏覽個別

	@RequestMapping(value = "/Individualdetails")
	public String getAll(Model model) {
		return "restaurant/Individualdetails";
	}

	// 新增訂單頁面 樣板

	@RequestMapping(value = "/reservation")
	public String insertdbooking(Model model) {
		return "/restaurant/reservation";
	}

	// 新增訂單頁面 樣板

	@RequestMapping(value = "/RtAllList")
	public String allList(Model model) {
		return "/restaurant/RtAllList";
	}

	// ---------測試------------------------測試------------------測試----------------測試-------------

}

package com.startrip.restaurant.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.startrip.restaurant.model.RtDetailsBean;
import com.startrip.restaurant.service.RtDetailsService;

@Controller
public class RestaurantController {

	
	//只能瀏覽
	
	@Autowired
	RtDetailsService rtDetailsService;
	
	@RequestMapping(value = "/restaurantHome")
	public String getAllListRtDetails(Model model) {
		List<RtDetailsBean> list = rtDetailsService.getAll();
		List<RtDetailsBean> list2 = rtDetailsService.getAll();
		model.addAttribute("RtDetails",list);
		model.addAttribute("HIGH",list2);
		return "restaurant/restaurantHome";
	}
	
	
	//只能瀏覽，留言，訂位
	
	
}

package com.startrip.restaurant.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.restaurant.model.RtDetailsBean;
import com.startrip.restaurant.service.RtDetailsService;

@Controller
public class RestaurantAdminController {

	@Autowired
	RtDetailsService rtDetailsService;
	
	

	// 後台新增餐廳---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/insertupdate", method = RequestMethod.GET)
	public String insertRtDetails(Model model) {
		RtDetailsBean rdb = new RtDetailsBean();
		model.addAttribute("RtDetailsBean", rdb);
		return "restaurant/insertupdate";
	}

	@RequestMapping(value = "/insertRestaurant", method = RequestMethod.POST)
	public String insertRtDetails(@ModelAttribute("RtDetailsBean") RtDetailsBean rdb, BindingResult result,
			HttpServletRequest request) {
		rtDetailsService.insertRtDetails(rdb);
		return "redirect:/Individualdetailsmodify";
	}

	// /後台新增餐廳/---------------------------------------------------------------------------------------------

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// ---------測試------------------------測試------------------測試----------------測試-------------

	// 後台個別修刪

	@RequestMapping(value = "/Individualdetailsmodify")
	public String modifyRt(Model model) {
		return "restaurant/Individualdetailsmodify";
	}

	// ---------測試------------------------測試------------------測試----------------測試-------------

}

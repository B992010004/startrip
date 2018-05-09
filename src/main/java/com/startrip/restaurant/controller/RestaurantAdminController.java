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
	
<<<<<<< HEAD
	@RequestMapping(value = "/insertupdate1")
	public String selectRtDetails(Model model) {
		RtDetailsBean rdb = new RtDetailsBean();
		model.addAttribute("RtDetailsBean", rdb);
		return "restaurant/insertupdate";
	}
=======
	//可以新刪修
>>>>>>> a887b2d2094dcd69a2fbde6531f6176fd76973c1
	
	//新增
	
	@RequestMapping(value = "/insertupdate", method = RequestMethod.GET)
	public String insertRtDetails(Model model) {
		RtDetailsBean rdb = new RtDetailsBean();
<<<<<<< HEAD
		model.addAttribute("RtDetailsBean", rdb);
		return "restaurant/insertupdate";
	}
	
	
	@RequestMapping(value = "/insertupdate",method = RequestMethod.POST)
	public String InsertRtDetails(@ModelAttribute("RtDetailsBean") RtDetailsBean rdb) {
=======
		model.addAttribute("RtDetailsBean",rdb);
>>>>>>> a887b2d2094dcd69a2fbde6531f6176fd76973c1
		return "restaurant/insertupdate";
	}
	
	@RequestMapping(value = "/insertRestaurant", method = RequestMethod.POST)
	public String insertRtDetails(@ModelAttribute("RtDetailsBean")RtDetailsBean rdb,BindingResult result,HttpServletRequest request) {
		rtDetailsService.insertRtDetails(rdb);
		return "redirect:/insertupdate";
	}
	


}



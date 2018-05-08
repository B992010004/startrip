package com.startrip.restaurant.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.restaurant.model.RtDetailsBean;

@Controller
public class RestaurantAdminController {

	
	//可以新刪修
	
	
	@RequestMapping(value = "/insertupdate")
	public String selectRtDetails(Model model) {
		RtDetailsBean rdb = new RtDetailsBean();
		model.addAttribute("RtDetailsBean", rdb);
		return "restaurant/insertupdate";
	}
	
	
	@RequestMapping(value = "/insertupdate",method = RequestMethod.GET)
	public String InsertRtDetails(Model model) {
		RtDetailsBean rdb = new RtDetailsBean();
		model.addAttribute("RtDetailsBean", rdb);
		return "restaurant/insertupdate";
	}
	
	
	@RequestMapping(value = "/insertupdate",method = RequestMethod.POST)
	public String InsertRtDetails(@ModelAttribute("RtDetailsBean") RtDetailsBean rdb) {
		return "restaurant/insertupdate";
	}
	
	
	@RequestMapping(value = "/insertupdate")
	public String deleteRtDetails(Model model) {
		RtDetailsBean rdb = new RtDetailsBean();
		model.addAttribute("RtDetailsBean", rdb);
		return "restaurant/insertupdate";
	}
	
}



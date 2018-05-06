package com.startrip.travelPlan.travelAll.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.travelPlan.travelAll.model.TravelAllBean;
import com.startrip.travelPlan.travelAll.service.TravelAllService;

@Controller
public class TravelPlanController {
	
	@Autowired
	TravelAllService travelservice;
	
	//新增行程-------------------------------------------
	@RequestMapping(value="Travel/addPlan",method=RequestMethod.GET)
	public String travelNewAdd(Model model) {
		TravelAllBean bean = new TravelAllBean();
		model.addAttribute(bean);
		return "TravelProject/TravelPlans/add";
	}
	
	@RequestMapping(value="travel/addPlan",method=RequestMethod.POST)
	public String travelAdd(@ModelAttribute TravelAllBean bean) {
		travelservice.insert(bean);
		return "redirect:/travel/all";
	}
	//查詢ALL Travel-----------------------------------------
	@RequestMapping(value="travel/all",method=RequestMethod.GET)
	public String travelAll(Model model) {
		List<TravelAllBean> list = travelservice.selectAllTravel();
		model.addAttribute("travels", list);
		return "TravelProject/TravelPlans/travels";
	}
}

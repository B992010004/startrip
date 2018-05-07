package com.startrip.travelPlan.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.travelPlan.model.TravelAllBean;
import com.startrip.travelPlan.service.ITravelAllService;

@Controller
public class TravelPlanController {
	
	@Autowired
	ITravelAllService travelservice;
	
	//新增行程-------------------------------------------
	@RequestMapping(value="Travel/addPlan",method=RequestMethod.GET)
	public String travelNewAdd(Model model) {
		TravelAllBean bean = new TravelAllBean();
		model.addAttribute("TravelAllBean",bean);
		return "TravelProject/TravelPlans/add";
	}
	
	@RequestMapping(value="Travel/addPlan",method=RequestMethod.POST)
	public String travelAdd(@ModelAttribute("TravelALLBean") TravelAllBean bean) {
		System.out.println(bean.toString());
		//天數計算----------------
		int days = 0;
		Date start = bean.getStartDate();
		Date end = bean.getEndDate();
		start.getTime();
		end.getTime();
		days = (int) ((end.getTime()- start.getTime()) / (1000 * 60 * 60 * 24));
		bean.setTravelDays(days);
		//------------------
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

package com.startrip.travelPlan.controller;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.startrip.travelPlan.model.TravelAllBean;
import com.startrip.travelPlan.model.TravelListBean;
import com.startrip.travelPlan.service.ITravelListService;

@Controller
public class ListController {
	
	@Autowired
	ITravelListService listservice;
						
	@RequestMapping(value="Travel/addList",method=RequestMethod.GET)
	public String listNewAdd(Model model) {
		TravelListBean bean = new TravelListBean();
		model.addAttribute("TravelListBean",bean);
		return "TravelProject/TravelList/addList";
	}
	
	@RequestMapping(value="Travel/addList",method=RequestMethod.POST)
	public String travelAdd(@ModelAttribute("TravelListBean") TravelListBean bean) {
		
		
		
		
		listservice.insert(bean);
		return "redirect:/list/All";
	}		   
	
	
	
	
	//getAllList
	@RequestMapping(value="list/All",method=RequestMethod.GET)
	public String getAllList(Model model) {
		List<TravelListBean> list = listservice.selectAllList();
		model.addAttribute("Lists", list);
		return "/TravelProject/TravelList/AllList";
	}
	 
}

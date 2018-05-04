package com.startrip.travelPlan.travelList.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.travelPlan.travelAll.model.TravelAllBean;
import com.startrip.travelPlan.travelList.model.TravelListBean;
import com.startrip.travelPlan.travelList.service.ListService;

@Controller
public class ListController {
	@Autowired
	ListService listservice;

	@RequestMapping(value="Travel/addList",method=RequestMethod.GET)
	public String listNewAdd(Model model) {
		TravelListBean bean = new TravelListBean();
		model.addAttribute(bean);
		return "TravelProject/ravelList/addList";
	}
	
	@RequestMapping(value="travel/addList",method=RequestMethod.POST)
	public String travelAdd(@ModelAttribute TravelListBean bean) {
		listservice.insert(bean);
		return "redirect:list/All";
	}
	
	
	
	
	//getAllList
	@RequestMapping(value="list/All",method=RequestMethod.GET)
	public String getAllList(Model model) {
		List<TravelListBean> list = listservice.selectAllList();
		model.addAttribute("travels", list);
		return "/TravelProject/TravelList/AllList";
	}
	 
}

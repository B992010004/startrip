package com.startrip.travelPlan.travelView.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.travelPlan.travelView.model.TravelViewBean;
import com.startrip.travelPlan.travelView.service.travelViewService;

@Controller
public class viewCotroller {
	
	@Autowired
	travelViewService viewService;
	
	
	@RequestMapping(value="TravelViews/add",method=RequestMethod.GET)
	public String getNewAddviewFrom(Model model) {
		TravelViewBean vb =new TravelViewBean();
		model.addAttribute("TravelViewBean",vb);//對應jsp的modelAtrribute
		
		return "TravelProject/TravelViews/addviews";
		
		
	}
	@RequestMapping(value="TravelViews/add",method=RequestMethod.POST)
	public String addViewFrom(@ModelAttribute("TravelViewBean")TravelViewBean vb) {
			
		System.out.println(vb.toString());
		viewService.insert(vb);
		
		return "redirect:/TravelProject/TravelViews/AllViews";
		
	}
	
	
	
	
	
	
	
	
	@ModelAttribute("orgclassList")
	public List<String> getOrgClass(){
		return viewService.getAllOrgClass();
	}
	
	@RequestMapping(value="TravelViews/all",method=RequestMethod.GET)
	public String AllViews(Model model) {
		List<TravelViewBean>list = viewService.select();
		model.addAttribute("views",list);
		return "TravelProject/TravelViews/AllViews";
	}
	
}

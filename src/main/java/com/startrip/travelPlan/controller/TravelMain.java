package com.startrip.travelPlan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TravelMain {

	@RequestMapping("/TravelMain")
	public String main() {
		return "TravelProject/Main";
	}
	
	@RequestMapping("/TravelMain/test")
	public String test() {
		return "TravelProject/TravelList/listproject";
	}
	
	
	
	
}

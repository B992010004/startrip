package com.startrip.travelPlan.travelMain.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TravelMain {

	@RequestMapping("/TravelMain")
	public String main() {
		return "TravelProject/Main";
	}
	
	@RequestMapping("/TravelViews")
	public String addViews() {
		return "TravelProject/TravelViews/AllViews";
	}
}

package com.startrip.travelPlan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.startrip.member.Service.MemberServiceInterface;

@Controller
@RequestMapping("/TravelMain")
public class TravelMain {
	@Autowired
	MemberServiceInterface memberservice;
	@RequestMapping("/{mail}")
	public String main(@PathVariable("mail")String mail) {
			
		
		return "TravelProject/Main";
	}
	
	
	
	
	
	
}

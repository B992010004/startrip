package com.startrip.travelPlan.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.startrip.member.Service.MemberServiceInterface;

@Controller

public class TravelMain {
	@Autowired
	MemberServiceInterface memberservice;
	
	@RequestMapping("/TravelMain")
	public String main(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("listOb");
		session.removeAttribute("Travel");
			
		
		return "TravelProject/Main";
	}
	
	
	
	
	
	
}

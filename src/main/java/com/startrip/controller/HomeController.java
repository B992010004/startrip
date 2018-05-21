package com.startrip.controller;




import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;





@Controller
public class HomeController {
	
	//servletPath
	@RequestMapping("/")
	public String root() {
		return "index";
	}
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
}


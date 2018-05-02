package com.startrip.member.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.startrip.member.Service.MemberServiceInterface;
import com.startrip.member.memberModle.MemberBean;


public class MemberController {
	@Autowired
	MemberServiceInterface memberService;
	@Autowired
	ServletContext context;
	
	@RequestMapping("/")
	public String list(Model model) {
		List<MemberBean> list = memberService.select();
		model.addAttribute("members", list);
		return "xxx";
	}
	
}

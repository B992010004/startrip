package com.startrip.member.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {
	
	@RequestMapping("insertMember")
	public String InsertMember() {
		return "/member/insertMember";
	}
	
	
}

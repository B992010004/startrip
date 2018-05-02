package com.startrip.member.controller;



import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;

import com.startrip.member.Service.MemberServiceInterface;



public class MemberController {
	@Autowired
	MemberServiceInterface memberService;
	@Autowired
	ServletContext context;
	
	@RequestMapping("member/insertMember")
	public String InsertMember() {
		return "member/insertMember";
	}
	
	
}

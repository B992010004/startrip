package com.web.store.config.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.web.store.config.Service.MemberService;



@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	@Autowired
	ServletContext context;
}

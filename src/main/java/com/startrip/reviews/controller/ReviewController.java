package com.startrip.reviews.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {

	@RequestMapping("UserReviewEdit")
	public String UserReviewEdit() {
		return "UserReviewEdit";
	}
}
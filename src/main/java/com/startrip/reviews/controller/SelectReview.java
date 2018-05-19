package com.startrip.reviews.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.startrip.reviews.model.HotelReview;
import com.startrip.reviews.model.ReviewSelectCriteria;
import com.startrip.reviews.service.HotelReviewService;

@RestController
public class SelectReview {
	
	@Autowired
	HotelReviewService hotelReviewService;
	
	@RequestMapping(value = "/review/selectByCriteria", method = RequestMethod.GET)
	public List<HotelReview> selectByCriteria(Model model, ReviewSelectCriteria reviewSelectCriteria) {
		System.out.println("看這裡selectByCriteria");
		System.out.println(reviewSelectCriteria);
		return hotelReviewService.selectHotelReviewsByCriteria(reviewSelectCriteria);
	}

}

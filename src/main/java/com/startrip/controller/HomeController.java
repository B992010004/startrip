package com.startrip.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.startrip.hotel.model.HotelsBean;
import com.startrip.hotel.service.HotelServiceInterface;

@Controller
public class HomeController {

	@Autowired
	HotelServiceInterface hotelService;

	// servletPath
	@RequestMapping("/")
	public String root() {
		List<HotelsBean> hotelList = new ArrayList<>();
		Set<Integer> randomSet = hotelRandom();
		for (int i = 0; i < randomSet.size(); i++) {

		}
		return "index";
	}

	@RequestMapping("/index")
	public String index() {
		hotelRandom();
		return "index";
	}

	public Set<Integer> hotelRandom() {
		Set<Integer> randomList = new HashSet<>();

		for (; randomList.size() < 4;) {
			int idx = (int) (Math.random() * 7 + 1);
			randomList.add(idx);
		}
		return randomList;
	}

}

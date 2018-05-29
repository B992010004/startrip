package com.startrip.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.startrip.hotel.model.HotelsBean;
import com.startrip.hotel.service.HotelServiceInterface;

@Controller
public class HomeController {

	@Autowired
	HotelServiceInterface hotelService;

	// servletPath
	@RequestMapping("/")
	public String root(Model model) {
		List<HotelsBean> hotelList = new ArrayList<>();
		Set<Integer> randomSet = hotelRandom();
		Iterator<Integer> it = randomSet.iterator();
		while (it.hasNext()) {
			int no = it.next();
			HotelsBean bean = hotelService.selectByPk(no);
			hotelList.add(bean);
		}

		for (HotelsBean bean : hotelList) {
			String[] photoArr = bean.getPhotoString().split(";");
			bean.setPhotoArr(photoArr);
		}
		model.addAttribute("hotelList", hotelList);
		return "index";
	}

	@RequestMapping("/index")
	public String index(Model model) {
		List<HotelsBean> hotelList = new ArrayList<>();
		Set<Integer> randomSet = hotelRandom();
		Iterator<Integer> it = randomSet.iterator();
		while (it.hasNext()) {
			int no = it.next();
			HotelsBean bean = hotelService.selectByPk(no);
			hotelList.add(bean);
		}

		for (HotelsBean bean : hotelList) {
			String[] photoArr = bean.getPhotoString().split(";");
			bean.setPhotoArr(photoArr);
		}
		model.addAttribute("hotelList", hotelList);
		return "index";
	}

	public Set<Integer> hotelRandom() {
		Set<Integer> randomList = new HashSet<>();

		for (; randomList.size() < 8;) {
			int idx = (int) (Math.random() * 13 + 1);
			randomList.add(idx);
		}
		return randomList;
	}

}

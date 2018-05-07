package com.startrip.restaurant.rtController;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.restaurant.rtmodel.RtDetailsBean;

public class RtDetailsController {

	
	@RequestMapping(value = "/restaurantHome", method = RequestMethod.GET)
	public String getAddNewrestaurantHome(Model model) {
		RtDetailsBean rdb = new RtDetailsBean();
		model.addAttribute("RtDetailsBean", rdb);
		return "restaurantHome";
	}
	
	@RequestMapping(value = "/restaurantHome", method = RequestMethod.POST)
	public String processAddNewrestaurantHome(@ModelAttribute("RtDetailsBean") RtDetailsBean rdb) {
		return "restaurantHome";
	}

}

package com.startrip.restaurant.rtController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.restaurant.rtmodel.RtDetailsBean;

@Controller
public class RtDetailsController {

	@RequestMapping(value = "/restaurant/restaurantHome", method = RequestMethod.GET)
	public String getAddNewrestaurantHome(Model model) {
		RtDetailsBean rdm = new RtDetailsBean();
		model.addAttribute("RtDetailsBean", rdm);
		return "restaurant/restaurantHome";
	}
	
	@RequestMapping(value = "/restaurant/restaurantHome", method = RequestMethod.POST)
	public String processAddNewrestaurantHome(@ModelAttribute("RtDetailsBean") RtDetailsBean rdb) {
		return "restaurantHome";
	}
	
}

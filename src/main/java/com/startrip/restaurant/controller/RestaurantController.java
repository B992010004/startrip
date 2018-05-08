package com.startrip.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestaurantController {

	
	//只能瀏覽
	
	
	@RequestMapping(value = "/restaurantHome")
	public String getAllRestaurant(Model model) {
		
		return "restaurant/restaurantHome";
	}
	
	
	//只能瀏覽，留言，訂位
	
	
}

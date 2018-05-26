package com.startrip.transport.TripInf.Controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.startrip.transport.TripInf.Service.TripInfServiceInterface;
import com.startrip.transport.TripInf.TripInfModle.TripInfBean;

@Controller
public class TripInfController {

	@Autowired
	TripInfServiceInterface TripInfService;
	@Autowired
	ServletContext context;

	@RequestMapping(value = "/selectTripInf", method = RequestMethod.GET)

	public String select(Model model, HttpServletRequest request) {

		List<TripInfBean> all = TripInfService.select1();

		model.addAttribute("TripInfList", all);// 標籤名TripInfList
      
		System.out.println(all);
		return "/transport/TripInfSelect";
	}

	// ------------------------------------------
	// 我需要用三個條件Date,StarStation,EndStation去查詢TripInf表格
	// 然後列出所有符合條件的欄位給USER選取,多秀出 SeateList(座位庫存),Price(價格),StarTime(發車時間)
	// 利用主鍵Trip(班次編號)去SeatList表格選座位
	@RequestMapping(value = "/selectTrip", method = RequestMethod.POST)

	public String selectTrip(HttpServletRequest req, Model model) {
		

		return "/transport/TripInfSelect";
	}

	@RequestMapping(value = "/selectTrip123", method = RequestMethod.POST)
	public String saveTrip(@ModelAttribute("TripInfBean") TripInfBean TIB, BindingResult result,
			HttpServletRequest request) {
		TripInfService.insert(TIB);
		return "redirect:/selectTrip123";
	}

	@RequestMapping(value = "/selectTrip321", method = RequestMethod.GET)
	public String InputTrip(Model model) {
		TripInfBean TIB = new TripInfBean();
		model.addAttribute("inputStation", TIB);
		return "transport/selectTrip321";
	}

}

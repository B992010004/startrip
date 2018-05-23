package com.startrip.transport.TripInf.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.startrip.transport.Station.StationModle.StationBean;
import com.startrip.transport.TripInf.Service.TripInfService;
import com.startrip.transport.TripInf.TripInfModle.TripInfBean;

public class TripInfController {

	
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	public String select(Model model) {
		List<TripInfBean> all = TripInfService.select();
		// System.out.println(all);
		for (@SuppressWarnings("unused") TripInfBean TripInfBean : all) {
			
		}
		model.addAttribute("TripInfList", all);// 標籤名stationList

		return "transport/TripInfSelect";
	}

	// ------------------------------------------
//我需要用三個條件Date,StarStation,EndStation去查詢TripInf表格
//然後列出所有符合條件的欄位給USER選取,多秀出  SeateList(座位庫存),Price(價格),StarTime(發車時間)
	//利用主鍵Trip(班次編號)去SeatList表格選座位
//	@RequestMapping(value = "/selectTrip", method = RequestMethod.POST)
//	@ResponseBody
//	public List<TripInfBean> selectTrip(HttpServletRequest req, Model model) {
//		System.out.println(req.getParameter("local"));
//		List<TripInfBean> Date = TripInfService.selectTrip(req.getParameter("local"));
//		List<TripInfBean> StarStation = TripInfService.selectTrip(req.getParameter("local"));
//		List<TripInfBean> EndStation = TripInfService.selectTrip(req.getParameter("local"));
//	
//	
//
//		return transport/select2;
//	}

	@RequestMapping(value = "/selectTrip", method = RequestMethod.POST)
	public String saveTrip(@ModelAttribute("TripInfBean") TripInfBean TIB, BindingResult result,
			HttpServletRequest request) {
		TripInfService.insert(TIB);
		return "redirect:/stationEdit";
	}

	@RequestMapping(value = "/selectTrip", method = RequestMethod.GET)
	public String InputTrip(Model model) {
		TripInfBean TIB = new TripInfBean();
		model.addAttribute("inputStation", TIB);
		return "transport/stationEdit";
	}
	
	
	
}
package com.startrip.transport.Station.Controller;

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

import com.startrip.transport.Station.Service.StationServiceInterface;
import com.startrip.transport.Station.StationModle.StationBean;

@Controller
public class StationController {

	@Autowired
	StationServiceInterface StationService;
	@Autowired
	ServletContext context;

	// -------顯示車站-----------------------------
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	public String select(Model model) {
		List<StationBean> all = StationService.select();
		// System.out.println(all);
		for (StationBean stationBean : all) {
			
		}
		model.addAttribute("stationList", all);// 標籤名stationList

		return "transport/select";
	}

	// ------------------------------------------

	@RequestMapping(value = "/selectArea", method = RequestMethod.POST)
	@ResponseBody
	public List<StationBean> selectArea(HttpServletRequest req, Model model) {
		System.out.println(req.getParameter("local"));
		List<StationBean> area = StationService.selectArea(req.getParameter("local"));
		System.out.println(area);
	

		return area;
	}

	@RequestMapping(value = "/stationEdit", method = RequestMethod.POST)
	public String saveStation(@ModelAttribute("StationBean") StationBean ist, BindingResult result,
			HttpServletRequest request) {
		StationService.insert(ist);
		return "redirect:/stationEdit";
	}

	@RequestMapping(value = "/stationEdit", method = RequestMethod.GET)
	public String InputStation(Model model) {
		StationBean ist = new StationBean();
		model.addAttribute("inputStation", ist);
		return "transport/stationEdit";
	}

	

	
	
	
}

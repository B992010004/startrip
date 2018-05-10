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

import com.startrip.restaurant.model.RtDetailsBean;
import com.startrip.transport.Station.Service.StationServiceInterface;
import com.startrip.transport.Station.StationModle.StationBean;

@Controller
public class StationController {

	@Autowired
	StationServiceInterface StationService;
	@Autowired
	ServletContext context;
//-------顯示車站-----------------------------
	@RequestMapping(value="/select", method=RequestMethod.GET)
	public String select(Model model) {
		List<StationBean> all = StationService.select();
		System.out.println(all);
		for(StationBean stationBean:all) {
			System.out.println( "getStationName="+stationBean.getStationName());
			System.out.println(stationBean.getStationId());			
			System.out.println(stationBean.getArea());		}
		model.addAttribute("stationList", all);//標籤名stationList
		
		return "transport/select";
	}
//------------------------------------------	
//	@RequestMapping(value="station/list")
//	public String selectStation(Model model) {
//		}
	
	@RequestMapping(value = "/stationEdit", method = RequestMethod.POST)
	public String saveStation(@ModelAttribute("StationBean")StationBean ist,
			BindingResult result,HttpServletRequest request) {
		StationService.insert(ist);
		return "redirect:/stationEdit";
	}
	
	@RequestMapping(value = "/stationEdit", method = RequestMethod.GET)
	public String InputStation(Model model) {
		StationBean  ist= new StationBean();
		model.addAttribute("inputStation", ist);
		return "transport/stationEdit";
	}
	
	
//	
//	
//	
//	@RequestMapping(value = "/stationEdit", method = RequestMethod.GET)
//	public String stationEdit(Model model) {
//		StationBean stb = new StationBean();
//		model.addAttribute("Stationinput", stb);
//		return "transport/stationEdit";
//	}
//	
//	
//	
//	@RequestMapping(value="/stationEdit",method=RequestMethod.GET)
//	public String inputStation(Model model) {
//		model.inputStation(model);
//		
//		return "transport/stationEdit";
//	}

//	
//	
//	@RequestMapping(value="/station/log")
//	public String log(HttpServletRequest request) {
//		HttpSession session = request.getSession();
//		session.removeAttribute("loginOk");
//		
//		
//		
//		return "stationEdit";
//		
//		
//	}
	//@RequestMapping(value="/station/delete" ,method=RequestMethod.DELETE)
	//public String delete(Integer id) {
		
		
		
	
	}
	
	
	

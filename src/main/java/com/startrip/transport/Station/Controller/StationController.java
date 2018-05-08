package com.startrip.transport.Station.Controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.transport.Station.Service.StationServiceInterface;
import com.startrip.transport.Station.StationModle.StationBean;

@Controller
public class StationController {

	@Autowired
	StationServiceInterface StationService;
	
	
	@Autowired
	ServletContext context;
	
	@RequestMapping(value="/station/select", method=RequestMethod.GET)
	public String select(Model model) {
		List<StationBean> all = StationService.select();
//		System.out.println(all);
//		for(StationBean stationBean:all) {
//			System.out.println( "getStationName="+stationBean.getStationName());
//			System.out.println(stationBean.getStationId());
//			System.out.println(stationBean.getArea());
//		}
		model.addAttribute("stationList", all);
		return "/transport/stationlist";
	}
	
	

	
}

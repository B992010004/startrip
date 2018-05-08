package com.startrip.travelPlan.controller;

import java.io.File;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.startrip.travelPlan.model.TravelAllBean;
import com.startrip.travelPlan.model.TravelListBean;
import com.startrip.travelPlan.model.TravelViewBean;
import com.startrip.travelPlan.service.ITravelAllService;
import com.startrip.travelPlan.service.ITravelListService;
import com.startrip.travelPlan.service.ITravelViewService;

@Controller
public class TravelPlanController {
	
	@Autowired
	ITravelAllService travelservice;
	
	@Autowired
	ITravelListService listservice;
	

	@Autowired
	ITravelViewService viewService;
	
	//新增行程-------------------------------------------
	@RequestMapping(value="Travel/addPlan",method=RequestMethod.GET)
	public String travelNewAdd(Model model) {
		TravelAllBean bean = new TravelAllBean();
		model.addAttribute("TravelAllBean",bean);
		return "TravelProject/TravelPlans/add";
	}
	
	@RequestMapping(value="Travel/addPlan",method=RequestMethod.POST)
	public String travelAdd(@ModelAttribute("TravelALLBean") TravelAllBean bean) {
		System.out.println(bean.toString());
		//天數計算----------------
		int days = 0;
		Date start = bean.getStartDate();
		Date end = bean.getEndDate();
		start.getTime();
		end.getTime();
		days = (int) ((end.getTime()- start.getTime()) / (1000 * 60 * 60 * 24));
		bean.setTravelDays(days);
		//------------------
		travelservice.insert(bean);
		return "redirect:/list/All";
	}
	//查詢ALL Travel-----------------------------------------
	@RequestMapping(value="travel/all",method=RequestMethod.GET)
	public String travelAll(Model model) {
		List<TravelAllBean> list = travelservice.selectAllTravel();
		model.addAttribute("travels", list);
		return "TravelProject/Main";
	}
	
	@RequestMapping(value="travel/id",method=RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> travelBean(Integer id) {
//		Integer id =bean.getTravelId();
		System.out.println(id);
		TravelAllBean tb = travelservice.Select_TravelId(id);
		
		HashMap<String, Object> result = new HashMap<>();
		result.put("Name", tb);
		result.put("startDate", tb.getStartDate().toString());
		result.put("endDate", tb.getEndDate().toString());
		System.out.println(result);
		return result;
	}
	
	
	
	
	//List相關控制-------------------------------------
	@RequestMapping(value="Travel/addList",method=RequestMethod.GET)
	public String listNewAdd(Model model) {
		TravelListBean bean = new TravelListBean();
		model.addAttribute("TravelListBean",bean);
		return "TravelProject/TravelList/addList";
	}
	
	@RequestMapping(value="Travel/addList",method=RequestMethod.POST)
	public String travelAdd(@ModelAttribute("TravelListBean") TravelListBean bean) {
		
		
		
		
		listservice.insert(bean);
		return "redirect:/list/All";
	}		   
	
	
	
	
	//getAllList
	@RequestMapping(value="list/All",method=RequestMethod.GET)
	public String getAllList(Model model) {
		List<TravelListBean> list = listservice.selectAllList();
		model.addAttribute("Lists", list);
		return "/TravelProject/TravelList/AllList";
	}
	//----------------------------------------------------
	//view相關控制
	//-----------------------------------------------------
	@RequestMapping(value = "Views/add", method = RequestMethod.GET)
	public String getNewAddviewFrom(Model model) {
		TravelViewBean vb = new TravelViewBean();
		model.addAttribute("TravelViewBean", vb);// 對應jsp的modelAtrribute

		return "TravelProject/TravelViews/addViews";

	}
	// 單張上傳
	// @RequestMapping(value="Views/add",method=RequestMethod.POST)
	// public String addViewFrom(@ModelAttribute("TravelViewBean")TravelViewBean
	// vb,HttpServletRequest request) {
	//
	// System.out.println(vb.toString());
	//
	// MultipartFile imgSrc = vb.getImgSrc();
	// String originalFile= imgSrc.getOriginalFilename();
	// vb.setImgName(originalFile);
	//
	// String ext = originalFile.substring(originalFile.indexOf("."));
	// String
	// rootDirectory=request.getSession().getServletContext().getRealPath("/");
	// System.out.println(rootDirectory);
	//
	// viewService.insert(vb);
	//
	// try {
	// File imgFolder = new File(rootDirectory,"images");
	// if(!imgFolder.exists())imgFolder.mkdirs();
	// System.out.println("viewName:"+vb.getViewName());
	// File file = new File(imgFolder,vb.getViewName()+ext);
	//
	// imgSrc.transferTo(file);
	// } catch (Exception e) {
	// e.printStackTrace();
	// }
	//
	//
	// return "redirect:/TravelProject/TravelViews/AllViews";
	//
	// }
//多張圖片上傳
	@RequestMapping(value = "Views/add", method = RequestMethod.POST)
	public String addViewFrom(@ModelAttribute("TravelViewBean") TravelViewBean vb, HttpServletRequest request) {

		// 建立image字串儲存
		StringBuffer imgName = new StringBuffer();
		//取得Vb的所有圖片
		MultipartFile[] imgSrc = vb.getImgSrc();
		for (MultipartFile img : imgSrc) {
			//取得原始名稱
			String originalFile = img.getOriginalFilename();
			//串成字串
			imgName.append(originalFile + ";");
			//取.jsp
			String ext = originalFile.substring(originalFile.indexOf("."));
			//取原始路徑
			String rootDirectory = request.getSession().getServletContext().getRealPath("/");

			try {
				//建立root目錄
				File imgFolder = new File(rootDirectory, "images");
				if (!imgFolder.exists())
					//建立目錄
					imgFolder.mkdirs();
				//建立檔案
				File file = new File(imgFolder, originalFile + ext);
				
				img.transferTo(file);

			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		vb.setImgName(imgName.toString());
		viewService.insert(vb);

		return "redirect:/TravelViews/all";

	}

	@ModelAttribute("orgclassList")
	public List<String> getOrgClass() {
		return viewService.getAllOrgClass();
	}

	@RequestMapping(value = "TravelViews/all", method = RequestMethod.GET)
	public String AllViews(Model model) {
		List<TravelViewBean> list = viewService.select();
		model.addAttribute("views", list);
		return "TravelProject/TravelViews/AllViews";
	}

}

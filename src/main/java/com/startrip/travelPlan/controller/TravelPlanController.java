package com.startrip.travelPlan.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.startrip.member.Service.MemberServiceInterface;
import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.model.TravelAllBean;
import com.startrip.travelPlan.model.TravelListBean;
import com.startrip.travelPlan.model.TravelViewBean;
import com.startrip.travelPlan.service.ITravelAllService;
import com.startrip.travelPlan.service.ITravelListService;
import com.startrip.travelPlan.service.ITravelViewService;

@Controller
public class TravelPlanController {
	@Autowired
	MemberServiceInterface memberservice;
	
	@Autowired
	ITravelAllService travelservice;
	
	@Autowired
	ITravelListService listservice;
	

	@Autowired
	ITravelViewService viewService;
	
	@Autowired
	ServletContext ctx;
	
	//新增行程-------------------------------------------
	@RequestMapping(value="Travel/addPlan/{mail}",method=RequestMethod.GET)
	public String travelNewAdd(Model model) {
		TravelAllBean bean = new TravelAllBean();
		
		model.addAttribute("TravelAllBean",bean);
		return "TravelProject/TravelPlans/add";
	}
	
	@RequestMapping(value="Travel/addPlan/{mail}",method=RequestMethod.POST)
	public String travelAdd(@ModelAttribute("TravelALLBean") TravelAllBean bean,@PathVariable("mail")String mail) {
//		-----------------------------------------------------
		//天數計算----------------
		int days = 0;
		Date start = bean.getStartDate();
		Date end = bean.getEndDate();
		start.getTime();
		end.getTime();
		days = (int) ((end.getTime()- start.getTime()) / (1000 * 60 * 60 * 24));
		bean.setTravelDays(days);
		//------------------
		MemberBean mb =memberservice.select(mail);
		Integer id =mb.getMemberid();
		bean.setMail(mail);
		bean.setMemberId(id);
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
	//查詢行程資料
	@RequestMapping(value="travel/id",method=RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> travelBean(String mail) {
		MemberBean mb = memberservice.select(mail);
		Integer id =mb.getMemberid();
		TravelAllBean tb = travelservice.Select_TravelId(id);
		HashMap<String, Object> result = new HashMap<>();
		result.put("Name", tb);
		result.put("startDate", tb.getStartDate().toString());
		result.put("endDate", tb.getEndDate().toString());
		return result;
	}
	@RequestMapping(value="/travel/add/day",method=RequestMethod.GET)
	@ResponseBody
	public TravelAllBean addDay(Model model,String mail) {
		System.out.println(mail);
		TravelAllBean bean = new TravelAllBean();
		MemberBean mb = new MemberBean();
		
		Integer id =memberservice.select(mail).getMemberid(); 
		bean = travelservice.Select_TravelId(id);
		Integer days =bean.getTravelDays();
		System.out.println(days);
		
		bean.setTravelDays(days+1);
		try {
			travelservice.updateDays(bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println();
		return bean;
	}
	
	
	//List相關控制-------------------------------------
	//新增清單--------------------------------------
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
//--------------------------------------------------	
	
	
	
	//getAllList 取得所有清單
	@RequestMapping(value="list/All",method=RequestMethod.GET)
	public String getAllList(Model model) {
		List<TravelListBean> list = listservice.selectAllList();
		model.addAttribute("Lists", list);
		return "/TravelProject/TravelList/AllList";
	}
	
	//取得所有清單行程的
	@RequestMapping(value="list/travelId",method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<TravelListBean> getTravelList(String mail){
		MemberBean mb = memberservice.select(mail);
		Integer id =mb.getMemberid();
		TravelListBean bean = new TravelListBean();
		List<TravelListBean> result  =listservice.Select_travelid(id);
		System.out.println(result.size());
		ArrayList<TravelListBean> all = new ArrayList<>();
		for(int i =0;i<result.size();i++) {
		bean=result.get(i);
		bean.setViewName(viewService.select_ViewId(bean.getViewid()).getViewName());
		bean.setTravelName(travelservice.Select_TravelId(bean.getTravelId()).getTravelName());
		System.out.println(bean.toString());
		all.add(bean);
		}
		
		
		return all;
	}
	
	
	//----------------------------------------------------
	//view相關控制
	//-----------------------------------------------------
	//查詢所有風景--------------------
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
//			System.out.println(request.getServletContext().getRealPath("/")+"/assets/images");
			try {
				//建立root目錄
				String path = "E:/temp/images";
				File imgFolder = new File(path, "travel");
				if (!imgFolder.exists())
					//建立目錄
					imgFolder.mkdirs();
				//建立檔案
				File file = new File(imgFolder, originalFile);
//				System.out.println(imgFolder+originalFile);
				img.transferTo(file);

			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		vb.setImgName(imgName.toString());
		viewService.insert(vb);

		return "redirect:/TravelViews/all";

	}
  //分類--------------------------/
	@ModelAttribute("orgclassList")
	public List<String> getOrgClass() {
		return viewService.getAllOrgClass();
	}
	//查詢所有景點
	@RequestMapping(value = "TravelViews/all", method = RequestMethod.GET)
	public String allViews(Model model) {
		List<TravelViewBean> list = viewService.select();
		model.addAttribute("views", list);
		return "TravelProject/TravelViews/AllViews";
	}
	
	//查詢viewList景點
	@RequestMapping(value="TravelView/place",method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String, Object>> placeViews(String address) {
		public ArrayList<TravelViewBean> placeViews(String address) {
//		String name =java.net.URLDecoder.decode(address);
		
		TravelViewBean bean = new TravelViewBean();
		List<TravelViewBean> lists = viewService.getAddress(address);
		ArrayList<TravelViewBean> all = new ArrayList<>();
		for(int i =0;i<lists.size();i++) {
		bean=lists.get(i);
		all.add(bean);
		}
		
		return all;
	}
	//輸出景點圖片
	@RequestMapping(value="/showImage/{fileName}.{suffix}" ,method =RequestMethod.GET)
	public ResponseEntity<byte[]> showImage(
			@PathVariable("fileName") String fileName,
			@PathVariable("suffix") String suffix,HttpServletRequest request 
			,HttpServletResponse response) {
//		System.out.println("img loading");
		String path = "c:/temp/travel/";
		String imgFile =path+fileName+"."+suffix;
		
		File file = new File(imgFile);
//		if(file.exists())
//		System.out.println("true;"+file.getName());
//		System.out.println(path+fileName+"."+suffix);
		int len = 0;
		byte[] media = null;
		ByteArrayOutputStream baos =null;
		HttpHeaders headers = new HttpHeaders();
		InputStream is=null;
		try {
			 is = new FileInputStream(file);
//			System.out.println(is.read());
		baos = new ByteArrayOutputStream() ;
		byte[] b = new byte[8192];
		while((len = is.read(b))!=-1) {
			baos.write(b, 0, len);
		}
		baos.close();
		is.close();
	} catch (Exception e) {
		e.printStackTrace();
	} 
	media=baos.toByteArray();
	headers.setCacheControl(CacheControl.noCache().getHeaderValue());
	headers.setContentType(MediaType.IMAGE_JPEG);
	ResponseEntity<byte[]> responseEntity = new ResponseEntity<byte[]>(media, headers, HttpStatus.OK);
		return responseEntity;
		
		
		
	}
	

}

package com.startrip.travelPlan.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.cfg.JoinedSubclassFkSecondPass;
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

import com.google.gson.Gson;
import com.google.gson.JsonParser;
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
	@RequestMapping(value="Travel/addPlan/{mail}.{com}",method=RequestMethod.GET)
	public String travelNewAdd(Model model) {
		TravelAllBean bean = new TravelAllBean();
		
		model.addAttribute("TravelAllBean",bean);
		return "TravelProject/TravelPlans/addPlan";
	
	}
	
	@RequestMapping(value="Travel/addPlan/{mail}.{com}",method=RequestMethod.POST)
	public String travelAdd(@ModelAttribute("TravelALLBean") TravelAllBean bean
			,@PathVariable("mail")String mail,@PathVariable("com")String domain,HttpSession session,HttpServletRequest request) {
//		-----------------------------------------------------
		System.out.println("mail===="+mail);
		
		//亂數一張圖片
		Integer img =(int)(Math.random()*10+1);
		bean.setImg(img+".jpg");
		
		//天數計算----------------
		
		Date start = bean.getStartDate();
		Date end = bean.getEndDate();
		
		int days = (int)((end.getTime()-start.getTime())/(1000*60*60*24)+1);
		
		
		bean.setTravelDays(days);
		//------------------
		MemberBean mb =memberservice.select(mail+"."+domain);
		Integer id =mb.getMemberid();
//		bean.setMail(mail);
		bean.setMemberId(id);
		bean.setState(1);
		Integer pk =travelservice.insert_getprimarykey(bean);
		
		bean.setTravelId(pk);
		
//		System.out.println(i);
		session = request.getSession();
		session.setAttribute("Travel", bean);
		
		return "redirect:/list/All";
	}
	
//	@RequestMapping(value="travel/update",method=RequestMethod.POST)
//	public String travelAdd(@RequestParam("travelName")String travelName,
//			@RequestParam("startDate")Date startDate,@RequestParam("endDate")Date endDate,
//			@RequestParam("mail")String mail,@RequestParam("travelId")Integer travelId) {
////		-----------------------------------------------------
//	System.out.println(mail);
//	return "TravelProject/Main";
//	}
	
	//查詢ALL Travel-----------------------------------------
	@RequestMapping(value="travel/all",method=RequestMethod.GET)
	@ResponseBody
	public List<TravelAllBean> travelAll(Model model,String mail) {
		
		HashMap<String , String > map = new HashMap<>();
		System.out.println("mail="+mail);
		MemberBean mb = memberservice.select(mail);
		Integer id = mb.getMemberid();
		System.out.println("id="+id);
		List<TravelAllBean> all = new ArrayList<>();
		List<TravelAllBean> list = travelservice.select_mail(id);
		for(TravelAllBean bean :list) {
			all.add(bean);
		}
		return all;
	}
	//移除行程
		@RequestMapping(value="travel/remove" ,method=RequestMethod.GET)
		@ResponseBody
		public boolean removePlan(@RequestParam(value="email")String mail,@RequestParam(value="id")Integer travelId) {
			TravelAllBean tb = new TravelAllBean();
			MemberBean mb = new MemberBean();
			 mb=memberservice.select(mail);
			 Integer memberId =mb.getMemberid();
			tb = travelservice.Select_Travel(memberId, travelId);
			tb.setState(0);
			System.out.println(tb.toString());
			try {
				travelservice.updateTravel(tb);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return true;
			
		}
	
		
		
	//查詢行程資料
	@RequestMapping(value="travel/id",method=RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> travelBean(@RequestParam("mail")String mail
			,@RequestParam("travelId")Integer travelId,HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(mail+"--------------------"+travelId);
		MemberBean mb = memberservice.select(mail);
		Integer memberId =mb.getMemberid();
		TravelAllBean tb = travelservice.Select_Travel(memberId,travelId);
		session.setAttribute("listOb", tb);
		HashMap<String, Object> result = new HashMap<>();
		result.put("Name", tb);
		result.put("startDate", tb.getStartDate().toString());
		result.put("endDate", tb.getEndDate().toString());
		session.setAttribute("Travel", tb);
		return result;
	}
	@RequestMapping(value="travel/update",method=RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> travelBean(@RequestParam("travelName")String travelName
			,@RequestParam("startDate")Date startDate,@RequestParam("endDate")Date endDate
			,@RequestParam("travelId")Integer travelId,@RequestParam("mail")String mail) {
//		System.out.println(travelName+","+startDate+","+endDate+","+travelId+","+mail);
		MemberBean mb = memberservice.select(mail);
		Integer memberId =mb.getMemberid();
		TravelAllBean tb = travelservice.Select_Travel(memberId,travelId);
		tb.setTravelName(travelName);
		tb.setStartDate(startDate);
		tb.setEndDate(endDate);
		
		
		tb.setMail(mail);
		tb.setMemberId(memberId);
		tb.setTravelId(travelId);
		int days = (int)((endDate.getTime()-startDate.getTime())/(1000*60*60*24)+1);
		tb.setTravelDays(days);
		System.out.println("update/travel="+tb);
		try {
			travelservice.updateTravel(tb);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		HashMap<String, Object> result = new HashMap<>();
		result.put("Name", tb);
		result.put("startDate", tb.getStartDate().toString());
		result.put("endDate", tb.getEndDate().toString());
		return result;
	}
	
	
	
	
	
	//新增行程天數
	@RequestMapping(value="/travel/add/day",method=RequestMethod.GET)
	@ResponseBody
	public TravelAllBean addDay(Model model,@RequestParam("mail")String mail,@RequestParam("travelId")Integer travelId) {
//		System.out.println(mail);
		TravelAllBean bean = new TravelAllBean();
		
		
		Integer memberId =memberservice.select(mail).getMemberid(); 
		bean = travelservice.Select_Travel(memberId,travelId);
		Integer days =bean.getTravelDays();
		
		java.util.Date convert = new java.util.Date(bean.getEndDate().getTime());
		Calendar   calendar = new GregorianCalendar(); 
		calendar.setTime(convert); 
		calendar.add(calendar.DATE,1); //把日期往后增加一天,整数  往后推,负数往前移动 
		convert= calendar.getTime(); //这个时间就是日期往后推一天的结果 
		Date endDate = new java.sql.Date(convert.getTime());
//		System.out.println(endDate);
//		System.out.println("--------------------------------------------");
		bean.setTravelDays(days+1);
		bean.setEndDate(endDate);
		bean.toString();
		try {
			travelservice.updateDays(bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bean;
	}
//------------------------------------------
	@RequestMapping(value="/travel/remove/day",method=RequestMethod.GET)
	@ResponseBody
	public TravelAllBean removeDay(@RequestParam("mail")String mail,@RequestParam("travelId")Integer travelId
			,@RequestParam("listday")Integer listday) {
		TravelAllBean bean = new TravelAllBean();
		Integer memberId =memberservice.select(mail).getMemberid(); 
		bean = travelservice.Select_Travel(memberId,travelId);
		Integer days =bean.getTravelDays();
		
		java.util.Date convert = new java.util.Date(bean.getEndDate().getTime());
		Calendar   calendar = new GregorianCalendar(); 
		calendar.setTime(convert); 
		calendar.add(calendar.DATE,-1); //把日期往后增加一天,整数  往后推,负数往前移动 
		convert= calendar.getTime(); //这个时间就是日期往后推一天的结果 
		Date endDate = new java.sql.Date(convert.getTime());
//		System.out.println(endDate);
//		System.out.println("--------------------------------------------");
		bean.setTravelDays(days-1);
		bean.setEndDate(endDate);
		bean.toString();
		
		Integer updatedays = days-listday;
		int i ;
			for(i =listday;i<=days;i++) {
				System.out.println("i="+i);
				System.out.println("remove/day/list="+days);
				
				if(i==listday) {
					System.out.println("i="+i+",listday="+listday);
					listservice.updateListDayState(travelId, listday);
					continue;
				}
				listservice.updateListDay(travelId,i);
			}
			try {
			travelservice.updateDays(bean);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	
	
	//show行程圖片
	@RequestMapping(value="/show/{fileName}.{suffix}" ,method =RequestMethod.GET)
	public ResponseEntity<byte[]> showtravel(
			@PathVariable("fileName") String fileName,
			@PathVariable("suffix") String suffix,HttpServletRequest request 
			,HttpServletResponse response) {
		String path = "c:/temp/travel/plan/";
		String imgFile =path+fileName+"."+suffix;
		
		File file = new File(imgFile);
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
//		baos.close();
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
	
	
	
	
	//List相關控制-------------------------------------
	//新增清單--------------------------------------
//	@RequestMapping(value="Travel/addList",method=RequestMethod.GET)
//	public String listNewAdd(Model model) {
//		TravelListBean bean = new TravelListBean();
//		model.addAttribute("TravelListBean",bean);
//		return "TravelProject/TravelList/addList";
//	}
	
	@RequestMapping(value="/Travel/add/list",method=RequestMethod.GET)
	@ResponseBody
	public TravelListBean travelAdd(@RequestParam("viewName")String viewName,@RequestParam("starttime")String starttime
			,@RequestParam("endtime")String endtime,@RequestParam("travelType")String type
			,@RequestParam("tripday")Integer day,@RequestParam("travelId")Integer travelId
			,@RequestParam("memberId")Integer memberId) {
		
		String travelName = travelservice.Select_Travel(memberId, travelId).getTravelName();
		
		List<TravelViewBean> view = viewService.getViewPoint(viewName);
		System.out.println(view.size());
		for(TravelViewBean views :view) {
			System.out.println(views);
		}
		Integer viewId=view.get(0).getViewid();
		Integer state = 1;
		TravelListBean tlb = new TravelListBean(viewName, starttime, endtime, travelName, type, memberId, travelId, viewId, day, state);
		
		Integer pk =listservice.insert(tlb);
		
		return tlb;
		
		
	}		   
	//--------------------------------------------------	
	//getAllList 取得所有清單
	@RequestMapping(value="list/All",method=RequestMethod.GET)
	public String getAllList(Model model,HttpServletRequest request) {
		List<TravelListBean> list = listservice.selectAllList();
		model.addAttribute("Lists", list);
		return "/TravelProject/TravelList/AllList";
	}
	
	@RequestMapping(value="list/All/{mail}/{travelId}",method=RequestMethod.GET)
	public String getAllList(Model model,HttpServletRequest request,
			@PathVariable("mail")String mail,@PathVariable("travelId")Integer travelId) {
//		System.out.println(mail+","+travelId);
		TravelAllBean tb = new TravelAllBean();
		tb.setMail(mail);
		tb.setTravelId(travelId);
	
		return "/TravelProject/TravelList/AllList";
	}
	
	
	
	//取得所有清單行程的
	@RequestMapping(value="list/travelId",method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<TravelListBean> getTravelList(@RequestParam("mail")String mail,@RequestParam("travelId")Integer travelId
			,@RequestParam("day")Integer day){
		MemberBean mb = memberservice.select(mail);
		Integer memberId =mb.getMemberid();
		TravelListBean bean = new TravelListBean();
		List<TravelListBean> result  =listservice.Select_travellist(travelId,day);
//		System.out.println(result.size());
		ArrayList<TravelListBean> all = new ArrayList<>();
		for(int i =0;i<result.size();i++) {
		bean=result.get(i);
		//取得景點名稱
		bean.setViewName(viewService.select_ViewId(bean.getViewid()).getViewName());
		//取得行程名稱
		bean.setTravelName(travelservice.Select_Travel(memberId,bean.getTravelId()).getTravelName());
//		System.out.println(bean.toString());
		List<TravelViewBean> list=viewService.getViewPoint(bean.getViewName());
		bean.setViewbean(list.get(0));
		
		all.add(bean);
		}
		
		System.out.println(all.toString());
		return all;
	}
	@RequestMapping(value="travel/checkday",method=RequestMethod.GET)
	@ResponseBody
	public boolean getAllList(Model model,TravelListBean bean,String mail) {
		
		Integer memberId =memberservice.select(mail).getMemberid();
		List<TravelListBean>list=new ArrayList<>();
		list= listservice.select_listday(bean.getTravelId(), bean.getTripday());
		System.out.println(bean.getTravelId()+","+ bean.getTripday());
		System.out.println("size="+list.size());
		System.out.println("empty="+list.isEmpty());
		System.out.println("確認有無行程");
		System.out.println("確認有無行程");
		if(list.isEmpty()) {
			return false;
		}else {
		return true;
		}
	}

	
	@RequestMapping(value="listday/lasttime",method=RequestMethod.GET)
	@ResponseBody
	public TravelListBean getAllList(Integer tripday,String mail,Integer travelId) {
		Integer memberId =memberservice.select(mail).getMemberid();
		
		TravelListBean tlb= listservice.select_lastlist(travelId, tripday);
		System.out.println("tlb="+tlb);
		
		return tlb;
	}
	
	@RequestMapping(value="list/remove",method=RequestMethod.GET)
	@ResponseBody
	public Integer removeList(Integer travelId,Integer tripday,String endtime) {
		
				
		Integer a= listservice.update_ListState(travelId, tripday,endtime);
		
		return a;
	}
	@RequestMapping(value="list/update",method=RequestMethod.GET)
	@ResponseBody
	public String removeList(TravelListBean bean) {
		List<TravelViewBean> list=viewService.getViewPoint(bean.getViewName()); 
		Integer viewid = list.get(0).getViewid();
		System.out.println("update value="+bean.toString());
				bean.setState(1);
				bean.setViewid(viewid);
		listservice.update_List(bean);
		
		return "success";
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
	
	@RequestMapping(value ="Travel/add/view", method = RequestMethod.GET )
	@ResponseBody
	public String addViewFrom(TravelViewBean bean)
	{	
		Integer count;
		List<TravelViewBean> list = new ArrayList<>();
		System.out.println("add/view.bean="+bean.toString());
		list =viewService.select_latlng(bean.getLatlng());
		if(list.size()<=0) {
			count=1;
			System.out.println(bean.toString());
			TravelViewBean tvb =new TravelViewBean( bean.getImgName(), bean.getMemberId(), bean.getViewName(), bean.getViewaddr(), bean.getViewPhone(), bean.getWebsite(), null, bean.getViewDetail(), bean.getLatlng(), count);
			Integer pk =viewService.insert(tvb);
			if(pk==null) {
			return "null";
			}else {
			return "scuess";
			}
		}else {
	
		TravelViewBean tvb = list.get(0);
		count= tvb.getCount();
		count++;
		tvb.setCount(count);
		viewService.update(tvb);
		return "count sccuess";
		}
	}
  //分類--------------------------/
//	@ModelAttribute("orgclassList")
//	public List<String> getOrgClass() {
//		return viewService.getAllOrgClass();
//	}
	//查詢所有景點
	@RequestMapping(value = "TravelViews/all", method = RequestMethod.GET)
	public String allViews(Model model) {
		List<TravelViewBean> list = viewService.select();
		model.addAttribute("views", list);
		return "TravelProject/TravelViews/AllViews";
	}
	
	@RequestMapping(value = "view/search", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String,Object> singleView(Model model,@RequestParam("viewName")String viewName
			,@RequestParam("mail")String mail,@RequestParam("travelId")Integer travelId) {
		
		TravelViewBean tvb = viewService.getViewPoint(viewName).get(0);
		Integer memberId = memberservice.select(mail).getMemberid();
		TravelAllBean tab = travelservice.Select_Travel(memberId, travelId);
		
		 
//		System.out.println(tvb.toString());
		HashMap<String,Object> result = new HashMap<>();
		
		
		result.put("view", tvb);
		result.put("travel",tab);
		return result;
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
		String path = "c:/temp/travel/";
		String imgFile =path+fileName+"."+suffix;
		
		File file = new File(imgFile);
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

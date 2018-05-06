package com.startrip.travelPlan.travelView.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.startrip.travelPlan.travelView.model.TravelViewBean;
import com.startrip.travelPlan.travelView.service.travelViewService;

@Controller
public class viewCotroller {

	@Autowired
	travelViewService viewService;

	
	
	
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

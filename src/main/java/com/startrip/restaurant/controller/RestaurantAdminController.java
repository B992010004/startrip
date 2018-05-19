package com.startrip.restaurant.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.startrip.restaurant.model.RtDetailsBean;
import com.startrip.restaurant.service.RtBookingService;
import com.startrip.restaurant.service.RtDetailsService;



@Controller
public class RestaurantAdminController {

	@Autowired
	RtDetailsService rtDetailsService;

	@Autowired
	RtBookingService rtBookingService;

	@Autowired
	ServletContext context;

	// 後台新增餐廳---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/insertupdate", method = RequestMethod.GET)
	public String insertRtDetails(Model model) {
		RtDetailsBean rdb = new RtDetailsBean();
		model.addAttribute("RtDetailsBean", rdb);
		return "restaurant/insertupdate";
	}

	@RequestMapping(value = "/insertupdate", method = RequestMethod.POST)
	public String processAddNewUserReviewEdit(@ModelAttribute("RtDetailsBean") RtDetailsBean rdb, BindingResult result,
			HttpServletRequest request) {

		String fileurl = "";
		StringBuffer fileNameBuffer = new StringBuffer();
		MultipartFile[] avatas = rdb.getMultipartFiles();
		System.out.println(avatas + " = avatas");
		for (MultipartFile avata : avatas) {
			if (avata.isEmpty() || !isImage(avata)) {
				System.out.println("無法找到文件或不是照片類型");
			} else {
				System.out.println("文件長度: " + avata.getSize());
				System.out.println("文件類型: " + avata.getContentType());
				System.out.println("文件名稱: " + avata.getName());
				System.out.println("文件原名: " + avata.getOriginalFilename());
				System.out.println("========================================");

				String rootDirectory = "C:\\temp\\";
				System.out.println(rootDirectory);
				int i = avata.getOriginalFilename().lastIndexOf(".");// 返回最後一個點的位置

				String extension = avata.getOriginalFilename().substring(i + 1);// 取出擴展名
				String filename = UUID.randomUUID().toString() + "." + extension;
				fileurl = filename;
				fileNameBuffer.append(filename + ";");
				try {
					File imageFolder = new File(rootDirectory, "rtImage");
					if (!imageFolder.exists()) {
						imageFolder.mkdirs();
					}
					File file = new File(imageFolder, fileurl);
					avata.transferTo(file);
					rdb.setPhotoPaths(fileNameBuffer.toString());
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		rtDetailsService.insertRtDetails(rdb);
		System.out.println("準備return");
		return "restaurant/Individualdetailsmodify";
	}

	private boolean isImage(MultipartFile file) {
		return file.getContentType().startsWith("image");
	}

	// /後台新增餐廳/---------------------------------------------------------------------------------------------
	
	// 後台刪除餐廳---------------------------------------------------------------------------------------------
	
	@RequestMapping(value = "/Individualdetailsmodify")
	public String  deleteRt(Model model) {
		List<RtDetailsBean> list = rtDetailsService.getAllall();
		String[] photoArr = null;
		for (RtDetailsBean bean : list) {
			if (bean.getPhotoPaths() != null) {
				photoArr = bean.getPhotoPaths().split(";");
				bean.setPhotoArr(photoArr);
			}
		}
		model.addAttribute("RtDetails", list);
		return "restaurant/Individualdetailsmodify";
	}
	
	// /後台刪除餐廳/---------------------------------------------------------------------------------------------

	// ---------測試------------------------測試------------------測試----------------測試-------------

	// 後台訂位查詢

	@RequestMapping(value = "/AllListBooking")
	public String allbooking(Model model) {
		return "restaurant/AllListBooking";
	}

	// ---------測試------------------------測試------------------測試----------------測試-------------

}

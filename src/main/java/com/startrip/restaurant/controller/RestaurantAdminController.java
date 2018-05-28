package com.startrip.restaurant.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.startrip.member.Service.MemberServiceInterface;
import com.startrip.member.memberModle.MemberBean;
import com.startrip.restaurant.model.RtBookingBean;
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
	@Autowired
	MemberServiceInterface memberservice;

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
		return "redirect:/Individualdetailsmodify";
	}

	private boolean isImage(MultipartFile file) {
		return file.getContentType().startsWith("image");
	}

	// /後台新增餐廳/---------------------------------------------------------------------------------------------

	// 後台顯示全部餐廳---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/Individualdetailsmodify")
	public String getAllRtDetailsrtId(Model model) {
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

	// /後台顯示全部餐廳/---------------------------------------------------------------------------------------------

	// 後台刪除餐廳---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/deleteRtDetailsrtId", method = RequestMethod.GET)
	public @ResponseBody String deleteDetailsrtId(Model model, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		String rtida = request.getParameter("rtId");
		int rtId = Integer.parseInt(rtida);
		rtDetailsService.deleteRtDetailsrtId(rtId);

		return "restaurant/Individualdetailsmodify";

	}

	// /後台刪除餐廳/---------------------------------------------------------------------------------------------
	
	// 後台修改餐廳---------------------------------------------------------------------------------------------
	
	@RequestMapping(value = "/updateAll", method = RequestMethod.GET)
	public @ResponseBody RtDetailsBean updateRtDetails(Model model, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		
		String rtId = request.getParameter("rtId");
		Integer rtIdc = Integer.valueOf(rtId);
		RtDetailsBean bean = rtDetailsService.getAllRtDetailsrtId(rtIdc);
		bean.setRtCounty(request.getParameter("rtCounty"));
		bean.setRtArea(request.getParameter("rtArea"));
		bean.setRtCuisine(request.getParameter("rtCuisine"));
		bean.setTeCategory(request.getParameter("teCategory"));
		bean.setRtAddress(request.getParameter("rtAddress"));
		bean.setRtPhone(request.getParameter("rtPhone"));
		bean.setRtUrl(request.getParameter("rtUrl"));
		bean.setRtPricepount(request.getParameter("rtPricepount"));
		bean.setRtBusinesshours(request.getParameter("rtBusinesshours"));
		rtDetailsService.updateRtDetails(bean);
		
	System.out.println("===============" + bean);

		return bean;

	}
	
	// /後台修改餐廳/---------------------------------------------------------------------------------------------

	// 後台顯示全部訂單---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/AllListBooking")
	public String getAllRtBookingtId(Model model) {
		List<RtBookingBean> list = rtBookingService.getAllall();
		model.addAttribute("RtBookings", list);
		return "restaurant/AllListBooking";
	}

	@RequestMapping(value = "/startrip/{memberid}")
	public ResponseEntity<byte[]> getPicture(@PathVariable int memberid) {
		MemberBean bean = memberservice.selectbyid(memberid);
		HttpHeaders headers = new HttpHeaders();
		Blob blob = bean.getPhoto();
		int len = 0;
		byte[] media = null;
		if (blob != null) {
			try {
				len = (int) blob.length();
				media = blob.getBytes(1, len);
			} catch (SQLException e) {
				throw new RuntimeException("productcontroller的getpicture發生錯誤" + e.getMessage());
			}
		} else {
			InputStream is = context.getResourceAsStream("/WEB-INF/views/assets/images/membericon/user.jpg");
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			byte[] b = new byte[8192];
			try {
				while ((len = is.read(b)) != -1) {
					baos.write(b, 0, len);
				}
			} catch (Exception e) {
				throw new RuntimeException("productcontroller的getpicture發生IOException" + e.getMessage());
			}
			media = baos.toByteArray();
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());

		// 為了修正照片問題 by 修盟
		// String mimeType = context.getMimeType(mail);
		// headers.setContentType(MediaType.parseMediaType(mimeType));

		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}	
	
	
	// /後台顯示全部訂單/---------------------------------------------------------------------------------------------
	
	// 後台刪除訂位---------------------------------------------------------------------------------------------

		@RequestMapping(value = "/deleteRtBookingbgId", method = RequestMethod.GET)
		public @ResponseBody String deleteRtBookingbgId(Model model, HttpServletRequest request, HttpServletResponse response)
				throws IOException {

			String bgida = request.getParameter("bgId");
			int bgId = Integer.parseInt(bgida);
			rtBookingService.deleteRtBookingbgId(bgId);

			return "restaurant/AllListBooking";

		}

	// /後台刪除訂位/---------------------------------------------------------------------------------------------
		
}

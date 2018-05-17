package com.startrip.restaurant.controller;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.member.Service.MemberServiceInterface;
import com.startrip.restaurant.model.RtDetailsBean;
import com.startrip.restaurant.service.RtBookingService;
import com.startrip.restaurant.service.RtDetailsService;
import com.startrip.reviews.model.ReviewBean;
import com.startrip.reviews.service.ReviewService;

@Controller
public class RestaurantController {

	@Autowired
	RtDetailsService rtDetailsService;

	@Autowired
	RtBookingService rtBookingService;

	@Autowired
	MemberServiceInterface memberservice;
	
	@Autowired
	ReviewService reviewService;
	
	@Autowired
	ServletContext context;

	// 前台餐廳首頁---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/restaurantHome")
	public String getAllListRtDetails(Model model) {
		List<RtDetailsBean> list = rtDetailsService.getAll();
		List<RtDetailsBean> list2 = rtDetailsService.getAll();
		String[] photoArr = null;
		for (RtDetailsBean bean : list) {
			if (bean.getPhotoPaths() != null) {
				photoArr = bean.getPhotoPaths().split(";");
				bean.setPhotoArr(photoArr);
			}
		}

		model.addAttribute("RtDetails", list);
		model.addAttribute("HIGH", list2);
		return "restaurant/restaurantHome";
	}

	// /前台餐廳首頁/--------------------------------------------------------------------------------------------

	// 前台新增訂單---------------------------------------------------------------------------------------------

	// @RequestMapping(value = "/reservation", method = RequestMethod.GET)
	// public String insertRtBooking(Model model) {
	//
	// RtBookingBean rbb = new RtBookingBean();
	// RtDetailsBean rdb = new RtDetailsBean();
	// model.addAttribute("rtDetailsBean", rdb);
	// model.addAttribute("RtBookingBean", rbb);
	//
	// return "restaurant/reservation";
	// }
	//
	// @RequestMapping(value = "/insertRtBooking/", method = RequestMethod.POST)
	// public String insertRtBooking(@PathVariable("rtid") Integer
	// rtid,@PathVariable("mail") String mail,@ModelAttribute("RtBookingBean")
	// RtBookingBean rbb, BindingResult result,
	// HttpServletRequest request, HttpSession session) {
	// MemberBean memberBean = (MemberBean)session.getAttribute("LoginOK");
	// rbb.setRtDetailsBean(rtDetailsService.getAllRtDetailsrtId(rtid));
	// rbb.setMemberBean(memberBean);
	// Timestamp outDate = new Timestamp(System.currentTimeMillis());
	// rbb.setReTime(outDate);
	// rtBookingService.insertRtBooking(rbb);
	//
	// return "restaurant/Individualdetails";
	// }

	// /前台新增訂單/---------------------------------------------------------------------------------------------

	// 展示餐廳資訊---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/restaurant/{restaurantId}")
	public String rooms(@PathVariable("restaurantId") Integer restaurantId, Model model) {

		// review
		// 評等
		List<Long> ranks = reviewService.getRankByRestaurantId(restaurantId);
		Integer rankSize = 0;
		for (Long rank : ranks) {
			Integer tmp = rank.intValue();
			rankSize += tmp;
		}
		// 避免0/0
		if (rankSize == 0) {
			rankSize = -1;
		}
		model.addAttribute("rankSize", rankSize);
		model.addAttribute("ranks", ranks);
		// 評論bean
		List<ReviewBean> reviews = reviewService.getReviewsByRestaurantId(restaurantId);
		model.addAttribute("reviews", reviews);

		return "/restaurant/Individualdetails";
	}

	// /展示餐廳資訊/---------------------------------------------------------------------------------------------
	
	// 處理照片請求
		// 相片都保存在C:\\temp\\
		@RequestMapping(value = "/getPicture/rtImage/{photoName:.+}", method = RequestMethod.GET)
		public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable String photoName) {

			HttpHeaders headers = new HttpHeaders();
			ByteArrayOutputStream baos = null;
			int len = 0;
			byte[] media = null;

			try (InputStream is = new FileInputStream("C:/temp/rtImage/" + photoName)) {
				baos = new ByteArrayOutputStream();
				byte[] b = new byte[8192];

				while ((len = is.read(b)) != -1) {
					baos.write(b, 0, len);
				}
			} catch (IOException e) {
				throw new RuntimeException("ProductController 的  getPicture() 發生 IOException:" + e.getMessage());
			}
			media = baos.toByteArray();
			headers.setCacheControl(CacheControl.noCache().getHeaderValue());
			String mimeType = context.getMimeType(photoName);
			// headers.setContentType(MediaType.IMAGE_JPEG);
			headers.setContentType(MediaType.parseMediaType(mimeType));
			ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);

			return responseEntity;
		}

	// ---------測試------------------------測試------------------測試----------------測試-------------

	// 新增訂單頁面 樣板

	@RequestMapping(value = "/RtAllList")
	public String allList(Model model) {
		return "/restaurant/RtAllList";
	}

	// ---------測試------------------------測試------------------測試----------------測試-------------

}

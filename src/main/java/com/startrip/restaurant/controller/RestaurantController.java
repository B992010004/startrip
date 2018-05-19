package com.startrip.restaurant.controller;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.member.Service.MemberServiceInterface;
import com.startrip.member.memberModle.MemberBean;
import com.startrip.restaurant.model.RtBookingBean;
import com.startrip.restaurant.model.RtDetailsBean;
import com.startrip.restaurant.service.RtBookingService;
import com.startrip.restaurant.service.RtDetailsService;
import com.startrip.reviews.model.RestaurantReview;
import com.startrip.reviews.service.RestaurantReviewService;

@Controller
public class RestaurantController {

	@Autowired
	RtDetailsService rtDetailsService;

	@Autowired
	RtBookingService rtBookingService;

	@Autowired
	MemberServiceInterface memberservice;

	@Autowired
	RestaurantReviewService restaurantReviewService;

	@Autowired
	ServletContext context;

	// 前台餐廳首頁---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/restaurantHome")
	public String getAllListRtDetails(Model model) {
		List<RtDetailsBean> list = rtDetailsService.getAll();
		List<RtDetailsBean> list2 = rtDetailsService.getrtArea();
		List<RtDetailsBean> list3 = rtDetailsService.getrtPricepountH();
		List<RtDetailsBean> list4 = rtDetailsService.getrtPricepountM();
		List<RtDetailsBean> list5 = rtDetailsService.getrtPricepountL();

		String[] photoArr = null;

		for (RtDetailsBean bean : list) {
			if (bean.getPhotoPaths() != null) {
				photoArr = bean.getPhotoPaths().split(";");
				bean.setPhotoArr(photoArr);
			}
		}

		for (RtDetailsBean bean : list2) {
			if (bean.getPhotoPaths() != null) {
				photoArr = bean.getPhotoPaths().split(";");
				bean.setPhotoArr(photoArr);
			}
		}

		for (RtDetailsBean bean : list3) {
			if (bean.getPhotoPaths() != null) {
				photoArr = bean.getPhotoPaths().split(";");
				bean.setPhotoArr(photoArr);
			}
		}

		for (RtDetailsBean bean : list4) {
			if (bean.getPhotoPaths() != null) {
				photoArr = bean.getPhotoPaths().split(";");
				bean.setPhotoArr(photoArr);
			}
		}

		for (RtDetailsBean bean : list5) {
			if (bean.getPhotoPaths() != null) {
				photoArr = bean.getPhotoPaths().split(";");
				bean.setPhotoArr(photoArr);
			}
		}

		model.addAttribute("RtDetails", list);
		model.addAttribute("nearby", list2);
		model.addAttribute("HH", list3);
		model.addAttribute("MM", list4);
		model.addAttribute("LL", list5);
		return "restaurant/restaurantHome";
	}

	// /前台餐廳首頁/--------------------------------------------------------------------------------------------

	// 前台餐廳總覽---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/RtAllList")
	public String getAllRt(Model model) {

		List<RtDetailsBean> list = rtDetailsService.getAllOne();
		String[] photoArr = null;
		for (RtDetailsBean bean : list) {
			if (bean.getPhotoPaths() != null) {
				photoArr = bean.getPhotoPaths().split(";");
				bean.setPhotoArr(photoArr);
			}
		}
		model.addAttribute("RtDetails", list);
		return "restaurant/RtAllList";
	}

	// /前台餐廳總覽/---------------------------------------------------------------------------------------------

	// 前台新增訂單---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/reservation/{rtId}", method = RequestMethod.GET)
	public String insertRtBooking(@PathVariable("rtId") Integer rtId,Model model) {
		
		RtDetailsBean rbb = rtDetailsService.getAllRtDetailsrtId(rtId);
		RtBookingBean rtBookingBean = new RtBookingBean();
		model.addAttribute("RtDetailsBean", rbb);
		model.addAttribute("RtBookingBean", rtBookingBean);
		
		return "restaurant/reservation";
	}

	@RequestMapping(value = "/insertRtBooking/", method = RequestMethod.POST)
	public String insertRtBooking(@ModelAttribute("RtBookingBean") RtBookingBean rbb, Model model , BindingResult result, HttpServletRequest request,
			HttpSession session) {

		MemberBean memberBean = (MemberBean) session.getAttribute("LoginOK");
		Timestamp outDate = new Timestamp(System.currentTimeMillis());
		rbb.setReTime(outDate);
		rbb.setMemberId(memberBean.getMemberid());
		rtBookingService.insertRtBooking(rbb);

		return "restaurant/Individualdetails";
	}

	// /前台新增訂單/---------------------------------------------------------------------------------------------

	// 展示餐廳資訊---------------------------------------------------------------------------------------------

	@RequestMapping(value = "/restaurant/{restaurantId}")
	public String rooms(@PathVariable("restaurantId") Integer restaurantId, Model model) {

		RtDetailsBean photoBn = rtDetailsService.getAllRtDetailsrtId(restaurantId);
		String[] photoArr = null;
		String[] photo = photoBn.getPhotoPaths().split(";");
		String OneImage1 = photo[0].toString();
		String OneImage2 = photo[1].toString();
		String OneImage3 = photo[2].toString();
		String OneImage4 = photo[3].toString();
		String OneImage5 = photo[4].toString();
		String OneImage6 = photo[5].toString();
		model.addAttribute("OneImage1", OneImage1);
		model.addAttribute("OneImage2", OneImage2);
		model.addAttribute("OneImage3", OneImage3);
		model.addAttribute("OneImage4", OneImage4);
		model.addAttribute("OneImage5", OneImage5);
		model.addAttribute("OneImage6", OneImage6);

		// ----------------------------------------------------------------------------

		RtDetailsBean rdb = rtDetailsService.getAllRtDetailsrtId(restaurantId);
		model.addAttribute("RtId", rdb);

		// ----------------------------------------------------------------------------

		// review
		// 評等
		List<Long> ranks = restaurantReviewService.getRankByRestaurantId(restaurantId);
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
		List<RestaurantReview> reviews = restaurantReviewService.getRestaurantReviewsByRestaurantId(restaurantId);
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

}

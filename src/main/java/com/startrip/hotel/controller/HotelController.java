package com.startrip.hotel.controller;

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

import com.startrip.hotel.model.SearchHotel;
import com.startrip.hotel.model.persistent.HotelsBean;
import com.startrip.hotel.model.service.HotelServiceInterface;
import com.startrip.reviews.model.HotelReview;
import com.startrip.reviews.service.HotelReviewService;

@Controller
public class HotelController {

	@Autowired
	HotelServiceInterface hotelService;

	@Autowired
	ServletContext context;

	// 評論內容
	@Autowired
	HotelReviewService hotelReviewService;

	// 以下非會員也可瀏覽
	@RequestMapping(value = "/Hotels")
	public String hotels(Model model) {
		return "hotel/Hotels";
	}

	@RequestMapping(value = "/HotelsSearchResult")
	public String hotelsSearchResult(Model model, SearchHotel searchHotel) {
		String[] photoArr = null;

		System.out.println(searchHotel);
		// System.out.println("搜尋結果: " + hotelService.selectByCriteria(searchHotel));
		List<HotelsBean> list = hotelService.selectByCriteria(searchHotel);
		for (HotelsBean bean : list) {
			photoArr = bean.getPhotoString().split(";");
			bean.setPhotoArr(photoArr);
		}

		model.addAttribute("results", list);
		return "hotel/HotelsSearchResult";
	}

	@RequestMapping(value = "/Rooms/{hotelId}")
	public String rooms(@PathVariable("hotelId") Integer hotelId, Model model) {

		// Hotel資訊
		HotelsBean bean = hotelService.selectByPk(hotelId);
		// 將PhotoPath分割
		//此法比較好 不用在Bean裡面寫程式
		String[] photoArr = null;
		photoArr = bean.getPhotoString().split(";");
		bean.setPhotoArr(photoArr);
		model.addAttribute("hotel", bean);

		// review
		// 評等
		List<Long> ranks = hotelReviewService.getRankByHotelId(hotelId);
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
		List<HotelReview> reviews = hotelReviewService.getHotelReviewsByHotelId(hotelId);
		model.addAttribute("reviews", reviews);

		return "hotel/Rooms";
	}

	@RequestMapping(value = "/Booking/{hotelId}/{typeId}")
	public String hotelCheckout(@PathVariable("hotelId") Integer hotelId, @PathVariable("hotelId") Integer typeId,Model model) {
		// Hotel資訊
		HotelsBean bean = hotelService.selectByPk(hotelId);
		// 將PhotoPath分割
		String[] photoArr = null;
		photoArr = bean.getPhotoString().split(";");
		bean.setPhotoArr(photoArr);
		model.addAttribute("hotel", bean);

		return "hotel/Booking";
	}

	@RequestMapping(value = "/Payment_Creditcard")
	public String paymentCreditcard(Model model) {
		return "hotel/Payment_Creditcard";
	}

	@RequestMapping(value = "/Payment_Allpay")
	public String paymentAllpay(Model model) {
		return "hotel/Payment_Allpay";
	}

	@RequestMapping(value = "/PayEnd")
	public String payEnd(Model model) {
		return "hotel/PayEnd";
	}

	@RequestMapping(value = "/getPicture/hotel/{hotelId}/{photoName:.+}")
	public ResponseEntity<byte[]> getHotelPicture(HttpServletResponse resp, @PathVariable String hotelId,
			@PathVariable String photoName) {
		HttpHeaders headers = new HttpHeaders();
		ByteArrayOutputStream baos = null;
		int len = 0;
		byte[] media = null;

		// 7以下的id為靜態資料
		if (Integer.valueOf(hotelId) <= 7) {

			InputStream is = context
					.getResourceAsStream("/WEB-INF/views/assets/images/hotels/" + hotelId + "/" + photoName);
			baos = new ByteArrayOutputStream();
			byte[] b = new byte[8192];
			try {
				while ((len = is.read(b)) != -1) {
					baos.write(b, 0, len);
				}
			} catch (Exception e) {
				throw new RuntimeException("productcontroller的getpicture發生IOException" + e.getMessage());
			}
			media = baos.toByteArray();
		} else {
			try (InputStream is = new FileInputStream("C:/temp/hotel/" + hotelId + "/" + photoName)) {
				baos = new ByteArrayOutputStream();
				byte[] b = new byte[8192];

				while ((len = is.read(b)) != -1) {
					baos.write(b, 0, len);
				}
			} catch (IOException e) {
				throw new RuntimeException("ProductController 的  getPicture() 發生 IOException:" + e.getMessage());
			}
			media = baos.toByteArray();
		}

		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(photoName);
		headers.setContentType(MediaType.IMAGE_JPEG);
		headers.setContentType(MediaType.parseMediaType(mimeType));
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);

		return responseEntity;
	}
	// 以上非會員也可瀏覽
}

package com.startrip.hotel.controller;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.startrip.hotel.model.HotelsBean;
import com.startrip.hotel.model.Rooms;
import com.startrip.hotel.model.SearchHotel;
import com.startrip.hotel.service.HotelServiceInterface;
import com.startrip.hotel.service.RoomsServiceInterface;
import com.startrip.restaurant.service.RtDetailsService;
import com.startrip.reviews.model.HotelReview;
import com.startrip.reviews.service.HotelReviewService;

@Controller
public class HotelController {

	@Autowired
	HotelServiceInterface hotelService;

	@Autowired
	RoomsServiceInterface roomsServiceInterface;

	@Autowired
	ServletContext context;

	@Autowired
	RtDetailsService rtDetailsService;

	// 評論內容
	@Autowired
	HotelReviewService hotelReviewService;

	// 以下非會員也可瀏覽

	@RequestMapping(value = "/HotelsSearchResult")
	public String hotelsSearchResult(Model model, SearchHotel searchHotel, HttpServletRequest request)
			throws ParseException {
		String[] photoArr = null;

		// System.out.println("搜尋結果: " + hotelService.selectByCriteria(searchHotel));
		// List<HotelsBean> list = hotelService.selectByCriteria(searchHotel);
		// 分頁 先固定傳7筆
		List<HotelsBean> list = hotelService.selectPage(0, 5);
		for (HotelsBean bean : list) {
			photoArr = bean.getPhotoString().split(";");
			bean.setPhotoArr(photoArr);
		}

		// 搜尋字串丟session保存
		HttpSession session = request.getSession();
		session.setAttribute("searchBean", searchHotel);

		model.addAttribute("results", list);
		return "hotel/HotelsSearchResult";
	}

	@RequestMapping(value = "/Rooms/{hotelId}")
	public String rooms(@PathVariable("hotelId") Integer hotelId, Model model) {

		// Hotel資訊
		HotelsBean bean = hotelService.selectByPk(hotelId);
		// 將PhotoPath分割
		// 此法比較好 不用在Bean裡面寫程式
		String[] photoArr = null;
		photoArr = bean.getPhotoString().split(";");
		bean.setPhotoArr(photoArr);
		model.addAttribute("hotel", bean);

		// review
		// 評等
		// [星等, 數量]
		List<Object[]> rankList = hotelReviewService.getRankByHotelId(hotelId);
		Integer rankSize = 0;
		int[] rankArr = { 0, 0, 0, 0, 0 };
		// 根本不能轉型成Integer[]??
		for (Object[] intArr : rankList) {
			// 用String取值超彆扭
			// 避免NullException
			if (intArr[0] != null) {
				String var = intArr[0].toString();
				int toInt = Integer.valueOf(var);
				rankArr[toInt - 1] = Integer.valueOf(intArr[1].toString());
				rankSize += Integer.valueOf(intArr[1].toString());

			}
		}

		System.out.println("rankArr=    " + Arrays.toString(rankArr));
		// 避免0/0
		if (rankSize == 0) {
			rankSize = -1;
		}
		model.addAttribute("rankSize", rankSize);
		model.addAttribute("rankArr", rankArr);

		// 評論bean
		List<HotelReview> reviews = hotelReviewService.getHotelReviewsByHotelId(hotelId);
		model.addAttribute("reviews", reviews);

		// 房型
		// Group by 失敗
		List<Rooms> roomList = roomsServiceInterface.selectByHotelIdGroupByType(hotelId);
		String[] serviceArr = null;
		for (Rooms room : roomList) {
			serviceArr = room.getService().split(";");
			room.setServiceArr(serviceArr);
		}
		String[] facilityArr = null;
		for (Rooms room : roomList) {
			facilityArr = room.getFacility().split(";");
			room.setFacilityArr(facilityArr);
		}
		String[] roomPhotoArr = null;
		for (Rooms room : roomList) {
			roomPhotoArr = room.getPhotoString().split(";");
			room.setPhotoArr(roomPhotoArr);
		}

		model.addAttribute("roomList", roomList);

		return "hotel/Rooms";
	}

	@RequestMapping(value = "/Booking/{hotelId}/{roomType}")
	public String hotelCheckout(@PathVariable("hotelId") Integer hotelId, @PathVariable("roomType") Integer roomType,
			Model model, HttpServletRequest request) {
		// Hotel資訊
		HotelsBean bean = hotelService.selectByPk(hotelId);
		// 將PhotoPath分割
		String[] photoArr = null;
		photoArr = bean.getPhotoString().split(";");
		bean.setPhotoArr(photoArr);

		// 目前並沒有房型資料
		// roomtype 塞hotelBean裡
		bean.setRoomtype(roomType);
		model.addAttribute("hotel", bean);

		// 房型資訊
		// 應該照選定房型選出來
		// 目前groupByType未完成
		List<Rooms> roomList = roomsServiceInterface.selectByHotelIdGroupByType(hotelId);
		String[] roomPhotoArr = null;
		for (Rooms room : roomList) {
			roomPhotoArr = room.getPhotoString().split(";");
			room.setPhotoArr(roomPhotoArr);
		}

		Rooms room = roomList.get(0);
		model.addAttribute("room", room);

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

	@RequestMapping(value = "/getPicture/rooms/{hotelId}/{photoName:.+}")
	public ResponseEntity<byte[]> getRoomPicture(HttpServletResponse resp, @PathVariable String hotelId,
			@PathVariable String photoName) {
		HttpHeaders headers = new HttpHeaders();
		ByteArrayOutputStream baos = null;
		int len = 0;
		byte[] media = null;

		// 7以下的id為靜態資料
		if (Integer.valueOf(hotelId) <= 7) {

			InputStream is = context
					.getResourceAsStream("/WEB-INF/views/assets/images/hotels/" + hotelId + "/rooms/" + photoName);
			baos = new ByteArrayOutputStream();
			byte[] b = new byte[8192];
			try {
				while ((len = is.read(b)) != -1) {
					baos.write(b, 0, len);
				}
			} catch (Exception e) {
				throw new RuntimeException("productcontroller的getRoomPicture發生IOException" + e.getMessage());
			}
			media = baos.toByteArray();
		} else {
			try (InputStream is = new FileInputStream("C:/temp/hotel/" + hotelId + "/rooms/" + photoName)) {
				baos = new ByteArrayOutputStream();
				byte[] b = new byte[8192];

				while ((len = is.read(b)) != -1) {
					baos.write(b, 0, len);
				}
			} catch (IOException e) {
				throw new RuntimeException("ProductController 的  getRoomPicture() 發生 IOException:" + e.getMessage());
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

	@RequestMapping(value = "/pages", method = RequestMethod.GET)
	public ResponseEntity<HashMap<String, Object>> pages(@RequestParam Integer page) {
		int firstIdex = page * 5;
		int count = 5;
		List<HotelsBean> list = hotelService.selectPage(firstIdex, count);
		for (HotelsBean bean : list) {
			String[] photoArr = bean.getPhotoString().split(";");
			bean.setPhotoArr(photoArr);
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("hotels", list);
		map.put("counts", hotelService.count().get(0));
		return new ResponseEntity<HashMap<String, Object>>(map, HttpStatus.OK);
	}

	// 以上非會員也可瀏覽
}

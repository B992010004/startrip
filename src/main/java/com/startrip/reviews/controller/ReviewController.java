package com.startrip.reviews.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.startrip.reviews.model.HotelReview;
import com.startrip.reviews.model.RestaurantReview;
import com.startrip.reviews.service.HotelReviewService;
import com.startrip.reviews.service.RestaurantReviewService;

@Controller
public class ReviewController {

	@Autowired
	HotelReviewService hotelReviewService;

	@Autowired
	RestaurantReviewService restaurantReviewService;

	@Autowired
	ServletContext context;

	@RequestMapping(value = "/review/UserReviewEdit/{hotelId}", method = RequestMethod.GET)
	public String getAddNewUserReviewEdit(@PathVariable("hotelId") Integer hotelId, Model model) {
		// bug紀錄: 這段程式碼有分數有空缺會有問題

		HotelReview hr = new HotelReview();
		model.addAttribute("reviewBean", hr);

		return "review/UserReviewEdit";
	}

	@RequestMapping(value = "/review/restaurantReviewEdit/{restaurantId}", method = RequestMethod.GET)
	public String getAddNewRestaurantReviewEdit(@PathVariable("restaurantId") Integer restaurantId, Model model) {
		// bug紀錄: 這段程式碼有分數有空缺會有問題

		RestaurantReview rr = new RestaurantReview();
		model.addAttribute("reviewBean", rr);

		return "review/RestaurantReviewEdit";
	}

	// 可以一次上傳多張相片!!
	// 照片存本地
	// 檔名存資料庫
	@RequestMapping(value = "/review/UserReviewEdit/{hotelId}", method = RequestMethod.POST)
	public String processAddNewUserReviewEdit(@PathVariable("hotelId") Integer hotelId,
			@ModelAttribute("reviewBean") HotelReview hr, BindingResult result, HttpServletRequest requset)
			throws ParseException {
		// String[] suppressedFields = result.getSuppressedFields();
		// if (suppressedFields.length > 0) {
		// throw new RuntimeException("嘗試傳入不允許的欄位: " +
		// StringUtils.arrayToCommaDelimitedString(suppressedFields));
		// }

		hr.setHotelId(hotelId);
		String fileurl = "";
		StringBuffer fileNameBuffer = new StringBuffer();
		MultipartFile[] avatas = hr.getMultipartFiles();
		for (MultipartFile avata : avatas) {
			if (avata.isEmpty() || !isImage(avata)) {
				System.out.println("無法找到文件或不是照片類型");
			} else {
				System.out.println("文件長度: " + avata.getSize());
				System.out.println("文件類型: " + avata.getContentType());
				System.out.println("文件名稱: " + avata.getName());
				System.out.println("文件原名: " + avata.getOriginalFilename());
				System.out.println("========================================");
				// String rootDirectory =
				// request.getSession().getServletContext().getRealPath("/");
				String rootDirectory = "C:\\temp\\reviewUpload\\";
				System.out.println(rootDirectory);
				int i = avata.getOriginalFilename().lastIndexOf(".");// 返回最後一個點的位置

				String extension = avata.getOriginalFilename().substring(i + 1);// 取出擴展名
				String filename = UUID.randomUUID().toString() + "." + extension;
				fileurl = filename;
				fileNameBuffer.append(filename + ";");
				try {
					File imageFolder = new File(rootDirectory, "hotel");
					if (!imageFolder.exists()) {
						imageFolder.mkdirs();
					}
					File file = new File(imageFolder, fileurl);
					avata.transferTo(file);
					hr.setPhotoPaths(fileNameBuffer.toString());
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		// MultipartFile productImage = rb.getProductImage();
		// String originalFilename = productImage.getOriginalFilename();
		// rb.setPhotoPath(photoPath);
		// String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		// String rootDirectory =
		// request.getSession().getServletContext().getRealPath("/");

		// if (productImage != null && !productImage.isEmpty()) {
		// try {
		// byte[] b = productImage.getBytes();
		// Blob blob = new SerialBlob(b);
		// bb.setCoverImage(blob);
		// } catch (Exception e) {
		// e.printStackTrace();
		// throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
		// }
		// }

		// 不知道為什麼無法使用自動注入
		hr.setVisited(Date.valueOf(requset.getParameter("visited")));
		hotelReviewService.addHotelReview(hr);
		System.out.println("準備return");
		return "redirect:/Rooms/" + hotelId;
	}

	// 可以一次上傳多張相片!!
	// 照片存本地
	// 檔名存資料庫
	@RequestMapping(value = "/review/restaurantReviewEdit/{restaurantId}", method = RequestMethod.POST)
	public String processAddNewRestaurantReviewEdit(@PathVariable("restaurantId") Integer restaurantId,
			@ModelAttribute("reviewBean") RestaurantReview rr, BindingResult result, HttpServletRequest requset)
			throws ParseException {

		rr.setRestaurantId(restaurantId);
		String fileurl = "";
		StringBuffer fileNameBuffer = new StringBuffer();
		MultipartFile[] avatas = rr.getMultipartFiles();
		for (MultipartFile avata : avatas) {
			if (avata.isEmpty() || !isImage(avata)) {
				System.out.println("無法找到文件或不是照片類型");
			} else {
				System.out.println("文件長度: " + avata.getSize());
				System.out.println("文件類型: " + avata.getContentType());
				System.out.println("文件名稱: " + avata.getName());
				System.out.println("文件原名: " + avata.getOriginalFilename());
				System.out.println("========================================");
				// String rootDirectory =
				// request.getSession().getServletContext().getRealPath("/");
				String rootDirectory = "C:\\temp\\reviewUpload\\";
				System.out.println(rootDirectory);
				int i = avata.getOriginalFilename().lastIndexOf(".");// 返回最後一個點的位置

				String extension = avata.getOriginalFilename().substring(i + 1);// 取出擴展名
				String filename = UUID.randomUUID().toString() + "." + extension;
				fileurl = filename;
				fileNameBuffer.append(filename + ";");
				try {
					File imageFolder = new File(rootDirectory, "restaurant");
					if (!imageFolder.exists()) {
						imageFolder.mkdirs();
					}
					File file = new File(imageFolder, fileurl);
					avata.transferTo(file);
					rr.setPhotoPaths(fileNameBuffer.toString());
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		// 不知道為什麼無法使用自動注入
		rr.setVisited(Date.valueOf(requset.getParameter("visited")));
		restaurantReviewService.addRestaurantReview(rr);

		System.out.println("準備return");
		return "redirect:/restaurant/" + restaurantId;
	}

	// 處理照片請求
	// 相片都保存在C:\\temp\\
	@RequestMapping(value = "/getPicture/reviewUpload/hotel/{photoName:.+}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable String photoName) {

		HttpHeaders headers = new HttpHeaders();
		ByteArrayOutputStream baos = null;
		int len = 0;
		byte[] media = null;

		try (InputStream is = new FileInputStream("C:/temp/reviewUpload/hotel/" + photoName)) {
			baos = new ByteArrayOutputStream();
			byte[] b = new byte[8192];

			while ((len = is.read(b)) != -1) {
				baos.write(b, 0, len);
			}
		} catch (IOException e) {
			throw new RuntimeException("HotelReviewController 的  getPicture() 發生 IOException:" + e.getMessage());
		}
		media = baos.toByteArray();
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(photoName);
		// 另一種寫法
		// headers.setContentType(MediaType.IMAGE_JPEG);
		headers.setContentType(MediaType.parseMediaType(mimeType));
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);

		return responseEntity;
	}
	
		// 處理照片請求 餐廳的
		// 相片都保存在C:\\temp\\
		@RequestMapping(value = "/getPicture/reviewUpload/restaurant/{photoName:.+}", method = RequestMethod.GET)
		public ResponseEntity<byte[]> getRestaurantPicture(HttpServletResponse resp, @PathVariable String photoName) {

			HttpHeaders headers = new HttpHeaders();
			ByteArrayOutputStream baos = null;
			int len = 0;
			byte[] media = null;

			try (InputStream is = new FileInputStream("C:/temp/reviewUpload/restaurant/" + photoName)) {
				baos = new ByteArrayOutputStream();
				byte[] b = new byte[8192];

				while ((len = is.read(b)) != -1) {
					baos.write(b, 0, len);
				}
			} catch (IOException e) {
				throw new RuntimeException("HotelReviewController 的  getRestaurantPicture() 發生 IOException:" + e.getMessage());
			}
			media = baos.toByteArray();
			headers.setCacheControl(CacheControl.noCache().getHeaderValue());
			String mimeType = context.getMimeType(photoName);
			// 另一種寫法
			// headers.setContentType(MediaType.IMAGE_JPEG);
			headers.setContentType(MediaType.parseMediaType(mimeType));
			ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);

			return responseEntity;
		}

	// 好像沒發生作用 後來我硬塞
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false); // true 它會自動幫你「減」一個月
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));// 第二个参数是控制是否支持传入的值是空，这个值很关键，如果指定为false，那么如果前台没有传值的话就会报错
	}

	private boolean isImage(MultipartFile file) {
		return file.getContentType().startsWith("image");
	}

}

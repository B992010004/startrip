package com.startrip.reviews.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
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
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.startrip.reviews.model.ReviewBean;
import com.startrip.reviews.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	ReviewService reviewService;

	@Autowired
	ServletContext context;

	@RequestMapping(value = "/review/UserReviewEdit/{hotelId}", method = RequestMethod.GET)
	public String getAddNewUserReviewEdit(@PathVariable("hotelId") Integer hotelId, Model model) {
		// bug紀錄: 這段程式碼有分數有空缺會有問題

		ReviewBean rb = new ReviewBean();
		model.addAttribute("reviewBean", rb);

		return "review/UserReviewEdit";
	}

	// 可以一次上傳多張相片!!
	// 照片存本地
	// 檔名存資料庫
	@RequestMapping(value = "/review/UserReviewEdit/{hotelId}", method = RequestMethod.POST)
	public String processAddNewUserReviewEdit(@PathVariable("hotelId") Integer hotelId,
			@ModelAttribute("reviewBean") ReviewBean rb, BindingResult result, HttpServletRequest request) {
		// String[] suppressedFields = result.getSuppressedFields();
		// if (suppressedFields.length > 0) {
		// throw new RuntimeException("嘗試傳入不允許的欄位: " +
		// StringUtils.arrayToCommaDelimitedString(suppressedFields));
		// }
		rb.setHotelId(hotelId);
		String fileurl = "";
		StringBuffer fileNameBuffer = new StringBuffer();
		MultipartFile[] avatas = rb.getMultipartFiles();
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
				String rootDirectory = "C:\\temp\\";
				System.out.println(rootDirectory);
				int i = avata.getOriginalFilename().lastIndexOf(".");// 返回最後一個點的位置

				String extension = avata.getOriginalFilename().substring(i + 1);// 取出擴展名
				String filename = UUID.randomUUID().toString() + "." + extension;
				fileurl = filename;
				fileNameBuffer.append(filename + ";");
				try {
					File imageFolder = new File(rootDirectory, "reviewUpload");
					if (!imageFolder.exists()) {
						imageFolder.mkdirs();
					}
					File file = new File(imageFolder, fileurl);
					avata.transferTo(file);
					rb.setPhotoPaths(fileNameBuffer.toString());
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

		reviewService.addReview(rb);
		System.out.println("準備return");
		return "redirect:/Rooms/" + hotelId;
	}

	// 處理照片請求
	// 相片都保存在C:\\temp\\
	@RequestMapping(value = "/getPicture/reviewUpload/{photoName:.+}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable String photoName) {

		HttpHeaders headers = new HttpHeaders();
		ByteArrayOutputStream baos = null;
		int len = 0;
		byte[] media = null;

		try (InputStream is = new FileInputStream("C:/temp/reviewUpload/" + photoName)) {
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

	private boolean isImage(MultipartFile file) {
		return file.getContentType().startsWith("image");
	}

}

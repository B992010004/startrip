package com.startrip.reviews.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.reviews.model.ReviewBean;
import com.startrip.reviews.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;

	@RequestMapping(value = "/review/UserReviewEdit", method = RequestMethod.GET)
	public String getAddNewUserReviewEdit(Model model) {
		ReviewBean rb = new ReviewBean();
		model.addAttribute("reviewBean", rb);
		return "review/UserReviewEdit";
	}
		

	@RequestMapping(value = "/review/UserReviewEdit", method = RequestMethod.POST)
	public String processAddNewUserReviewEdit(@ModelAttribute("reviewBean") ReviewBean rb, BindingResult result,
			HttpServletRequest request) {
//		String[] suppressedFields = result.getSuppressedFields();
//		if (suppressedFields.length > 0) {
//			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//		}
//		MultipartFile productImage = rb.getProductImage();
//		String originalFilename = productImage.getOriginalFilename();
//		bb.setFileName(originalFilename);
//
//		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
//		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
//
//		if (productImage != null && !productImage.isEmpty()) {
//			try {
//				byte[] b = productImage.getBytes();
//				Blob blob = new SerialBlob(b);
//				bb.setCoverImage(blob);
//			} catch (Exception e) {
//				e.printStackTrace();
//				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
//			}
//
//		}
//
		reviewService.addReview(rb);;
//
//		try {
//			File imageFolder = new File(rootDirectory, "imageszzz");
//			if (!imageFolder.exists()) {
//				imageFolder.mkdirs();
//			}
//			File file = new File(imageFolder, bb.getBookId() + ext);
//			productImage.transferTo(file);
//		} catch (Exception e) {
//			e.printStackTrace();
//			throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
//		}
		return "redirect:/";
	}
	
}

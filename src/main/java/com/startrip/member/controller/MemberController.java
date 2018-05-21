package com.startrip.member.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.startrip.member.Service.MemberServiceInterface;
import com.startrip.member.controller.md5.MD5Util;
import com.startrip.member.memberModle.MemberBean;
import com.startrip.restaurant.model.RtBookingBean;
import com.startrip.restaurant.model.RtDetailsBean;
import com.startrip.restaurant.service.RtBookingService;
import com.startrip.restaurant.service.RtDetailsService;

@Controller
public class MemberController {
	@Autowired
	RtBookingService rtBookingService;
	@Autowired
	RtDetailsService rtDetailsService;
	@Autowired
	MemberServiceInterface memberservice;

	@Autowired
	ServletContext context;

	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("LoginOK");
		return "index";
	}

	@RequestMapping(value = "/selectdata/{memberid}", method = RequestMethod.GET)
	public String selectdata(Model model, HttpServletRequest request, @PathVariable int memberid) {

		List<RtBookingBean> rbList = rtBookingService.getRtBookingmember(memberid);
		if (rbList != null) {
			for (RtBookingBean bean : rbList) {
				RtDetailsBean rtdbean = rtDetailsService.getAllRtDetailsrtId(bean.getRtId());
				bean.setRtname(rtdbean.getRtName());
			}
			model.addAttribute("rtlist", rbList);
		}
		return "/member/mydata";
	}

	@RequestMapping(value = "/deletedata", method = RequestMethod.GET)
	public void deletedata(Model model, HttpServletRequest request,HttpServletResponse response) throws IOException {
      String bgida=request.getParameter("bgId"); 
      int  bgid= Integer.parseInt(bgida);
        boolean ny=  rtBookingService.deleteRtBookingbgId(bgid);
        response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
        if(ny) {writer.println(1); }
		else {writer.println(0);}
	}
	
	
	
	@RequestMapping(value = "/getrtPicture/{rtId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getrtPicture(HttpServletResponse resp, @PathVariable int rtId) {
		RtDetailsBean rtbean = rtDetailsService.getAllRtDetailsrtId(rtId);
		String photoName = rtbean.getPhotoPaths();
		String[] photoNameArr = photoName.split(";");
		HttpHeaders headers = new HttpHeaders();
		ByteArrayOutputStream baos = null;
		int len = 0;
		byte[] media = null;

		try (InputStream is = new FileInputStream("C:/temp/rtImage/" + photoNameArr[0])) {
			baos = new ByteArrayOutputStream();
			byte[] b = new byte[8192];

			while ((len = is.read(b)) != -1) {
				baos.write(b, 0, len);
			}
		} catch (IOException e) {
			throw new RuntimeException("getPicture() 發生 IOException:" + e.getMessage());
		}
		media = baos.toByteArray();
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(photoNameArr[0]);
		// headers.setContentType(MediaType.IMAGE_JPEG);
		headers.setContentType(MediaType.parseMediaType(mimeType));
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);

		return responseEntity;
	}

	@RequestMapping(value = "/member/insertMember", method = RequestMethod.GET)
	public String InsertMember(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "/member/insertMember";
	}

	@RequestMapping(value = "/member/insertMember", method = RequestMethod.POST)
	public String InsertMember(@ModelAttribute("MemberBean") MemberBean mb, BindingResult result,
			HttpServletRequest request) {
		MultipartFile avatarImage = mb.getAvatarImage();
		System.out.println(avatarImage);

		if (avatarImage != null) {
			String originalFilename = avatarImage.getOriginalFilename();
			if (originalFilename == "") {
				mb.setPhoto(null);
				mb.setAvatar("user.jpg");
				memberservice.insert(mb);
				return "index";
			} else {
				String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
				// 寫進資料庫
				try {
					byte[] b = avatarImage.getBytes();
					Blob blob = new SerialBlob(b);
					mb.setPhoto(blob);
				} catch (Exception e) {
					e.printStackTrace();
					throw new RuntimeException("檔案上傳發生異常" + e.getMessage());
				}
				mb.setAvatar(mb.getMail() + ext);
				memberservice.insert(mb);

				// 照片存進資料夾
				String rootDirectory = "C:\\temp\\";
				String fileurl = mb.getMail() + ext;
				try {
					File imageFolder = new File(rootDirectory, "memberIcon");
					if (!imageFolder.exists()) {
						imageFolder.mkdirs();
					}
					File file = new File(imageFolder, fileurl);
					avatarImage.transferTo(file);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				return "index";
			}
		}
		return "index";
	}

	@RequestMapping(value = "/LoginServlet", method = RequestMethod.POST)
	public String Login(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		String mail = request.getParameter("mail");
		String password = request.getParameter("password");
		String remember = request.getParameter("remember");
		System.out.println("remember= " + remember);
		Cookie mailcookie = new Cookie("mail", mail);
		Cookie passwordcookie = new Cookie("password", password);
		Cookie remembercookie = new Cookie("remember", remember);
		MemberBean mm = memberservice.select(mail);
		if (mm != null && password.equals(mm.getPassword())) {
			session.setAttribute("LoginOK", mm);
			
			if (remember != null) {
				mailcookie.setMaxAge(60 * 60 * 24 * 7);
				passwordcookie.setMaxAge(60 * 60 * 24 * 7);
				remembercookie.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(mailcookie);
				response.addCookie(passwordcookie);
				response.addCookie(remembercookie);

			} else {
				session.removeAttribute("rememberme");
				mailcookie.setMaxAge(0);
				passwordcookie.setMaxAge(0);
				remembercookie.setMaxAge(0);
				response.addCookie(mailcookie);
				response.addCookie(passwordcookie);
				response.addCookie(remembercookie);
			}
			return "redirect:/";
		} else {
			return null;
		}
	}

	@RequestMapping(value = "/chickpassword", method = RequestMethod.POST)
	public void chickpassword(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String mail = request.getParameter("mail");
		String password = request.getParameter("password");
		String gRecaptchaResponse = request.getParameter("recaptcha");
		boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);
		MemberBean mm = memberservice.select(mail);
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (verify && mm != null && password.equals(mm.getPassword())) {
			out.print(0);
		} else if (verify == false) {
			out.print(1);
		} else {
			out.print(2);
		}
	}

	@RequestMapping(value = "/ModifyMember", method = RequestMethod.GET)
	public String ModifyMember(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "/member/ModifyMember";
	}

	@RequestMapping(value = "/ModifyMember", method = RequestMethod.POST)
	public String ModifyMember(@ModelAttribute("MemberBean") MemberBean mb, BindingResult result,
			HttpServletRequest request) {
		MultipartFile avatarImage = mb.getAvatarImage();
		String originalFilename = avatarImage.getOriginalFilename();
		if (avatarImage != null) {
			if (originalFilename == "") {
				mb.setAvatar(mb.getAvatar());
				MemberBean ma = memberservice.select(mb.getMail());
				mb.setPhoto(ma.getPhoto());
			} else {
				String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
				mb.setAvatar(mb.getMail() + ext);
				try {
					byte[] b = avatarImage.getBytes();
					Blob blob = new SerialBlob(b);
					mb.setPhoto(blob);
				} catch (Exception e) {
					e.printStackTrace();
					throw new RuntimeException("檔案上傳發生異常" + e.getMessage());
				}
			}
		}

		Timestamp outDate = new Timestamp(System.currentTimeMillis() + 30 * 60 * 1000);// 30分钟后过期
		mb.setRegisterDate(outDate);
		mb.setValidataCode(null);
		System.out.println(mb);
		memberservice.update(mb);
		return "index";
	}

	@RequestMapping(value = "/getPicture/{mail:.+}")
	public ResponseEntity<byte[]> getPicture(@PathVariable String mail) {
		MemberBean bean = memberservice.select(mail);
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

	// 處理照片請求
	// 相片都保存在C:\\temp\\
	@RequestMapping(value = "/getPicture/memberIcon/{photoName:.+}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPictureLocal(HttpServletResponse resp, @PathVariable String photoName) {

		HttpHeaders headers = new HttpHeaders();
		ByteArrayOutputStream baos = null;
		int len = 0;
		byte[] media = null;
		if (!photoName.equalsIgnoreCase("user.jpg")) {
			try (InputStream is = new FileInputStream("C:/temp/memberIcon/" + photoName)) {
				baos = new ByteArrayOutputStream();
				byte[] b = new byte[8192];

				while ((len = is.read(b)) != -1) {
					baos.write(b, 0, len);
				}
			} catch (IOException e) {
				throw new RuntimeException("ProductController 的  getPicture() 發生 IOException:" + e.getMessage());
			}

		} else {
			InputStream is = context.getResourceAsStream("/WEB-INF/views/assets/images/membericon/user.jpg");
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
		}
		media = baos.toByteArray();
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(photoName);
		// headers.setContentType(MediaType.IMAGE_JPEG);
		headers.setContentType(MediaType.parseMediaType(mimeType));
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);

		return responseEntity;
	}

	@RequestMapping(value = "/checkid", method = RequestMethod.GET)
	public void repeat(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String mail = request.getParameter("mail");
		MemberBean mm = memberservice.select(mail);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		if (mm == null) {
			writer.println("0");
		} else {
			writer.println("1");
		}
	}

	// @ExceptionHandler(NotFoundException.class)
	// public ModelAndView handleError(HttpServletRequest request,
	// NotFoundException exception) {
	// ModelAndView mv=new ModelAndView();
	// mv.addObject("invalidBookId",exception.getMail());
	// mv.addObject("exception",exception);
	// mv.addObject("url",request.getRequestURI()+"?"+request.getQueryString());
	// mv.setViewName("/index");
	// return mv;
	// }

	@RequestMapping(value = "/member/forgetpassword", method = RequestMethod.GET)
	public String forgetPass(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "/member/forgetpassword";
	}

	@RequestMapping(value = "/member/forgetpassword", method = RequestMethod.POST)
	@ResponseBody
	public void forgetPass(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String mail = request.getParameter("mail");
		MemberBean mb = memberservice.select(mail);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		if (mb == null) { // 用户名不存在
			writer.println(1);
		} else {
			try {
				String secretKey = UUID.randomUUID().toString(); // 密钥
				Timestamp outDate = new Timestamp(System.currentTimeMillis() + 30 * 60 * 1000);// 30分钟后过期
				long date = outDate.getTime() / 1000 * 1000; // 忽略毫秒数
				mb.setValidataCode(secretKey);
				mb.setRegisterDate(outDate);
				memberservice.update(mb); // 保存到数据库
				String key = mb.getMail() + "$" + date + "$" + secretKey;
				String digitalSignature = MD5Util.MD5Encode(key, "UTF-8"); // 数字签名

				String emailTitle = "StarTrip";
				String path = request.getContextPath();
				String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
						+ path + "/";
				String resetPassHref = basePath + "member/changepassword?sid=" + digitalSignature + "&mail="
						+ mb.getMail();
				String emailContent = "點選下方連結重設密碼" + resetPassHref + " 30分鐘後郵件失效，感謝您對StarTrip的支持";
				System.out.print(resetPassHref);
				sendmail send = new sendmail();
				send.sendemail(emailTitle, emailContent, mb.getMail());
				writer.println(0);
			} catch (Exception e) {
				e.printStackTrace();
				writer.println(2);
			}
		}
	}

	@RequestMapping(value = "/member/changepassword", method = RequestMethod.GET)
	public String checkResetLink(Model model, String sid, String mail) {
		String msg = "";
		if (sid.equals("") || mail.equals("")) {
			msg = "連結網址不正確，請重新申請找回密碼，將於五秒後返回首頁";
			model.addAttribute("msg", msg);
			return "/member/error";
		}
		MemberBean mb = memberservice.select(mail);

		if (mb == null) {
			msg = "連結網址不正確，請重新申請找回密碼，將於五秒後返回首頁";
			model.addAttribute("msg", msg);
			return "/member/error";
		}
		Timestamp outDate = (Timestamp) mb.getRegisterDate();
		if (outDate.getTime() <= System.currentTimeMillis()) { // 表示已经过期
			msg = "連結網址已過期，請重新申請找回密碼，將於五秒後返回首頁";
			model.addAttribute("msg", msg);
			return "/member/error";
		}
		String key = mb.getMail() + "$" + outDate.getTime() / 1000 * 1000 + "$" + mb.getValidataCode();
		// 数字签名
		String digitalSignature = MD5Util.MD5Encode(key, "UTF-8");
		System.out.println(key + "\t" + digitalSignature);
		if (!digitalSignature.equals(sid)) {
			msg = "連結網址不正確，請重新申請找回密碼，將於五秒後返回首頁";
			model.addAttribute("msg", msg);
			return "/member/error";
		}
		model.addAttribute("change", mb);
		return "/member/changepassword";
	}

	@RequestMapping(value = "/selectrt", method = RequestMethod.POST)
	public void selectrt(HttpServletRequest request, HttpServletResponse response) {

	}

	@RequestMapping(value = "/changepassword", method = RequestMethod.POST)
	public String changepassword(HttpServletRequest request, HttpServletResponse response) {
		String mail = request.getParameter("ckmail");
		String password = request.getParameter("ckpassword");
		memberservice.changepassword(mail, password);
		return "/index";
	}
}

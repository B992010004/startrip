package com.startrip.member.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.startrip.member.Service.MemberServiceInterface;
import com.startrip.member.memberModle.MemberBean;

import javassist.NotFoundException;

@Controller
public class MemberController {

	@Autowired
	MemberServiceInterface memberservice;
	@Autowired
	ServletContext context;

	@RequestMapping(value = "/insertMember", method = RequestMethod.GET)
	public String InsertMember(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "/member/insertMember";
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("LoginOK");
		return "index";
	}

	@RequestMapping(value = "/insertMember", method = RequestMethod.POST)
	public String InsertMember(@ModelAttribute("MemberBean") MemberBean mb, BindingResult result,
			HttpServletRequest request) {
		MultipartFile avatarImage = mb.getAvatarImage();
		System.out.println(avatarImage);
		if (avatarImage != null) {
			String originalFilename = avatarImage.getOriginalFilename();
			if(originalFilename=="") {
				mb.setPhoto(null);
				mb.setAvatar("");
				memberservice.insert(mb);
				return "index";
			}
			String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
			String rootDirectory = request.getSession().getServletContext().getRealPath("/");
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

			try {
				File imageFolder = new File(rootDirectory, "membericon");
				if (!imageFolder.exists())
					imageFolder.mkdirs();
				File file = new File(imageFolder, mb.getMail() + ext);
				avatarImage.transferTo(file);

			} catch (Exception e) {
				throw new RuntimeException("檔案上傳發生異常" + e.getMessage());
			}
			return "index";
		} else {			
			return "index";
		}
	}

	@RequestMapping(value = "/LoginServlet", method = RequestMethod.POST)
	public String Login(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("error");
		String mail = request.getParameter("mail");
		String password = request.getParameter("password");
		MemberBean mm = memberservice.select(mail);
		if (mm != null && password.equals(mm.getPassword())) {
			session.setAttribute("LoginOK", mm);
			return "redirect:/";
		} else {
			return null;
		}
	}

	@RequestMapping(value = "/chickpassword", method = RequestMethod.POST)
	public void chickpassword(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String mail = request.getParameter("mail");
		String password = request.getParameter("password");		
		MemberBean mm = memberservice.select(mail);		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (mm != null && password.equals(mm.getPassword())) {
			out.print(0);		
		} else {
			out.print(1);
			
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
		System.out.println(originalFilename);
		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		mb.setAvatar(mb.getMail() + ext);
		if (avatarImage != null) {
			try {
				byte[] b = avatarImage.getBytes();
				Blob blob = new SerialBlob(b);
				mb.setPhoto(blob);

			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常" + e.getMessage());
			}
		}
		memberservice.update(mb.getMail(), mb.getPassword(), mb.getUsername(), mb.getAddress(), mb.getPhone(),
				mb.getBirthday(), mb.getAvatar(), mb.getPhoto());

		try {
			File imageFolder = new File(rootDirectory, "images");
			if (!imageFolder.exists())
				imageFolder.mkdirs();
			File file = new File(imageFolder, mb.getMail() + ext);
			avatarImage.transferTo(file);

		} catch (Exception e) {
			throw new RuntimeException("檔案上傳發生異常" + e.getMessage());
		}
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
			InputStream is = context.getResourceAsStream("/resources/images/user.jpg");
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
			writer.println("<font color=\"green\">恭喜您，可以注册！</font>");
		} else {
			writer.println("<font color=\"red\">您输入的用户名存在！请重新输入！</font>");
		}
	}
	@ExceptionHandler(NotFoundException.class)
	public ModelAndView handleError(HttpServletRequest request,
			NotFoundException exception) {
		ModelAndView mv=new ModelAndView();
//		mv.addObject("invalidBookId",exception.getMail());
		mv.addObject("exception",exception);
		mv.addObject("url",request.getRequestURI()+"?"+request.getQueryString());
		mv.setViewName("/index");	               
		return mv;
	}
}

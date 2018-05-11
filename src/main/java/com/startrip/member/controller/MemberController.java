package com.startrip.member.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;
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
			if (originalFilename == "") {
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
		if (originalFilename != "") {
			String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
			String rootDirectory = request.getSession().getServletContext().getRealPath("/");
			mb.setAvatar(mb.getMail() + ext);
			try {
				File imageFolder = new File(rootDirectory, "images");
				if (!imageFolder.exists())
					imageFolder.mkdirs();
				File file = new File(imageFolder, mb.getMail() + ext);
				avatarImage.transferTo(file);

			} catch (Exception e) {
				throw new RuntimeException("檔案上傳發生異常" + e.getMessage());
			}
		}
		mb.setAvatar(mb.getMail());
		Timestamp outDate = new Timestamp(System.currentTimeMillis()+30*60*1000);//30分钟后过期				
		 mb.setRegisterDate(outDate);
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
				mb.getBirthday(), mb.getAvatar(), mb.getPhoto(), mb.getRegisterDate(), mb.getValidataCode());

		
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

	// @RequestMapping(value = "/user/i_forget_password")
	// @ResponseBody
	// public Map forgetPass(HttpServletRequest request,String mail){
	// MemberBean mb = memberservice.select(mail);
	// Map map = new HashMap<String ,String >();
	// String msg = "";
	// if(mb.getMail() == null){ //用户名不存在
	// msg = "用户名不存在,你不会忘记用户名了吧?";
	// map.put("msg",msg);
	// return map;
	// }
	// try{
	// String secretKey= UUID.randomUUID().toString(); //密钥
	// Timestamp outDate = new
	// Timestamp(System.currentTimeMillis()+30*60*1000);//30分钟后过期
	// long date = outDate.getTime()/1000*1000; //忽略毫秒数
	// mb.setValidataCode(secretKey);
	// mb.setRegisterDate(outDate);
	// userService.update(); //保存到数据库
	// String key = users.getUserName()+"$"+date+"$"+secretKey;
	// String digitalSignature = MD5.MD5Encode(key); //数字签名
	//
	// String emailTitle = "有方云密码找回";
	// String path = request.getContextPath();
	// String basePath =
	// request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	// String resetPassHref =
	// basePath+"user/reset_password?sid="+digitalSignature+"&userName="+users.getUserName();
	// String emailContent = "请勿回复本邮件.点击下面的链接,重设密码<br/><a href="+resetPassHref +"
	// target='_BLANK'>点击我重新设置密码</a>" +
	// "<br/>tips:本邮件超过30分钟,链接将会失效，需要重新申请'找回密码'"+key+"\t"+digitalSignature;
	// System.out.print(resetPassHref);
	// SendMail.getInstatnce().sendHtmlMail(emailTitle,emailContent,users.getEmail());
	// msg = "操作成功,已经发送找回密码链接到您邮箱。请在30分钟内重置密码";
	// logInfo(request,userName,"申请找回密码");
	// }catch (Exception e){
	// e.printStackTrace();
	// msg="邮箱不存在？未知错误,联系管理员吧。";
	// }
	// map.put("msg",msg);
	// return map;
	// }
	// @RequestMapping(value = "/user/reset_password",method = RequestMethod.GET)
	// public ModelAndView checkResetLink(String sid,String userName){
	// ModelAndView model = new ModelAndView("error");
	// String msg = "";
	// if(sid.equals("") || userName.equals("")){
	// msg="链接不完整,请重新生成";
	// model.addObject("msg",msg) ;
	// logInfo(userName,"找回密码链接失效");
	// return model;
	// }
	// Users users = userService.findUserByName(userName);
	// if(users == null){
	// msg = "链接错误,无法找到匹配用户,请重新申请找回密码.";
	// model.addObject("msg",msg) ;
	// logInfo(userName,"找回密码链接失效");
	// return model;
	// }
	// Timestamp outDate = users.getRegisterDate();
	// if(outDate.getTime() <= System.currentTimeMillis()){ //表示已经过期
	// msg = "链接已经过期,请重新申请找回密码.";
	// model.addObject("msg",msg) ;
	// logInfo(userName,"找回密码链接失效");
	// return model;
	// }
	// String key =
	// users.getUserName()+"$"+outDate.getTime()/1000*1000+"$"+users.getValidataCode();
	// //数字签名
	// String digitalSignature = MD5.MD5Encode(key);
	// System.out.println(key+"\t"+digitalSignature);
	// if(!digitalSignature.equals(sid)) {
	// msg = "链接不正确,是否已经过期了?重新申请吧";
	// model.addObject("msg",msg) ;
	// logInfo(userName,"找回密码链接失效");
	// return model;
	// }
	// model.setViewName("user/reset_password"); //返回到修改密码的界面
	// model.addObject("userName",userName);
	// return model;
	// }
}

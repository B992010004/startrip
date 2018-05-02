package com.startrip.member.controller;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.startrip.member.Service.MemberServiceInterface;
import com.startrip.member.memberModle.MemberBean;

@Controller
public class MemberController {

	@Autowired
	MemberServiceInterface memberservice;
	@Autowired
	ServletContext context;

	@RequestMapping(value = "insertMember", method = RequestMethod.GET)
	public String InsertMember(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("MemberBean", mb);
		return "/member/insertMember";
	}

	@RequestMapping(value = "insertMember", method = RequestMethod.POST)
	public String InsertMember(@ModelAttribute("MemberBean") MemberBean mb, BindingResult result,
			HttpServletRequest request) {
		
		MultipartFile avatarImage = mb.getAvatarImage();
		System.out.println(avatarImage);
		String originalFilename = avatarImage.getOriginalFilename();		
		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		mb.setAvatar(mb.getMail()+ext);
		memberservice.insert(mb);
		try {
			File imageFolder = new File(rootDirectory, "images");
			if (!imageFolder.exists())
				imageFolder.mkdirs();
			File file = new File(imageFolder, mb.getMail()+ext);
			avatarImage.transferTo(file);

		} catch (Exception e) {
			throw new RuntimeException("檔案上傳發生異常" + e.getMessage());
		}
		return "index";
	}

}

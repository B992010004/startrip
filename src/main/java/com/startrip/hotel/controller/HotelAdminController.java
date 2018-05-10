package com.startrip.hotel.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.startrip.hotel.model.persistent.FacilitylistBean;
import com.startrip.hotel.model.persistent.HotelsBean;
import com.startrip.hotel.model.persistent.PhotoBean;
import com.startrip.hotel.model.persistent.PhotonameBean;
import com.startrip.hotel.model.persistent.RoomtypeBean;
import com.startrip.hotel.model.persistent.ServicelistBean;
import com.startrip.hotel.model.service.HotelAdminService;

@Controller
public class HotelAdminController {
	
	private static String fileRootPath = "C:/temp/hotels/";
	
	@Autowired
	HotelAdminService hotelAdminService;

	@Autowired
	ServletContext context;

	// 以下功能會員專用
	@RequestMapping(value = "/admin/HostManage")
	public String hostManage(Model model, HttpSession session) {

		return "hotel/admin/HostManage";
	}

	@RequestMapping(value = "/admin/HostConnect_Orders")
	public String hostConnectOrders(Model model) {
		return "hotel/admin/HostConnect_Orders";
	}

	@RequestMapping(value = "/admin/HostConnect_AddHotel")
	public String hostConnectCheckHotel(Model model, HttpServletRequest request, HttpSession session) {
		Integer temp = (Integer) session.getAttribute("hotelid");
		if (temp != null) {
			session.removeAttribute("hotelid");
			System.out.println("新增前刪除已存在的hotelid");
		}
		System.out.println("add hotel");
		return "redirect:/admin/HostConnect_Hotel";
	}

	@RequestMapping(value = "/admin/HostConnect_Hotel")
	public String hostConnectHotel(Model model, HttpServletRequest request, HttpSession session) {

		String hotelidtemp = request.getParameter("hotelid");
		
		if (hotelidtemp != null) {
			Integer hotelid = Integer.valueOf(hotelidtemp);
			System.out.println("hotelid = " + hotelid);
			session.setAttribute("hotelbean", hotelAdminService.selectHotelByPk(hotelid));
		}

		return "hotel/admin/HostConnect_Hotel";
	}

	@RequestMapping(value = "/admin/HostConnect_Info", method = RequestMethod.POST)
	public String hostConnectInfoNextPage(Model model, @RequestParam String name, @RequestParam String phone,
			@RequestParam String address, @RequestParam Integer star, HttpSession session) {

		System.out.println("name=" + name + ", phone=" + phone + ", address=" + address + ", star=" + star);

		HotelsBean bean =  (HotelsBean) session.getAttribute("hotelbean");

		if (bean != null) {
			System.out.println("變更飯店基本資料");
			bean.setHotelname(name);
			bean.setHotelphone(phone);
			bean.setHoteladdress(address);
			bean.setHotelstar(star);
			hotelAdminService.updateHotel(bean);
		} else {
			bean = new HotelsBean();
			bean.setHotelname(name);
			bean.setHotelphone(phone);
			bean.setHoteladdress(address);
			bean.setHotelstar(star);
			bean.setHotelstate(1);
			System.out.println("新增飯店基本資料");
			Integer pk = hotelAdminService.insertHotel(bean);
			bean.setHotelid(pk);
			session.setAttribute("hotelbean", bean);
		}

		return "redirect:/admin/HostConnect_Info";
	}

	@RequestMapping(value = "/admin/HostConnect_Info", method = RequestMethod.GET)
	public String hostConnectInfo(Model model, HttpSession session, HttpServletRequest request) {


		return "hotel/admin/HostConnect_Info";
	}

	@RequestMapping(value = "/admin/HostConnect_Service", method = RequestMethod.POST)
	public String hostConnectServiceNextPage(Model model, HttpSession session, @RequestParam String info,
			@RequestParam String note) {
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		
		StringBuilder sb = new StringBuilder();
		
		
		String[] infos =info.split("\\n\\n");
		int i = 1;
		for (String s : infos) {
			System.out.println(s);
			sb.append(s);
			if(i != infos.length) {
				sb.append("<br>");
				i++;
			}
		}
		
		String[] notes = note.split("\\n\\n");
		i = 1;
		for (String s : notes) {
			System.out.println(s);
			sb.append(s);
			if(i != notes.length) {
				sb.append("<br>");
				i++;
			}
		}
		note = sb.toString();
		
		bean.setHotelinfo(info);
		bean.setHotelrulenote(note);

		hotelAdminService.updateHotel(bean);
		String rulenote = note.replaceAll("<br>", "&#10;").replaceAll(" ", "");
		String hotelinfo = info.replaceAll("<br>", "&#10;").replaceAll(" ", "");
		bean.setHotelrulenote(rulenote);
		bean.setHotelinfo(hotelinfo);
		return "redirect:/admin/HostConnect_Service";
	}

	@RequestMapping(value = "/admin/HostConnect_Service", method = RequestMethod.GET)
	public String hostConnectService(Model model, HttpSession session, HttpServletRequest request) {
		 HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		 Integer hotelid = bean.getHotelid();
		 
		request.setAttribute("facilityname", hotelAdminService.selectFacilityname());
		request.setAttribute("servicename", hotelAdminService.selectServicename());
		request.setAttribute("facilitylist", hotelAdminService.selectFacilitylistByHotelid(hotelid));
		request.setAttribute("servicelist", hotelAdminService.selectServicelistByHotelid(hotelid));
		request.setAttribute("hotel", hotelAdminService.selectHotelByPk(hotelid));

		return "hotel/admin/HostConnect_Service";
	}

	@RequestMapping(value = "/admin/HostConnect_Rooms", method = RequestMethod.POST)
	public String hostConnectRoomsNextPage(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam Integer refund, @RequestParam Integer advanceday) {
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		bean.setAdvancedayid(advanceday);
		bean.setRefundid(refund);

		hotelAdminService.updateHotel(bean);

		Integer hotelid = bean.getHotelid();
		String[] service = request.getParameterValues("service");
		hotelAdminService.deleteServicelistByHotelid(hotelid);
		if (service != null) {
			ServicelistBean temp1 = new ServicelistBean();
			for (String s : service) {
				temp1.setHotelid(hotelid);
				System.out.println(s);
				Integer serviceid = Integer.valueOf(s);
				temp1.setServiceid(serviceid);
				hotelAdminService.insertServicelist(temp1);
			}

		}

		String[] facility = request.getParameterValues("facility");
		hotelAdminService.deleteFacilitylistByHotelid(hotelid);
		if (facility != null) {
			FacilitylistBean temp2 = new FacilitylistBean();
			for (String s : facility) {
				temp2.setHotelid(hotelid);
				System.out.println(s);
				Integer facilityid = Integer.valueOf(s);
				temp2.setFacilityid(facilityid);
				hotelAdminService.insertFacilitylist(temp2);
			}

		}

		return "redirect:/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/AjaxChangeRoomtype", method = RequestMethod.POST)
	public void hostConnectRoomsChange(@RequestParam Integer roomid, Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");

		System.out.println("get request from ajax");

		String name = request.getParameter("name");
		if ("(空)".equals(name)) {
			name = null;
		}

		Integer people = null;
		Integer rooms = null;
		String peopletemp = request.getParameter("people");
		if (peopletemp != null) {
			people = Integer.valueOf(peopletemp);
		}
		String roomstemp = request.getParameter("rooms");
		if (roomstemp != null) {
			rooms = Integer.valueOf(roomstemp);
		}
		hotelAdminService.updateRoomtype(roomid, name, people, rooms);

		PrintWriter out;
		try {
			out = response.getWriter();
			out.write("request ok");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/admin/HostConnect_Rooms", method = RequestMethod.GET)
	public String hostConnectRooms(Model model, HttpServletRequest request, HttpSession session) {
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		Integer hotelid = bean.getHotelid();
		
		request.setAttribute("roomtypelist", hotelAdminService.selectRoomtypeByHotelid(hotelid));

		return "hotel/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/AddRoom", method = RequestMethod.POST)
	public String hostConnectRoomsAddRoom(Model model, HttpSession session, @RequestParam String name,
			@RequestParam Integer people, @RequestParam Integer rooms) {
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		Integer hotelid = bean.getHotelid();
		System.out.println(hotelid);
		
		RoomtypeBean room = new RoomtypeBean();
		room.setHotelid(hotelid);
		room.setRoomname(name);
		room.setNumberofpeople(people);
		room.setNumberofrooms(rooms);
		room.setRoomstate(false);
		hotelAdminService.insertRoomtype(room);

		return "redirect:/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/DeleteRoom", method = RequestMethod.POST)
	public String hostConnectRoomsDeleteRoom(Model model, HttpSession session, @RequestParam Integer roomid) {

		RoomtypeBean bean = new RoomtypeBean();
		bean.setRoomid(roomid);
		hotelAdminService.deleteRoomtype(bean);
		return "redirect:/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/HostConnect_Roomset")
	public String hostConnectRoomset(Model model, @RequestParam Integer roomid) {
		System.out.println("roomid = " + roomid);
		model.addAttribute("roomid", roomid);

		RoomtypeBean bean = hotelAdminService.selectRoomtypeByPk(roomid);

		if (bean.getOpendate() != null && bean.getEnddate() != null) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/M/d");
			model.addAttribute("roomtype", bean);
			model.addAttribute("opendate", sdf.format(bean.getOpendate()));
			model.addAttribute("enddate", sdf.format(bean.getEnddate()));
		}

		return "hotel/admin/HostConnect_Roomset";
	}

	@RequestMapping(value = "/admin/Roomsetting", method = RequestMethod.POST)
	public String hostConnectRoomsetSave(Model model, HttpServletRequest request, @RequestParam Integer roomid,
			@RequestParam Integer price, @RequestParam String roomnote) {
		System.out.println("setting roomid = " + roomid);
		String checkintemp = request.getParameter("checkin").replaceAll("/", "-");
		String checkouttemp = request.getParameter("checkout").replaceAll("/", "-");
		java.sql.Date checkin = java.sql.Date.valueOf(checkintemp);
		java.sql.Date checkout = java.sql.Date.valueOf(checkouttemp);
		System.out.println(checkin);
		System.out.println(checkout);
		hotelAdminService.updateRoomtype(roomid, checkin, checkout, price, roomnote);

		return "redirect:/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/HostConnect_Bookingday")
	public String hostConnectBookingday(Model model) {
		return "hotel/admin/HostConnect_Bookingday";
	}

	@RequestMapping(value = "/admin/AjaxImageUpload", method = RequestMethod.POST)
	public void hostConnectImageUpload(Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		Integer hotelid = bean.getHotelid();
		System.out.println("開始上傳圖片");

		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());

		System.out.println(multipartResolver.isMultipart(request));

		if (multipartResolver.isMultipart(request)) {
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			List<MultipartFile> photos = multiRequest.getFiles("photos[]");

//			List<Map<String, String>> photoList = new ArrayList<>();
			Integer count = hotelAdminService.countPhotoByHotelid(hotelid);
			for (MultipartFile photo : photos) {
				if (photo.isEmpty() || !photo.getContentType().startsWith("image")) {
					System.out.println("無法找到文件或不是照片類型");
				} else {
					System.out.println("文件長度: " + photo.getSize());
					System.out.println("文件類型: " + photo.getContentType());
					System.out.println("文件名稱: " + photo.getName());
					System.out.println("文件原名: " + photo.getOriginalFilename());
					System.out.println("========================================");

					String fileurl = "";
//					StringBuffer fileNameBuffer = new StringBuffer();
//					 String rootDirectory =
//					 request.getSession().getServletContext().getRealPath("/");
					 String rootDirectory = fileRootPath;
					System.out.println(rootDirectory);
					int i = photo.getOriginalFilename().lastIndexOf(".");// 返回最後一個點的位置

					String extension = photo.getOriginalFilename().substring(i + 1);// 取出擴展名
					String filename = UUID.randomUUID().toString() + "." + extension;
					fileurl = filename;
					//fileNameBuffer.append(filename + ";");

					try {
						//File imageFolder = new File(rootDirectory, "hotelid_" + hotelid);
						File imageFolder = new File(rootDirectory, "hotelid_"+hotelid);
						
						if (!imageFolder.exists()) {
							imageFolder.mkdirs();
						}
						File file = new File(imageFolder, fileurl);
						photo.transferTo(file);

						PhotoBean photobean = new PhotoBean();
						photobean.setHotelid(hotelid);
						//String temp = fileNameBuffer.toString();
						photobean.setFilename("hotelid_" + hotelid + "/" + filename);
						
						photobean.setPhotosorting(count + 1);
						
						hotelAdminService.insertPhoto(photobean);


//						System.out.println(bean.getPhotoid() + " : " + bean.getPhotosorting());
//						Map<String, String> photoMap = new TreeMap<>();
//						photoMap.put("photoid", bean.getPhotoid().toString());
//						photoMap.put("photopath", bean.getFilename());
//						photoMap.put("photosorting", bean.getPhotosorting().toString());
//						photoList.add(photoMap);

					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}

				}
			}
//			Gson gson = new Gson();
//			String photoJson = gson.toJson(photoList);
//			System.out.println(photoJson);
//			PrintWriter out;
//			try {
//				out = response.getWriter();
//				out.write(photoJson);
//			} catch (IOException e) {
//				e.printStackTrace();
//			}

		}

	}

	@RequestMapping(value = "/admin/HostConnect_Image")
	public String hostConnectImage(Model model,HttpSession session,HttpServletRequest request) {
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		Integer hotelid = bean.getHotelid();
		
		Integer count = hotelAdminService.countPhotoByHotelid(hotelid);
		request.setAttribute("count", count);
		
		List<PhotonameBean> namelist = hotelAdminService.selectPhotoname();
		request.setAttribute("namelist", namelist);
		
		List<PhotoBean> photos = hotelAdminService.selectPhotoByHotelid(hotelid);
		request.setAttribute("photos", photos);
		
		return "hotel/admin/HostConnect_Image";
	}
	
	@RequestMapping(value="/admin/deletephoto/{photoid}",method = RequestMethod.POST)
	public void hostConnectDeleteImage(Model model,@PathVariable Integer photoid,HttpServletResponse response) {
		System.out.println("Delete photo by id = " + photoid);
		
		PhotoBean bean = hotelAdminService.selectPhotoByPk(photoid);
		String filename = bean.getFilename();
		
		
		hotelAdminService.deletePhotoByPk(bean);
		
		File file = new File(fileRootPath + filename);
		if(file.exists()) {
			System.out.println("開始刪除檔案  ==> " + file.getName());
			file.delete();
		}
		
		PrintWriter out;
		try {
			out = response.getWriter();
			out.write("delete ok");
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value="/admin/photo/{photoid}")
	public ResponseEntity<byte[]> hostConnectImageIO(Model model,@PathVariable Integer photoid,HttpSession session,HttpServletRequest request,HttpServletResponse response) {
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		Integer hotelid = bean.getHotelid();
		
		
		System.out.println("photoid = "+photoid);
		PhotoBean photobean = hotelAdminService.selectPhotoByPk(photoid);
		System.out.println("photobean = " + photobean);
		System.out.println("filename = "+ photobean.getFilename());

		HttpHeaders headers = new HttpHeaders();
		ByteArrayOutputStream baos = null;
		int len = 0;
		byte[] media = null;
		
		try (InputStream is = new FileInputStream(fileRootPath+photobean.getFilename())){
		    baos = new ByteArrayOutputStream();
			byte[] b = new byte[8192];
			
			while((len = is.read(b)) != -1 ) {
				baos.write(b, 0, len);
			}
		} catch (IOException e) {
			throw new RuntimeException("ProductController 的  getPicture() 發生 IOException:" + e.getMessage());
		}
		media = baos.toByteArray();
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		headers.setContentType(MediaType.IMAGE_JPEG);

		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
		
	}

	@RequestMapping(value = "/admin/HostConnect_Onsale",method = RequestMethod.POST)
	public String hostConnectOnsaleNextPage(Model model,@RequestParam Integer[] sort,HttpServletRequest request) {
		int i = 1;
		for(Integer photoid:sort) {
			String temp = request.getParameter("photoname"+photoid);
			Integer photonameid = null;
			if(temp != null && !"0".equals(temp)) {
				 photonameid = Integer.valueOf(temp);				
				System.out.println(photonameid);
			}else {
				
			}
			System.out.println(photoid);
			System.out.println("--------");
			hotelAdminService.updatePhoto(photoid, photonameid,i++);
			
			
		}
		return "redirect:/admin/HostConnect_Onsale";
	}
	
	@RequestMapping(value = "/admin/HostConnect_Onsale",method = RequestMethod.GET)
	public String hostConnectOnsale(Model model) {
		return "hotel/admin/HostConnect_Onsale";
	}
	
	
	// 以上功能會員專用

}

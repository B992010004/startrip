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
import com.startrip.member.memberModle.MemberBean;

@Controller
public class HotelAdminController {

	private static final String FILE_ROOT_PATH = "C:/temp/hotels/";
	private static final String REDIRECT_ROOT_PATH = "redirect:/";

	@Autowired
	HotelAdminService hotelAdminService;

	@Autowired
	ServletContext context;

	// 以下功能會員專用
	@RequestMapping(value = "/admin/HostManage", method = RequestMethod.GET)
	public String hostManage(Model model, HttpSession session, HttpServletRequest request) {
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		System.out.println(mb);

		if (mb != null) {
			Integer memberid = mb.getMemberid();
			List<HotelsBean> hotelList = hotelAdminService.selectHotelsByMemberid(memberid);
			System.out.println(hotelList);
			if (hotelList != null) {
				request.setAttribute("hotelList", hotelList);
			}

			return "hotel/admin/HostManage";
		} else {
			return REDIRECT_ROOT_PATH;
		}
	}

	@RequestMapping(value = "/admin/HostConnect_Orders")
	public String hostConnectOrders(Model model, HttpSession session) {

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

		return "hotel/admin/HostConnect_Orders";
	}

	@RequestMapping(value = "/admin/HostConnect_AddHotel")
	public String hostConnectCheckHotel(Model model, HttpServletRequest request, HttpSession session) {
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		if (mb == null) {
			return REDIRECT_ROOT_PATH;
		}

		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (bean != null) {
			session.removeAttribute("hotelbean");
			System.out.println("新增前刪除已存在的hotelbean");
		}
		System.out.println("add hotel");
		System.out.println("看這");
		return "redirect:/admin/HostConnect_Hotel";
	}

	@RequestMapping(value = "/admin/HostConnect_Hotel")
	public String hostConnectHotel(Model model, HttpServletRequest request, HttpSession session) {
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		if (mb == null) {
			return REDIRECT_ROOT_PATH;
		}
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
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		if (mb == null) {
			return REDIRECT_ROOT_PATH;
		}

		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");

		if (bean != null) {
			System.out.println("變更飯店基本資料");
			bean.setHotelname(name);
			bean.setHotelphone(phone);
			bean.setHoteladdress(address);
			bean.setHotelstar(star);
			hotelAdminService.updateHotel(bean);
		} else {
			bean = new HotelsBean();
			bean.setHotelmanagerid(mb.getMemberid());
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
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

		return "hotel/admin/HostConnect_Info";
	}

	@RequestMapping(value = "/admin/HostConnect_Service", method = RequestMethod.POST)
	public String hostConnectServiceNextPage(Model model, HttpSession session, @RequestParam String info,
			@RequestParam String note) {
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

		StringBuilder sb = new StringBuilder();

		String[] infos = info.split("\\n\\n");
		int i = 1;
		for (String s : infos) {
			System.out.println(s);
			sb.append(s);
			if (i != infos.length) {
				sb.append("<br>");
				i++;
			}
		}

		String[] notes = note.split("\\n\\n");
		i = 1;
		for (String s : notes) {
			System.out.println(s);
			sb.append(s);
			if (i != notes.length) {
				sb.append("<br>");
				i++;
			}
		}
		note = sb.toString();

		bean.setHotelinfo(info);
		bean.setHotelrulenote(note);

		Integer state = bean.getHotelstate();
		if (state == 1) {
			bean.setHotelstate(2);
		}

		hotelAdminService.updateHotel(bean);
		String rulenote = note.replaceAll("<br>", "&#10;").replaceAll(" ", "");
		String hotelinfo = info.replaceAll("<br>", "&#10;").replaceAll(" ", "");
		bean.setHotelrulenote(rulenote);
		bean.setHotelinfo(hotelinfo);

		return "redirect:/admin/HostConnect_Service";
	}

	@RequestMapping(value = "/admin/HostConnect_Service", method = RequestMethod.GET)
	public String hostConnectService(Model model, HttpSession session, HttpServletRequest request) {
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}
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
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}
		// bean.setAdvancedayid(advanceday);
		// bean.setRefundid(refund);

		Integer state = bean.getHotelstate();
		if (state == 2) {
			bean.setHotelstate(3);
		}
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

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return;
		}

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

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

		Integer hotelid = bean.getHotelid();

		request.setAttribute("roomtypelist", hotelAdminService.selectRoomtypeByHotelid(hotelid));

		return "hotel/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/AddRoom", method = RequestMethod.POST)
	public String hostConnectRoomsAddRoom(Model model, HttpSession session, @RequestParam String name,
			@RequestParam Integer people, @RequestParam Integer rooms) {

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

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

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

		RoomtypeBean roombean = new RoomtypeBean();
		roombean.setRoomid(roomid);
		hotelAdminService.deleteRoomtype(roombean);
		return "redirect:/admin/HostConnect_Rooms";
	}

	@RequestMapping(value = "/admin/HostConnect_Roomset")
	public String hostConnectRoomset(Model model, @RequestParam Integer roomid, HttpSession session) {

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

		System.out.println("roomid = " + roomid);
		model.addAttribute("roomid", roomid);

		RoomtypeBean roombean = hotelAdminService.selectRoomtypeByPk(roomid);

		if (roombean.getOpendate() != null && roombean.getEnddate() != null) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/M/d");
			model.addAttribute("roomtype", roombean);
			model.addAttribute("opendate", sdf.format(roombean.getOpendate()));
			model.addAttribute("enddate", sdf.format(roombean.getEnddate()));
		}

		return "hotel/admin/HostConnect_Roomset";
	}

	@RequestMapping(value = "/admin/Roomsetting", method = RequestMethod.POST)
	public String hostConnectRoomsetSave(Model model, HttpSession session, HttpServletRequest request,
			@RequestParam Integer roomid, @RequestParam Integer price, @RequestParam String roomnote) {

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

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
	public String hostConnectBookingday(Model model, HttpSession session) {

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}
		Integer state = bean.getHotelstate();
		if (state == 3) {
			bean.setHotelstate(4);
		}
		hotelAdminService.updateHotel(bean);

		return "hotel/admin/HostConnect_Bookingday";
	}

	@RequestMapping(value = "/admin/AjaxImageUpload", method = RequestMethod.POST)
	public void hostConnectImageUpload(Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return;
		}

		Integer hotelid = bean.getHotelid();
		System.out.println("開始上傳圖片");

		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());

		System.out.println(multipartResolver.isMultipart(request));

		if (multipartResolver.isMultipart(request)) {
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			List<MultipartFile> photos = multiRequest.getFiles("photos[]");

			// List<Map<String, String>> photoList = new ArrayList<>();
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
					// StringBuffer fileNameBuffer = new StringBuffer();
					// String rootDirectory =
					// request.getSession().getServletContext().getRealPath("/");
					String rootDirectory = FILE_ROOT_PATH;
					System.out.println(rootDirectory);
					int i = photo.getOriginalFilename().lastIndexOf(".");// 返回最後一個點的位置

					String extension = photo.getOriginalFilename().substring(i + 1);// 取出擴展名
					String filename = UUID.randomUUID().toString() + "." + extension;
					fileurl = filename;
					// fileNameBuffer.append(filename + ";");

					try {
						// File imageFolder = new File(rootDirectory, "hotelid_" + hotelid);
						File imageFolder = new File(rootDirectory, "hotelid_" + hotelid);

						if (!imageFolder.exists()) {
							imageFolder.mkdirs();
						}
						File file = new File(imageFolder, fileurl);
						photo.transferTo(file);

						PhotoBean photobean = new PhotoBean();
						photobean.setHotelid(hotelid);
						// String temp = fileNameBuffer.toString();
						photobean.setFilename("hotelid_" + hotelid + "/" + filename);

						photobean.setPhotosorting(count + 1);

						hotelAdminService.insertPhoto(photobean);

						// System.out.println(bean.getPhotoid() + " : " + bean.getPhotosorting());
						// Map<String, String> photoMap = new TreeMap<>();
						// photoMap.put("photoid", bean.getPhotoid().toString());
						// photoMap.put("photopath", bean.getFilename());
						// photoMap.put("photosorting", bean.getPhotosorting().toString());
						// photoList.add(photoMap);

					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}

				}
			}
			// Gson gson = new Gson();
			// String photoJson = gson.toJson(photoList);
			// System.out.println(photoJson);
			// PrintWriter out;
			// try {
			// out = response.getWriter();
			// out.write(photoJson);
			// } catch (IOException e) {
			// e.printStackTrace();
			// }

		}

	}

	@RequestMapping(value = "/admin/HostConnect_Image")
	public String hostConnectImage(Model model, HttpSession session, HttpServletRequest request) {

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

		Integer state = bean.getHotelstate();
		if (state == 4) {
			bean.setHotelstate(5);
		}

		hotelAdminService.updateHotel(bean);

		Integer hotelid = bean.getHotelid();

		Integer count = hotelAdminService.countPhotoByHotelid(hotelid);
		request.setAttribute("count", count);

		List<RoomtypeBean> roomlist = hotelAdminService.selectRoomtypeByHotelid(hotelid);
		request.setAttribute("roomlist", roomlist);

		List<PhotonameBean> namelist = hotelAdminService.selectPhotoname();
		request.setAttribute("namelist", namelist);

		List<PhotoBean> photos = hotelAdminService.selectPhotoByHotelid(hotelid);
		request.setAttribute("photos", photos);

		return "hotel/admin/HostConnect_Image";
	}

	@RequestMapping(value = "/admin/deletephoto/{photoid}", method = RequestMethod.POST)
	public void hostConnectDeleteImage(Model model, @PathVariable Integer photoid, HttpSession session,
			HttpServletResponse response) {
		System.out.println("Delete photo by id = " + photoid);

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return;
		}

		PhotoBean photobean = hotelAdminService.selectPhotoByPk(photoid);
		String filename = photobean.getFilename();

		hotelAdminService.deletePhotoByPk(photobean);

		File file = new File(FILE_ROOT_PATH + filename);
		if (file.exists()) {
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

	@RequestMapping(value = "/admin/photo/{photoid}")
	public ResponseEntity<byte[]> hostConnectImageIO(Model model, @PathVariable Integer photoid, HttpSession session,
			HttpServletRequest request, HttpServletResponse response) {

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return null;
		}

		Integer hotelid = bean.getHotelid();

		System.out.println("photoid = " + photoid);
		PhotoBean photobean = hotelAdminService.selectPhotoByPk(photoid);
		System.out.println("photobean = " + photobean);
		System.out.println("filename = " + photobean.getFilename());

		HttpHeaders headers = new HttpHeaders();
		ByteArrayOutputStream baos = null;
		int len = 0;
		byte[] media = null;

		try (InputStream is = new FileInputStream(FILE_ROOT_PATH + photobean.getFilename())) {
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
		headers.setContentType(MediaType.IMAGE_JPEG);

		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;

	}

	@RequestMapping(value = "/admin/HostConnect_Onsale", method = RequestMethod.POST)
	public String hostConnectOnsaleNextPage(Model model, HttpSession session, HttpServletRequest request) {

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

		Integer hotelid = bean.getHotelid();

		Integer state = bean.getHotelstate();
		if (state == 5) {
			bean.setHotelstate(6);
		}
		hotelAdminService.updateHotel(bean);

		String[] sort = request.getParameterValues("sort");

		if (sort != null) {
			int i = 1;
			for (String s : sort) {
				Integer photoid = Integer.valueOf(s);

				String temp = request.getParameter("photoname" + photoid);
				Integer photonameid = null;
				Integer roomid = null;
				Boolean hotelmainphoto = null;

				if (temp != null && !"0".equals(temp) && temp.matches("\\d")) {
					photonameid = Integer.valueOf(temp);
					System.out.println(photonameid);
				} else if ("0".equals(temp)) {
					photonameid = hotelAdminService.selectPhotonameidForOther();
				} else {
					// main photo zone
					Integer mainphototemp = Integer.valueOf(temp.replaceAll("m", ""));

					if (mainphototemp == 0) {
						hotelmainphoto = true;
					} else {
						roomid = mainphototemp;
					}
				}

				System.out.println(photoid);
				System.out.println("--------");
				hotelAdminService.updatePhoto(photoid, photonameid, i++, roomid, hotelmainphoto);

			}
		}

		return "redirect:/admin/HostConnect_Onsale";
	}

	@RequestMapping(value = "/admin/HostConnect_Onsale", method = RequestMethod.GET)
	public String hostConnectOnsale(Model model, HttpSession session) {
		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

		return "hotel/admin/HostConnect_Onsale";
	}

	public String hostConnectComplate(Model model, HttpSession session) {

		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
		HotelsBean bean = (HotelsBean) session.getAttribute("hotelbean");
		if (mb == null || bean == null) {
			return REDIRECT_ROOT_PATH;
		}

		Integer state = bean.getHotelstate();
		if (state == 6) {
			bean.setHotelstate(7);
		}
		hotelAdminService.updateHotel(bean);

		return "redirect:/admin/HostManage";
	}

	// 以上功能會員專用

}

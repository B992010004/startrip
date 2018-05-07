package com.startrip.hotel.model.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.startrip.hotel.model.persistent.FacilitylistBean;
import com.startrip.hotel.model.persistent.FacilitynameBean;
import com.startrip.hotel.model.persistent.HotelsBean;
import com.startrip.hotel.model.persistent.PhotonameBean;
import com.startrip.hotel.model.persistent.RoomtypeBean;
import com.startrip.hotel.model.persistent.ServicelistBean;
import com.startrip.hotel.model.persistent.ServicenameBean;
import com.startrip.hotel.model.repository.FacilitylistDAO;
import com.startrip.hotel.model.repository.FacilitynameDAO;
import com.startrip.hotel.model.repository.HotelsDAO;
import com.startrip.hotel.model.repository.PhotonameDAO;
import com.startrip.hotel.model.repository.RoomtypeDAO;
import com.startrip.hotel.model.repository.ServicelistDAO;
import com.startrip.hotel.model.repository.ServicenameDAO;

@Service
public class HotelAdminService {
	@Autowired
	HotelsDAO hotels;
	@Autowired
	PhotonameDAO photoname;
	@Autowired
	FacilitynameDAO facilityname;
	@Autowired
	ServicenameDAO servicename;
	@Autowired
	ServicelistDAO servicelist;
	@Autowired
	FacilitylistDAO facilitylist;
	@Autowired
	RoomtypeDAO roomtype;
	
	@Transactional
	public HotelsBean selectHotelByPk(Integer hotelid) {
		return hotels.selectByPk(hotelid);
	}
	@Transactional
	public int insertHotel(HotelsBean bean) {
		System.out.println("開始新增飯店基本資料");
		return hotels.insert(bean);
	}
	@Transactional
	public void updateHotel(Integer hotelid, String name,  String phone,
			 String address,  Integer star) {
		System.out.println("開始更新飯店基本資料");

		HotelsBean bean = hotels.selectByPk(hotelid);
		bean.setHotelname(name);
		bean.setHotelphone(phone);
		bean.setHoteladdress(address);
		bean.setHotelstar(star);
		
	}
	@Transactional
	public void updateHotel(Integer hotelid,String info,String note) {
		System.out.println("開始更新飯店介紹與政策提示");
		HotelsBean bean = hotels.selectByPk(hotelid);
		bean.setHotelinfo(info);
		bean.setHotelrulenote(note);		
	}
	@Transactional
	public void updateHotel(Integer hotelid, Integer refund, Integer advanceday) {
		System.out.println("開始更新飯店介紹與政策提示");
		HotelsBean bean = hotels.selectByPk(hotelid);
		bean.setRefundid(refund);
		bean.setAdvancedayid(advanceday);		
	}

	@Transactional
	public void updateRoomtype(Integer roomid,java.sql.Date checkin,java.sql.Date checkout,Integer price,String roomnote) {
		RoomtypeBean bean = roomtype.selectByPk(roomid);
		bean.setOpendate(checkin);
		bean.setEnddate(checkout);
		bean.setBasicprice(price);
		bean.setRoomnote(roomnote);
		bean.setRoomstate(true);
	}

	
	@Transactional
	public void insertServicelist(ServicelistBean bean) {
		servicelist.insert(bean);
	}
	@Transactional
	public void deleteServicelistByHotelid(Integer hotelid) {
		servicelist.delete(hotelid);
	}
	@Transactional
	public void insertFacilitylist(FacilitylistBean bean) {
		facilitylist.insert(bean);
	}
	@Transactional
	public void deleteFacilitylistByHotelid(Integer hotelid) {
		facilitylist.delete(hotelid);
	}
	@Transactional
	public void insertRoomtype(RoomtypeBean bean) {
		roomtype.insert(bean);
	}
	@Transactional
	public void deleteRoomtype(RoomtypeBean bean) {
		roomtype.delete(bean);
	}
	@Transactional
	public List<ServicenameBean> selectServicename() {
		return servicename.select();
	}
	@Transactional
	public List<FacilitynameBean> selectFacilityname() {
		return facilityname.select();
	}
	
	@Transactional
	public List<PhotonameBean> selectPhotoname() {
		return photoname.select();
	}
	
}

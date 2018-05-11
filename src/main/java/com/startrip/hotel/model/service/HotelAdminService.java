package com.startrip.hotel.model.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.hotel.model.persistent.FacilitylistBean;
import com.startrip.hotel.model.persistent.FacilitynameBean;
import com.startrip.hotel.model.persistent.HotelsBean;
import com.startrip.hotel.model.persistent.PhotoBean;
import com.startrip.hotel.model.persistent.PhotonameBean;
import com.startrip.hotel.model.persistent.RoomtypeBean;
import com.startrip.hotel.model.persistent.ServicelistBean;
import com.startrip.hotel.model.persistent.ServicenameBean;
import com.startrip.hotel.model.repository.FacilitylistDAO;
import com.startrip.hotel.model.repository.FacilitynameDAO;
import com.startrip.hotel.model.repository.HotelsDAO;
import com.startrip.hotel.model.repository.PhotoDAO;
import com.startrip.hotel.model.repository.PhotonameDAO;
import com.startrip.hotel.model.repository.RoomtypeDAO;
import com.startrip.hotel.model.repository.ServicelistDAO;
import com.startrip.hotel.model.repository.ServicenameDAO;

@Service
@Transactional
public class HotelAdminService {
	@Autowired
	HotelsDAO hotels;
	@Autowired
	PhotonameDAO photoname;
	@Autowired
	PhotoDAO photo;
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
	
	public HotelsBean selectHotelByPk(Integer hotelid) {
		return hotels.selectByPk(hotelid);
	}
	public List<HotelsBean> selectHotelsByMemberid(Integer memberid){
		return hotels.selectByMemberid(memberid);
	}

	public int insertHotel(HotelsBean bean) {
		System.out.println("開始新增飯店基本資料");
		return hotels.insert(bean);
	}
	
	public void updateHotel(HotelsBean bean) {
		System.out.println("開始更新飯店介紹與政策提示");
		hotels.update(bean);
	}


	public void updateRoomtype(Integer roomid,java.sql.Date checkin,java.sql.Date checkout,Integer price,String roomnote) {
		RoomtypeBean bean = roomtype.selectByPk(roomid);
		bean.setOpendate(checkin);
		bean.setEnddate(checkout);
		bean.setBasicprice(price);
		bean.setRoomnote(roomnote);
		bean.setRoomstate(true);
	}

	public void updateRoomtype(Integer roomid,String name,Integer people,Integer rooms) {
		RoomtypeBean bean = roomtype.selectByPk(roomid);
		if(name != null) {
			bean.setRoomname(name);
		}
		if(people != null) {
			bean.setNumberofpeople(people);
		}
		if(rooms != null) {
			bean.setNumberofrooms(rooms);
		}
	}
	
	public RoomtypeBean selectRoomtypeByPk(Integer roomid) {
		return roomtype.selectByPk(roomid);
	}
	
	public List<RoomtypeBean> selectRoomtypeByHotelid(Integer hotelid){
		return roomtype.selectByHotelid(hotelid);
	}

	public void insertServicelist(ServicelistBean bean) {
		servicelist.insert(bean);
	}

	public void deleteServicelistByHotelid(Integer hotelid) {
		servicelist.delete(hotelid);
	}

	public void insertFacilitylist(FacilitylistBean bean) {
		facilitylist.insert(bean);
	}

	public void deleteFacilitylistByHotelid(Integer hotelid) {
		facilitylist.deleteByHotelid(hotelid);
	}

	public void insertRoomtype(RoomtypeBean bean) {
		roomtype.insert(bean);
	}

	public List<Integer> selectFacilitylistByHotelid(Integer hotelid){
		return facilitylist.selectByHotelid(hotelid);
	}

	public List<Integer> selectServicelistByHotelid(Integer hotelid){
		return servicelist.selectByHotelid(hotelid);
	}
	
	public void insertPhoto(PhotoBean bean) {
		photo.insert(bean);
	}
	
	public Integer countPhotoByHotelid(Integer hotelid) {
		return photo.countByHotelid(hotelid);
	}
	
	public List<PhotoBean> selectPhotoByHotelid(Integer hotelid){
		return photo.selectByHotelid(hotelid);
	}
	
	public PhotoBean selectPhotoByPk(Integer photoid) {
		return photo.selectByPk(photoid);
	}
	public void deletePhotoByPk(PhotoBean bean) {
		photo.deleteByPk(bean);
	}
	public void updatePhoto(Integer photoid,Integer photonameid,Integer sort) {
		PhotoBean bean = photo.selectByPk(photoid);
		if(bean != null) {
			
			photonameid = (photonameid == null)?photoname.selectPhotonameidForOther():photonameid;
			
			bean.setPhotonameid(photonameid);
			bean.setPhotosorting(sort);
		}
	}
	
	public void deleteRoomtype(RoomtypeBean bean) {
		roomtype.delete(bean);
	}
	
	public List<ServicenameBean> selectServicename() {
		return servicename.select();
	}

	public List<FacilitynameBean> selectFacilityname() {
		return facilityname.select();
	}

	public List<PhotonameBean> selectPhotoname() {
		return photoname.select();
	}

	
}

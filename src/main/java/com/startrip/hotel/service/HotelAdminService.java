package com.startrip.hotel.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.hotel.model.HotelsBean;
import com.startrip.hotel.model.Rooms;
import com.startrip.hotel.remove.FacilitylistBean;
import com.startrip.hotel.remove.FacilitylistDAO;
import com.startrip.hotel.remove.FacilitynameBean;
import com.startrip.hotel.remove.FacilitynameDAO;
import com.startrip.hotel.remove.PhotoBean;
import com.startrip.hotel.remove.PhotoDAO;
import com.startrip.hotel.remove.PhotonameBean;
import com.startrip.hotel.remove.PhotonameDAO;
import com.startrip.hotel.remove.RoomtypeDAO;
import com.startrip.hotel.remove.ServicelistBean;
import com.startrip.hotel.remove.ServicelistDAO;
import com.startrip.hotel.remove.ServicenameBean;
import com.startrip.hotel.remove.ServicenameDAO;
import com.startrip.hotel.repository.HotelDAOInterface;

@Service
@Transactional
public class HotelAdminService {
	@Autowired
	HotelDAOInterface hotels;
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
		Rooms bean = roomtype.selectByPk(roomid);
		bean.setOpendate(checkin);
		bean.setEnddate(checkout);
		bean.setBasicprice(price);
		bean.setRoomnote(roomnote);
//		bean.setRoomstate(true);
	}

	public void updateRoomtype(Integer roomid,String name,Integer people,Integer rooms) {
		Rooms bean = roomtype.selectByPk(roomid);
		if(name != null) {
			bean.setRoomname(name);
		}
		if(people != null) {
			bean.setNumberofpeople(people);
		}
		if(rooms != null) {
//			bean.setNumberofrooms(rooms);
		}
	}
	
	public Rooms selectRoomtypeByPk(Integer roomid) {
		return roomtype.selectByPk(roomid);
	}
	
	public List<Rooms> selectRoomtypeByHotelid(Integer hotelid){
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

	public void insertRoomtype(Rooms bean) {
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
	public void updatePhoto(Integer photoid,Integer photonameid,Integer sort,Integer roomid,Boolean hotelmainphoto) {
		PhotoBean bean = photo.selectByPk(photoid);
		if(bean != null) {
			bean.setPhotonameid(photonameid);
			bean.setPhotosorting(sort);
			bean.setRoomid(roomid);
			bean.setHotelmainphoto(hotelmainphoto);
		}
		
	}
	public Integer selectPhotonameidForOther() {
		return photoname.selectPhotonameidForOther();
	}
	
	public void deleteRoomtype(Rooms bean) {
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

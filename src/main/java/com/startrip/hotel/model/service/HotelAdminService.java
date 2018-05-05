package com.startrip.hotel.model.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.hotel.model.persistent.FacilitynameBean;
import com.startrip.hotel.model.persistent.HotelsBean;
import com.startrip.hotel.model.persistent.PhotonameBean;
import com.startrip.hotel.model.persistent.ServicenameBean;
import com.startrip.hotel.model.repository.FacilitynameDAO;
import com.startrip.hotel.model.repository.HotelsDAO;
import com.startrip.hotel.model.repository.PhotonameDAO;
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

	@Transactional
	public int insertHotel(HotelsBean bean) {
		System.out.println("開始新增飯店基本資料");
		return hotels.insert(bean);
	}
	@Transactional
	public void updateHotel(Integer pk, String name,  String phone,
			 String address,  Integer star) {
		System.out.println("開始更新飯店基本資料");
		HotelsBean bean = hotels.selectByPk(pk);
		bean.setHotelname(name);
		bean.setHotelphone(phone);
		bean.setHoteladdress(address);
		bean.setHotelstar(star);
		
		hotels.update(bean);
		
	}	
	@Transactional
	public void updateHotel(Integer pk,String info,String note) {
		System.out.println("開始更新飯店介紹與政策提示");
		HotelsBean bean = hotels.selectByPk(pk);
		bean.setHotelinfo(info);
		bean.setHotelrulenote(note);
		
		hotels.update(bean);
		
	}
	@Transactional
	public HotelsBean selectHotelByPk(Integer pk) {
		return hotels.selectByPk(pk);
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

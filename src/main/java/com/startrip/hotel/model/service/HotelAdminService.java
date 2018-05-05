package com.startrip.hotel.model.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.hotel.model.persistent.HotelsBean;
import com.startrip.hotel.model.repository.HotelsDAO;

@Service
public class HotelAdminService {
	@Autowired
	HotelsDAO hotels;

	@Transactional
	public int insertHotel(HotelsBean bean) {
		System.out.println("開始新增飯店基本資料");
		int pk = hotels.insert(bean);
		return pk;
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
		System.out.println("開始更新飯店基本資料");
		HotelsBean bean = hotels.selectByPk(pk);
		bean.setHotelinfo(info);
		bean.setHotelrulenote(note);
		
		hotels.update(bean);
		
	}
	@Transactional
	public HotelsBean selectHotelByPk(Integer pk) {
		HotelsBean bean = hotels.selectByPk(pk);
		return bean;
	}
	
}

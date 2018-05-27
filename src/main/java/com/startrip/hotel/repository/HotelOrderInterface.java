package com.startrip.hotel.repository;

import java.util.List;

import com.startrip.hotel.model.HotelOrder;

public interface HotelOrderInterface {

	String save(HotelOrder hotelOrder);
	
	//沒收到歐付寶回傳資訊 展示先以最新筆資料代替
	HotelOrder selectByPk(String ordernumber);
	
	List<HotelOrder> selectByMemberId(Integer memberId);

}
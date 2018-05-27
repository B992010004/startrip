package com.startrip.hotel.repository;

import java.util.List;

import com.startrip.hotel.model.HotelOrder;

public interface HotelOrderInterface {

	String save(HotelOrder hotelOrder);

	HotelOrder selectByPk(String ordernumber);
	
	List<HotelOrder> selectByMemberId(Integer memberId);

}
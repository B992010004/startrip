package com.startrip.hotel.service;

import java.util.List;

import com.startrip.hotel.model.HotelOrder;

public interface HotelOrderServiceInterface {

	String save(HotelOrder hotelOrder);

	HotelOrder selectByPk(String ordernumber);

	List<HotelOrder> selectByMemberId(Integer memberId);
}
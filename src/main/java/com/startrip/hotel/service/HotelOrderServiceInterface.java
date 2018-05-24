package com.startrip.hotel.service;

import com.startrip.hotel.model.HotelOrder;

public interface HotelOrderServiceInterface {

	String save(HotelOrder hotelOrder);

	HotelOrder selectByPk(String ordernumber);

}
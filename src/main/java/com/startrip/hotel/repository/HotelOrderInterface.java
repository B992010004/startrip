package com.startrip.hotel.repository;

import com.startrip.hotel.model.HotelOrder;

public interface HotelOrderInterface {

	String save(HotelOrder hotelOrder);

	HotelOrder selectByPk(String ordernumber);

}
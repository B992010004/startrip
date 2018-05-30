package com.startrip.hotel.service;

import java.util.List;

import com.startrip.hotel.model.Rooms;

public interface RoomsServiceInterface {

	int save(Rooms rooms);

	Rooms selectByPk(Integer roomsid);

	int update(Rooms rooms);

	List<Rooms> selectByHotelIdGroupByType(Integer hotelId);

}
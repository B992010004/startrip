package com.startrip.hotel.repository;

import java.util.List;

import com.startrip.hotel.model.Rooms;

public interface RoomsDAOInterface {

	int save(Rooms rooms);

	Rooms selectByPk(Integer roomsid);

	int update(Rooms rooms);

	List<Rooms> selectByHotelIdGroupByType(Integer hotelId);

}
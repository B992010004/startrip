package com.startrip.hotel.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.startrip.hotel.model.Rooms;
import com.startrip.hotel.repository.RoomsDAOInterface;

@Service
@Transactional
public class RoomsService implements RoomsServiceInterface {

	@Autowired
	RoomsDAOInterface roomsDAOInterface;

	/* (non-Javadoc)
	 * @see com.startrip.hotel.service.RoomsServiceInterface#sava(com.startrip.hotel.model.Rooms)
	 */
	@Override
	public int sava(Rooms rooms) {
		return roomsDAOInterface.sava(rooms);
	}

	/* (non-Javadoc)
	 * @see com.startrip.hotel.service.RoomsServiceInterface#selectByPk(java.lang.Integer)
	 */
	@Override
	public Rooms selectByPk(Integer roomsid) {
		return roomsDAOInterface.selectByPk(roomsid);
	}

	/* (non-Javadoc)
	 * @see com.startrip.hotel.service.RoomsServiceInterface#update(com.startrip.hotel.model.Rooms)
	 */
	@Override
	public int update(Rooms rooms) {
		return roomsDAOInterface.update(rooms);
	}

	/* (non-Javadoc)
	 * @see com.startrip.hotel.service.RoomsServiceInterface#selectByHotelId(java.lang.Integer)
	 */
	@Override
	public List<Rooms> selectByHotelIdGroupByType(Integer hotelId) {
		return roomsDAOInterface.selectByHotelIdGroupByType(hotelId);
	}
}

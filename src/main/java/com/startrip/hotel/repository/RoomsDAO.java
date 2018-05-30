package com.startrip.hotel.repository;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.Rooms;

@Repository
public class RoomsDAO implements RoomsDAOInterface {

	@Autowired
	SessionFactory factory;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.startrip.hotel.repository.RoomsDAOInterface#sava(com.startrip.hotel.model
	 * .Rooms)
	 */
	@Override
	public int save(Rooms rooms) {
		Session session = factory.getCurrentSession();
		int pk = (Integer) session.save(rooms);
		return pk;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.startrip.hotel.repository.RoomsDAOInterface#selectByPk(java.lang.Integer)
	 */
	@Override
	public Rooms selectByPk(Integer roomsid) {
		Session session = factory.getCurrentSession();
		return session.get(Rooms.class, roomsid);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.startrip.hotel.repository.RoomsDAOInterface#update(com.startrip.hotel.
	 * model.Rooms)
	 */
	@Override
	public int update(Rooms rooms) {
		return 0;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.startrip.hotel.repository.RoomsDAOInterface#selectByHotelId(java.lang.
	 * Integer)
	 * 
	 * Group by 失敗
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<Rooms> selectByHotelIdGroupByType(Integer hotelId) {
		Session session = factory.getCurrentSession();
		List<Rooms> list = new ArrayList<>();
		list = session.createQuery("FROM Rooms rooms WHERE hotelid = :hotelid").setParameter("hotelid", hotelId).list();
		return list;

	}

}

package com.startrip.hotel.remove;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.Rooms;
import com.startrip.hotel.tool.HQL;
import com.startrip.hotel.tool.HQLQuery;

@Repository
public class RoomtypeDAO{
	@Autowired
	SessionFactory factory;
	
	public void insert(Rooms bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
	}
	
	public void delete(Rooms bean) {
		Session session = factory.getCurrentSession();
		session.delete(bean);
	}
	
	public Rooms selectByPk(Integer roomid) {
		Session session = factory.getCurrentSession();
		return session.get(Rooms.class, roomid);
	}
	
	public List<Rooms> selectByHotelid(Integer hotelid){
		Session session = factory.getCurrentSession();
		return session.createQuery(HQLQuery.get(HQL.SELECT_ROOMTYPE_BY_HOTELID), Rooms.class).setParameter("hotelid", hotelid).list();
	}
	
	
}

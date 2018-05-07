package com.startrip.hotel.model.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.RoomtypeBean;

@Repository
public class RoomtypeDAO{
	@Autowired
	SessionFactory factory;
	
	public void insert(RoomtypeBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
	}
	
	public void delete(RoomtypeBean bean) {
		Session session = factory.getCurrentSession();
		session.delete(bean);
	}
	
	public RoomtypeBean selectByPk(Integer roomid) {
		Session session = factory.getCurrentSession();
		return session.load(RoomtypeBean.class, roomid);
	}
	
	
}

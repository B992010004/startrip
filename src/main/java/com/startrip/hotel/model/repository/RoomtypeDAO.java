package com.startrip.hotel.model.repository;

import java.util.List;

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
		return session.get(RoomtypeBean.class, roomid);
	}
	
	public List<RoomtypeBean> selectByHotelid(Integer hotelid){
		String hql = "FROM roomtype WHERE hotelid = :hotelid";
		Session session = factory.getCurrentSession();
		return session.createQuery(hql, RoomtypeBean.class).setParameter("hotelid", hotelid).list();
	}
	
	
}

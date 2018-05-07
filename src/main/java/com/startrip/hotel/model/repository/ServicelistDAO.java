package com.startrip.hotel.model.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.ServicelistBean;

@Repository
public class ServicelistDAO{
	@Autowired
	SessionFactory factory;
	
	public void insert(ServicelistBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
	}
	
	public void delete(Integer hotelid) {
		String hql = "DELETE servicelist WHERE hotelid = :hotelid";
		Session session = factory.getCurrentSession();
		session.createQuery(hql).setParameter("hotelid", hotelid).executeUpdate();
		
	}
	
	public List<Integer> selectByHotelid(Integer hotelid){
		String hql = "SELECT serviceid FROM servicelist WHERE hotelid = :hotelid";
		Session session = factory.getCurrentSession();
		
		return session.createQuery(hql, Integer.class).setParameter("hotelid", hotelid).list();
	}
}

package com.startrip.hotel.model.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.HotelsBean;

@Repository
public class HotelsDAO{
	@Autowired
	SessionFactory factory;
	
	public int insert(HotelsBean bean) {
		Session session = factory.getCurrentSession();
		int pk = (Integer) session.save(bean);
		return pk;
	}

	public HotelsBean selectByPk(Integer hotelid) {
		Session session = factory.getCurrentSession();
		return session.load(HotelsBean.class, hotelid);
	}

}

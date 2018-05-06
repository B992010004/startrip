package com.startrip.hotel.model.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.FacilitylistBean;

@Repository
public class FacilitylistDAO{
	@Autowired
	SessionFactory factory;

	public void insert(FacilitylistBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
	}
	public void delete(Integer hotelid) {
		String hql = "DELETE facilitylist WHERE hotelid = :hotelid";
		Session session = factory.getCurrentSession();
		session.createQuery(hql).setParameter("hotelid", hotelid).executeUpdate();
	}
}

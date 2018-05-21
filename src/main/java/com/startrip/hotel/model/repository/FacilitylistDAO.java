package com.startrip.hotel.model.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.FacilitylistBean;
import com.startrip.hotel.tool.HQL;
import com.startrip.hotel.tool.HQLQuery;

@Repository
public class FacilitylistDAO{
	@Autowired
	SessionFactory factory;

	public void insert(FacilitylistBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
	}
	
	public void deleteByHotelid(Integer hotelid) {
		Session session = factory.getCurrentSession();
		session.createQuery(HQLQuery.get(HQL.DELETE_FACILITY_BY_HOTELID)).setParameter("hotelid", hotelid).executeUpdate();
	}
	
	public List<Integer> selectByHotelid(Integer hotelid) {
		Session session = factory.getCurrentSession();
		return session.createQuery(HQLQuery.get(HQL.SELECT_FACILITY_BY_HOTELID),Integer.class).setParameter("hotelid", hotelid).list();
		
	}
}

package com.startrip.hotel.model.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.FacilitylistBean;

@Repository
public class FacilitylistDAO{
	@Autowired
	SessionFactory factory;
	
	public List<FacilitylistBean> getAllFacilityList(){	
		return null;		
	}
	public void insertFacility(FacilitylistBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
		
	}
	public void deleteFacility(FacilitylistBean bean) {
		Session session = factory.getCurrentSession();
		session.delete(bean);
	}
	public void updateFacility() {
	}
	
}

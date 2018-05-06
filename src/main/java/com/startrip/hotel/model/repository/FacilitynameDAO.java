package com.startrip.hotel.model.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.FacilitynameBean;

@Repository
public class FacilitynameDAO{
	@Autowired
	SessionFactory factory;
	
	public List<FacilitynameBean> select(){
		String hql = "FROM facilityname";
		Session session = factory.getCurrentSession();
		List<FacilitynameBean> result= session.createQuery(hql, FacilitynameBean.class).list();
		
		return result;
	}
	
}

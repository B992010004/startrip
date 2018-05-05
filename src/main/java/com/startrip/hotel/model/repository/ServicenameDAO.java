package com.startrip.hotel.model.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.ServicenameBean;

@Repository
public class ServicenameDAO {
	@Autowired
	SessionFactory factory;
	
	public List<ServicenameBean> select(){
		String hql = "FROM servicename";
		Session session = factory.getCurrentSession();
		List<ServicenameBean> result= session.createQuery(hql, ServicenameBean.class).list();
		
		return result;
	}

	
}

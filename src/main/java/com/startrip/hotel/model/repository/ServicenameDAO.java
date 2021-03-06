package com.startrip.hotel.model.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.ServicenameBean;
import com.startrip.hotel.tool.HQL;
import com.startrip.hotel.tool.HQLQuery;

@Repository
public class ServicenameDAO {
	@Autowired
	SessionFactory factory;
	
	public List<ServicenameBean> select(){
		Session session = factory.getCurrentSession();
		List<ServicenameBean> result= session.createQuery(HQLQuery.get(HQL.SELECT_SERVICENAME), ServicenameBean.class).list();
		
		return result;
	}

	
}

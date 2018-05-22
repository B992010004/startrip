package com.startrip.hotel.remove;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.tool.HQL;
import com.startrip.hotel.tool.HQLQuery;

@Repository
public class FacilitynameDAO{
	@Autowired
	SessionFactory factory;
	
	public List<FacilitynameBean> select(){
		
		Session session = factory.getCurrentSession();
		List<FacilitynameBean> result= session.createQuery(HQLQuery.get(HQL.SELECT_FACILITYNAME), FacilitynameBean.class).list();
		
		return result;
	}
	
}

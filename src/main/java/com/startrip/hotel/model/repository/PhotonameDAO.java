package com.startrip.hotel.model.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.PhotonameBean;
import com.startrip.hotel.tool.HQL;
import com.startrip.hotel.tool.HQLQuery;

@Repository
public class PhotonameDAO{
	
	@Autowired
	SessionFactory factory;
	
	public List<PhotonameBean> select(){
		Session session = factory.getCurrentSession();
		List<PhotonameBean> result= session.createQuery(HQLQuery.get(HQL.SELECT_PHOTONAME), PhotonameBean.class).list();
		
		return result;
	}
}

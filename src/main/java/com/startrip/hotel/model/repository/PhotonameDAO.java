package com.startrip.hotel.model.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.PhotonameBean;

@Repository
public class PhotonameDAO{
	
	@Autowired
	SessionFactory factory;
	
	public List<PhotonameBean> select(){
		String hql = "FROM photoname";
		Session session = factory.getCurrentSession();
		List<PhotonameBean> result= session.createQuery(hql, PhotonameBean.class).list();
		
		return result;
	}
}

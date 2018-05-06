package com.startrip.hotel.model.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.RulelistBean;

@Repository
public class RulelistDAO {
	@Autowired
	SessionFactory factory;
	
	public void insertOrUpdate(RulelistBean bean) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(bean);
	}
	
	
}

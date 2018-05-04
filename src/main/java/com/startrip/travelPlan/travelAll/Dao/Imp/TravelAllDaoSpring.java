package com.startrip.travelPlan.travelAll.Dao.Imp;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.travelPlan.travelAll.Dao.TripAllDaoSpringI;
import com.startrip.travelPlan.travelAll.model.TravelAllBean;

@Repository
public class TravelAllDaoSpring implements TripAllDaoSpringI {

	@Autowired
	SessionFactory factory;

	@Override
	public TravelAllBean Select_TravelId(int id) {
		TravelAllBean bean = null;
		Session session = factory.getCurrentSession();
		bean =session.get(TravelAllBean.class, id);
		return bean;
		
	}

	@Override
	public List<TravelAllBean> selectAllTravel() {
		List<TravelAllBean> list = new ArrayList<>();
		String hql = "FROM TravelAllBean";
		Session session = factory.getCurrentSession();
		list =session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public void insert(TravelAllBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
	}

	@Override
	public void updateTrip(TravelAllBean bean) throws SQLException {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(bean);
		
		
	}

	@Override
	public void delete(int id) {
		Session session = factory.getCurrentSession();
		session.delete(id);
	}

	
	
	
	
}

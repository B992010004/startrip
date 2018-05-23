package com.startrip.transport.TripInf.TripInfDao;

import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import javax.xml.crypto.Data;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.startrip.transport.TripInf.TripInfInterface.TripInfRepositoryInterface;
import com.startrip.transport.TripInf.TripInfModle.TripInfBean;
@Repository
public class TripInfRepository implements TripInfRepositoryInterface {
	
	@Autowired
	SessionFactory factory;
	
	
	@Override
	public List<TripInfBean> select() {
		String hql = "FROM TripInf";
		Session session = factory.getCurrentSession();
		List<TripInfBean> list = new ArrayList<>();
		list = session.createQuery(hql, TripInfBean.class).getResultList();//StationBean.class指定查詢一定是StationBean.class
		return list;
	}

	@Override
	public TripInfBean select(Integer Trip) {
		String hql = "FROM TripInfBean where id =:id";
		Session session = null;
		List<TripInfBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql, TripInfBean.class).getResultList();//StationBean.class指定查詢一定是StationBean.class
		return list.get(0);
		
	}

	@Override
	public void update(Data date, String StarStation, String EndStation, Integer Price, Integer SeateList,
			Time StarTime) {
		// TODO Auto-generated method stub

	}

	@Override
	public void insert(TripInfBean bean) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean delete(Integer Trip) {
		Session session = factory.getCurrentSession();
		TripInfBean bean = select(Trip);
		if (bean != null) {
			session.delete(bean);
			return true;
		}
		return false;
	}

}

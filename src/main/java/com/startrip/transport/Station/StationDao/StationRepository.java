package com.startrip.transport.Station.StationDao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.transport.Station.StationModle.StationBean;
import com.startrip.transport.Station.StationInterface.StationRepositoryInterface;

@Repository
public class StationRepository implements StationRepositoryInterface{
	@Autowired
	SessionFactory factory;
	
	
	
	@Override
	public List<StationBean> select() {
		String hql = "FROM StationBean";
		Session session = factory.getCurrentSession();
		List<StationBean> list = new ArrayList<>();
		list = session.createQuery(hql, StationBean.class).getResultList();//StationBean.class指定查詢一定是StationBean.class
		return list;
	}

	@Override
	public StationBean select(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(String area, String stationName) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(StationBean bean) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean delete(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

}

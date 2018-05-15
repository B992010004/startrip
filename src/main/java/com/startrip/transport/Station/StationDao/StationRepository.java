package com.startrip.transport.Station.StationDao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.transport.Station.StationInterface.StationRepositoryInterface;
import com.startrip.transport.Station.StationModle.StationBean;


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
		
		String hql = "FROM StationBean where id =:id";
		Session session = null;
		List<StationBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql, StationBean.class).getResultList();//StationBean.class指定查詢一定是StationBean.class
		
		
		
		if (list.size() == 0) {
			return null;
		} else {
			return list.get(0);
		}
	}
	
	@Override
	public boolean delete(Integer id) {
		Session session = factory.getCurrentSession();
		StationBean bean = select(id);
		if (bean != null) {
			session.delete(bean);
			return true;
		}
		return false;
	}
	
	
	@Override
	public void update(String area, String stationName,String Address) {
//		String hql = "update StationBean set   password=:password address=:address phone=:phone birthday=:birthday username=:username avatar=:avatar photo=:photo  where mail =:mail";
//		Session session = factory.getCurrentSession();
//		session.createQuery(hql).setParameter("mail", mail).setParameter("password", password)
//				.setParameter("address", address).setParameter("username", username).setParameter("birthday", birthday)
//				.setParameter("password", password).setParameter("avatar", avatar).setParameter("photo", photo)
//				.executeUpdate();
	}



	@Override
	public void insert(StationBean bean) {
		// TODO Auto-generated method stub
		
	}




}

package com.startrip.transport.SeatList.SeatListDao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.transport.SeatList.SeatListInterface.SeatListRepositoryInterface;
import com.startrip.transport.SeatList.SeatListModle.SeatListBean;

@Repository
public class SeatListRepository implements SeatListRepositoryInterface {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings("unchecked")
	@Override
	public List<SeatListBean> select() {
		String hql = "FROM SeatListBean";
		Session session = factory.getCurrentSession();
		List<SeatListBean> list = new ArrayList<>();
		list = session.createQuery(hql, SeatListBean.class).getResultList();// StationBean.class指定查詢一定是StationBean.class
		return list;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public SeatListBean select(Integer id) {

		String hql = "FROM SeatListBean where id =:id";
		Session session = null;
		List<SeatListBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql, SeatListBean.class).getResultList();// StationBean.class指定查詢一定是StationBean.class

		if (list.size() == 0) {
			return null;
		} else {
			return list.get(0);
		}
	}
	@Override
	public void update(Integer Trip, Integer SeatNumber, 
			Integer OrderNumber) {
		String hql = "update SeatListBean set   Trip=:Trip SeatNumber=:SeatNumber Seat=:Seat OrderNumber=:OrderNumber   where id =:id";
		Session session = factory.getCurrentSession();
		session.createQuery(hql).setParameter("Trip", Trip).setParameter("SeatNumber", SeatNumber)
				.setParameter("OrderNumber", OrderNumber)
				.executeUpdate();
		
	}
	
	@Override
	public void insert(SeatListBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
		
	}
	@Override
	public boolean delete(Integer id) {
		Session session = factory.getCurrentSession();
		SeatListBean bean = select(id);
		if (bean != null) {
			session.delete(bean);
			return true;
		}
		return false;
	}



}

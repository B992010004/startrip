package com.startrip.transport.OrderList.OrderListDao;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.transport.OrderList.OrderListInterface.OrderListRepositoryInterface;
import com.startrip.transport.OrderList.OrderListModle.OrderListBean;
import com.startrip.transport.Station.StationModle.StationBean;

@Repository
public class OrderListRepository implements OrderListRepositoryInterface{
	@Autowired
	SessionFactory factory;
	
	@Override
	public List<OrderListBean> select() {
		String hql = "FROM OrderListBean";
		Session session = factory.getCurrentSession();
		List<OrderListBean> list = new ArrayList<>();
		list = session.createQuery(hql, OrderListBean.class).getResultList();
		return list;
	
	
	
	
}

	@Override
	public StationBean select(Integer orderNumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(String scId, String scName, String sMail, Integer sPhone, String crderKind, Timestamp orderTime,String StarStation,String EndStation) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(OrderListBean bean) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean delete(Integer orderNumber) {
		// TODO Auto-generated method stub
		return false;
	}
}
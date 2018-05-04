package com.startrip.travelPlan.travelList.Dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.travelPlan.travelList.model.TravelListBean;
import com.startrip.travelPlan.travelList.model.TravelListPK;
@Repository
public class TravelListDao implements TravelListDaoInterface  {

	@Autowired
	SessionFactory factory;
	public TravelListDao(){
		
	}
	
	
	@Override
	public TravelListBean Select_PK(TravelListBean bean) {
		TravelListPK pk = new TravelListPK(bean.getViewid(), bean.getTravelId());
			Session session = factory.getCurrentSession();
			
			bean = session.get(TravelListBean.class, pk);
		return bean;
	}
	@Override
	public List<TravelListBean> select() {
		
		String hql = "FROM TravelListBean";
		List<TravelListBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = 	session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public void insert(TravelListBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
		
	}

	@Override
	public void update(TravelListBean bean) throws SQLException {
		Session session =factory.getCurrentSession();
		session.saveOrUpdate(bean);
	}

	@Override
	public void delete(TravelListBean bean) {
		
		TravelListPK pk = new TravelListPK(bean.getViewid(), bean.getTravelId());
		Session session = factory.getCurrentSession();
		session.delete(pk);
	}

}

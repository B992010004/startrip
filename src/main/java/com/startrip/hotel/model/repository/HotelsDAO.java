package com.startrip.hotel.model.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.persistent.HotelsBean;
import com.startrip.hotel.tool.HQL;
import com.startrip.hotel.tool.HQLQuery;

@Repository
public class HotelsDAO{
	@Autowired
	SessionFactory factory;
	
	public int insert(HotelsBean bean) {
		Session session = factory.getCurrentSession();
		int pk = (Integer) session.save(bean);
		return pk;
	}

	public HotelsBean selectByPk(Integer hotelid) {
		Session session = factory.getCurrentSession();
		return session.get(HotelsBean.class, hotelid);
	}
	
	public void update(HotelsBean bean) {
		Session session = factory.getCurrentSession();
		session.update(bean);
	}
	public List<HotelsBean> selectByMemberid(Integer memberid){
		Session session = factory.getCurrentSession();
		return session.createQuery(HQLQuery.get(HQL.SELECT_HOTELS_BY_MEMBERID),HotelsBean.class).setParameter("memberid", memberid).list();
	}

}

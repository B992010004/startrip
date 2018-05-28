package com.startrip.restaurant.repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.hotel.model.HotelsBean;
import com.startrip.hotel.model.SearchHotel;
import com.startrip.restaurant.exception.RtDetailsNotFoundException;
import com.startrip.restaurant.model.RtBookingBean;
import com.startrip.restaurant.model.RtDetailsBean;

@Repository
public class RtDetailsRepositoryImp implements RtDetailsRepository {
	
	@Autowired
	SessionFactory factory;

	@SuppressWarnings("unchecked")
	@Override
	public RtDetailsBean getAllRtDetailsrtName(String rtName) {
		String hql = "FROM RtDetailsBean where rtName =:rtName ";
		Session session = factory.getCurrentSession();		
		List<RtDetailsBean> list = new ArrayList<>();	
		list =session.createQuery(hql).setParameter("rtName", rtName).getResultList();;	
		if (list.size() == 0) {
			return null;
		} else {
			return list.get(0);
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public RtDetailsBean getAllRtDetailsrtId(Integer rtId) {
		String hql = "FROM RtDetailsBean where rtId =:rtId ";
		Session session = factory.getCurrentSession();		
		List<RtDetailsBean> list = new ArrayList<>();	
		list =session.createQuery(hql).setParameter("rtId", rtId).getResultList();;	
		if (list.size() == 0) {
			return null;
		} else {
			return list.get(0);
		}	
	}

	@Override
	public RtDetailsBean updateRtDetails(RtDetailsBean bean) {
		Session session = factory.getCurrentSession();
		session.update(bean);
		return bean;
	}

	@Override
	public RtDetailsBean insertRtDetails(RtDetailsBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
		return bean;
	}

	@Override
	public boolean deleteRtDetailsrtId(Integer rtId) {
		Session session = factory.getCurrentSession();
		RtDetailsBean rdi = session.get(RtDetailsBean.class, rtId);
		if (rdi != null) {
			session.delete(rdi);
			return true;
		}
		return false;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<RtDetailsBean> getAllall() {
		String hql="FROM RtDetailsBean";
		Session session = null;
		List<RtDetailsBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<RtDetailsBean> getAll() {
		String hql="FROM RtDetailsBean";
		Session session = null;
		List<RtDetailsBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).setMaxResults(4).getResultList();
		return list;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<RtDetailsBean> getAllOne() {
		String hql="FROM RtDetailsBean";
		Session session = null;
		List<RtDetailsBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).setMaxResults(8).getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RtDetailsBean> getrtArea() {
		String hql="FROM RtDetailsBean where rtArea = :Area";
		Session session = null;
		List<RtDetailsBean> list2 = new ArrayList<>();
		session = factory.getCurrentSession();
		list2 = session.createQuery(hql).setParameter("Area", "花蓮市").setMaxResults(4).getResultList();
		return list2;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RtDetailsBean> getrtPricepountH() {
		String hql="FROM RtDetailsBean where rtPricepount = :H";
		Session session = null;
		List<RtDetailsBean> list3 = new ArrayList<>();
		session = factory.getCurrentSession();
		list3 = session.createQuery(hql).setParameter("H", "高級餐廳").setMaxResults(4).getResultList();
		return list3;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RtDetailsBean> getrtPricepountM() {
		String hql="FROM RtDetailsBean where rtPricepount = :M";
		Session session = null;
		List<RtDetailsBean> list4 = new ArrayList<>();
		session = factory.getCurrentSession();
		list4 = session.createQuery(hql).setParameter("M", "中等價位").setMaxResults(4).getResultList();
		return list4;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RtDetailsBean> getrtPricepountL() {
		String hql="FROM RtDetailsBean where rtPricepount = :L";
		Session session = null;
		List<RtDetailsBean> list5 = new ArrayList<>();
		session = factory.getCurrentSession();
		list5 = session.createQuery(hql).setParameter("L", "平價美食").setMaxResults(4).getResultList();
		return list5;
	}
	

}

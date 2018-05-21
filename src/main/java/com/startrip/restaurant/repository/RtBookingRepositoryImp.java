package com.startrip.restaurant.repository;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.restaurant.model.RtBookingBean;

@Repository
public class RtBookingRepositoryImp implements RtBookingRepository {
	
	@Autowired
	SessionFactory factory;

	@SuppressWarnings("unchecked")
	@Override
	public List<RtBookingBean> getAllRtBookingmemberBean(MemberBean memberBean) {
		RtBookingBean rbm = null;
		Session session = null;	
		String hql = "FROM RtBookingBean";
		List<RtBookingBean> list = new ArrayList<>();	
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		if (list.size() == 0) {
			return null;
		} else {
			return list;
		}
	}

	@Override
	public RtBookingBean updateRtBooking(RtBookingBean bean) {
		Session session = factory.getCurrentSession();
		RtBookingBean rbb = session.get(RtBookingBean.class, bean.getBgId());
		session.save(rbb);
		return rbb;
	}

	@Override
	public RtBookingBean insertRtBooking(RtBookingBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
		return bean;
	}

	@Override
	public boolean deleteRtBookingbgId(Integer bgId) {
		Session session = factory.getCurrentSession();
		RtBookingBean rbi = session.get(RtBookingBean.class, bgId);
		if (rbi != null) {
			session.delete(rbi);
			return true;
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RtBookingBean> getRtBookingmember(int memberId) {
		Session session = null;	
		String hql = "FROM RtBookingBean where memberId=:memberId";
		List<RtBookingBean> list = new ArrayList<>();	
		session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("memberId", memberId).getResultList();
		if (list.size() == 0) {
			return null;
		} else {
			return list;
		}
	}
	}





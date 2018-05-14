package com.startrip.restaurant.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.restaurant.exception.RtBookingNotFoundException;
import com.startrip.restaurant.model.RtBookingBean;

@Repository
public class RtBookingRepositoryImp implements RtBookingRepository {
	
	@Autowired
	SessionFactory factory;

	@Override
	public RtBookingBean getAllRtBookingmemberBean(MemberBean memberBean) {
		RtBookingBean rbm = null;
		Session session = factory.getCurrentSession();
		rbm = session.get(RtBookingBean.class, memberBean);
		if(rbm == null) throw new RtBookingNotFoundException(memberBean);
		return rbm;
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



}

package com.startrip.restaurant.rtDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.startrip.restaurant.rtexception.RtReviewsNotFoundException;
import com.startrip.restaurant.rtinterface.RtBookingInterface;
import com.startrip.restaurant.rtmodel.RtBookingBean;

@Repository
public class RtBookingRepository implements RtBookingInterface {
	
	@Autowired
	SessionFactory factory;

	@Override
	public RtBookingBean getAllRtBookingmail(String mail) {
		RtBookingBean rbm = null;
		Session session = factory.getCurrentSession();
		rbm = session.get(RtBookingBean.class, mail);
		if(rbm == null) throw new RtReviewsNotFoundException(mail);
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

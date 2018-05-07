package com.startrip.restaurant.rtDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.startrip.restaurant.rtexception.RtReviewsNotFoundException;
import com.startrip.restaurant.rtinterface.RtBookingInterface;
import com.startrip.restaurant.rtmodel.RtBookingBean;
import com.startrip.restaurant.rtmodel.RtPhotoBean;

public class RtBookingRepository implements RtBookingInterface {
	
	@Autowired
	SessionFactory factory;

	@Override
	public RtBookingBean getAllRtBookingmail(String mail) {
		RtPhotoBean rpi = null;
		Session session = factory.getCurrentSession();
		rpi = session.get(RtPhotoBean.class, rtId);
		if(rpi == null) throw new RtReviewsNotFoundException(rtId);
		return rpi;
	}

	@Override
	public RtBookingBean updateRtBooking(RtBookingBean bean) {
		return null;
	}

	@Override
	public RtBookingBean insertRtBooking(RtBookingBean bean) {
		return null;
	}

	@Override
	public boolean deleteRtBookingbgId(Integer bgId) {
		return false;
	}



}

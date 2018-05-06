package com.startrip.restaurant.rtDAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.restaurant.rtinterface.RtBookingInterface;
import com.startrip.restaurant.rtmodel.RtBookingBean;

@Repository
public class RtBookingRepository implements RtBookingInterface {
	
	@Autowired
	SessionFactory factory;

	@Override
	public RtBookingBean getAllRtBookingmail(String mail) {
		return null;
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

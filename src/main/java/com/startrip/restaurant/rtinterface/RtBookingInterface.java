package com.startrip.restaurant.rtinterface;

import com.startrip.restaurant.rtmodel.RtBookingBean;

public interface RtBookingInterface {
	
	RtBookingBean select(String mail);
	
	RtBookingBean update(RtBookingBean bean);

	RtBookingBean insert(RtBookingBean bean);

	boolean delete(Integer bgId);
	
}


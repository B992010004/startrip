package com.startrip.restaurant.model;

public interface RBinterface {
	
	RtBookingBean select(String mail);
	
	RtBookingBean update(RtBookingBean bean);

	RtBookingBean insert(RtBookingBean bean);

	boolean delete(Integer bgId);
	
}


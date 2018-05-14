package com.startrip.restaurant.service;

import com.startrip.restaurant.model.RtBookingBean;

public interface RtBookingService {

	RtBookingBean getAllRtBookingmail(String mail);
	
	RtBookingBean updateRtBooking(RtBookingBean bean);

	RtBookingBean insertRtBooking(RtBookingBean bean);
	
	boolean deleteRtBookingbgId(Integer bgId);
	
}

package com.startrip.restaurant.rtinterface;

import com.startrip.restaurant.rtmodel.RtBookingBean;

public interface RtBookingInterface {
	
	RtBookingBean getAllRtBookingmail(String mail);
	
	RtBookingBean updateRtBooking(RtBookingBean bean);

	RtBookingBean insertRtBooking(RtBookingBean bean);

	boolean deleteRtBookingbgId(Integer bgId);
	
}


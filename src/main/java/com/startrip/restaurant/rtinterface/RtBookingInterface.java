package com.startrip.restaurant.rtInterface;

import com.startrip.restaurant.rtModel.RtBookingBean;

public interface RtBookingInterface {
	
	RtBookingBean getAllRtBookingmail(String mail);
	
	RtBookingBean updateRtBooking(RtBookingBean bean);

	RtBookingBean insertRtBooking(RtBookingBean bean);

	boolean deleteRtBookingbgId(Integer bgId);
	
}


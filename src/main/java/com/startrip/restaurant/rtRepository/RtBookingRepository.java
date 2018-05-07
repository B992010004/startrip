package com.startrip.restaurant.rtRepository;

import com.startrip.restaurant.rtModel.RtBookingBean;

public interface RtBookingRepository {
	
	RtBookingBean getAllRtBookingmail(String mail);
	
	RtBookingBean updateRtBooking(RtBookingBean bean);

	RtBookingBean insertRtBooking(RtBookingBean bean);

	boolean deleteRtBookingbgId(Integer bgId);
	
}


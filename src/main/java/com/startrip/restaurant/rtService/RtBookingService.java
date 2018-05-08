package com.startrip.restaurant.rtService;

import com.startrip.restaurant.rtmodel.RtBookingBean;

public interface RtBookingService {

	RtBookingBean getAllRtBookingmail(String mail);
	
	RtBookingBean updateRtBooking(RtBookingBean bean);

	RtBookingBean insertRtBooking(RtBookingBean bean);

	boolean deleteRtBookingbgId(Integer bgId);
	
}

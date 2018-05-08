package com.startrip.restaurant.repository;


import com.startrip.restaurant.rtmodel.RtBookingBean;

public interface RtBookingRepository {
	
	RtBookingBean getAllRtBookingmail(String mail);
	
	RtBookingBean updateRtBooking(RtBookingBean bean);

	RtBookingBean insertRtBooking(RtBookingBean bean);

	boolean deleteRtBookingbgId(Integer bgId);
	
}


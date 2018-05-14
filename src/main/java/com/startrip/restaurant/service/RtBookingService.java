package com.startrip.restaurant.service;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.restaurant.model.RtBookingBean;

public interface RtBookingService {

	RtBookingBean getAllRtBookingmemberBean(MemberBean memberBean);
	
	RtBookingBean updateRtBooking(RtBookingBean bean);

	RtBookingBean insertRtBooking(RtBookingBean bean);
	
	boolean deleteRtBookingbgId(Integer bgId);
	
}

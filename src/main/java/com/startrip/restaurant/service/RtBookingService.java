package com.startrip.restaurant.service;

import java.util.List;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.restaurant.model.RtBookingBean;

public interface RtBookingService {

	List<RtBookingBean> getAllRtBookingmemberBean(MemberBean memberBean);
	
	RtBookingBean updateRtBooking(RtBookingBean bean);

	RtBookingBean insertRtBooking(RtBookingBean bean);
	
	boolean deleteRtBookingbgId(Integer bgId);
	
}
